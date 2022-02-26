
from pathlib import Path
from typing import *
from typing import TextIO
import requests
from bs4 import BeautifulSoup, Tag, NavigableString

from lua_docs_format import doc_continue, format_type, write_emmy_doc, indent_for_desc


factorio_prototypes_url = r"https://wiki.factorio.com/Prototype_overview"
factorio_prototypes_types_url = r"https://wiki.factorio.com/Types/"
factorio_prototypes_base_url = r"https://wiki.factorio.com/Prototype/"


out_dir = Path.cwd() / "lib" / "prototypes"

prototypes_file = out_dir / "prototypes.lua"
prototypes_concepts_file = out_dir / "prototypes_concepts.lua"


html_parser = "lxml"


prototypes_fixes = {}


# Set of types to scrap. While parsing the prototype definitions, all unknown types will be added to this set.
# The ones already present are the ones needed by the Factorio Lua API (only 'MapGenPreset'), or which are only
# referenced in the other types added manually.
prototypes_concepts = {
    "RailPieceLayers",
    "Sprite8Way",
    "OrientedCliffPrototype",
    "BoxSpecification",
    "ItemIngredientPrototype",
    "FluidIngredientPrototype",
    "DirectTriggerItem",
    "AreaTriggerItem",
    "LineTriggerItem",
    "ClusterTriggerItem",
    "CreateParticleTriggerEffectItem",
    "AttackReactionItem",
    "FluidProductPrototype",
    "SpiderLegSpecification",
    "WirePosition",
    "MapGenPreset",
    "IconData",
    "LightFlickeringDefinition"
}


def make_concept_attribute(type_str: str, optional=False):
    return {
        "type": type_str,
        "optional": optional
    }


# Types added manually because they have a weird page, are defined inside a page of another type, or other reasons
prototypes_concepts_additions = {
    "RecipeData": {
        "ingredients": make_concept_attribute("IngredientPrototype"),
        "result": make_concept_attribute("string", True),
        "result_count": make_concept_attribute("uint32", True),
        "results": make_concept_attribute("ProductPrototype[]", True),
        "energy_required": make_concept_attribute("double", True),
        "emissions_multiplier": make_concept_attribute("double", True),
        "requester_paste_multiplier": make_concept_attribute("uint32", True),
        "overload_multiplier": make_concept_attribute("uint32", True),
        "allow_inserter_overload": make_concept_attribute("boolean", True),
        "enabled": make_concept_attribute("boolean", True),
        "hidden": make_concept_attribute("boolean", True),
        "hide_from_stats": make_concept_attribute("boolean", True),
        "hide_from_player_crafting": make_concept_attribute("boolean", True),
        "allow_decomposition": make_concept_attribute("boolean", True),
        "allow_as_intermediate": make_concept_attribute("boolean", True),
        "allow_intermediates": make_concept_attribute("boolean", True),
        "always_show_made_in": make_concept_attribute("boolean", True),
        "show_amount_in_title": make_concept_attribute("boolean", True),
        "always_show_products": make_concept_attribute("boolean", True),
        "unlock_results": make_concept_attribute("boolean", True),
        "main_product": make_concept_attribute("string", True),
    },
    "TechnologyUnit": {
        "count": make_concept_attribute("boolean", True),
        "count_formula": make_concept_attribute("string", True),
        "time": make_concept_attribute("double"),
        "ingredients": make_concept_attribute("IngredientPrototype[]"),
    },
    "TechnologyData": {
        "upgrade": make_concept_attribute("boolean", True),
        "enabled": make_concept_attribute("boolean", True),
        "hidden": make_concept_attribute("boolean", True),
        "visible_when_disabled": make_concept_attribute("boolean", True),
        "ignore_tech_cost_multiplier": make_concept_attribute("boolean", True),
        "unit": make_concept_attribute("TechnologyUnit"),
        "max_level": make_concept_attribute("uint32 | string", True),
        "prerequisites": make_concept_attribute("string[]", True),
        "effects": make_concept_attribute("ModifierPrototype[]", True),
    },
    "ModifierPrototype": {
        "type": make_concept_attribute("string"),
        "icons": make_concept_attribute("FileName", True),
        "icon": make_concept_attribute("IconData[]", True),
        "icon_size": make_concept_attribute("SpriteSizeType", True),
        "icon_mipmaps": make_concept_attribute("uint8", True),
    },
    "DaytimeColor": {
        "[1]": make_concept_attribute("double", False),
        "[2]": make_concept_attribute("FileName | 'identity'", False),
    },
    "EnergySource": {
        "type": make_concept_attribute("'electric' | 'fluid' | 'burner' | 'heat' | 'void'", False),
        "emissions_per_minute": make_concept_attribute("double", True),
        "render_no_power_icon": make_concept_attribute("boolean", True),
        "render_no_network_icon": make_concept_attribute("boolean", True),
    },
    "ElectricEnergySource": {
        "__parent": "EnergySource",
        "buffer_capacity": make_concept_attribute("Energy", True),
        "usage_priority": make_concept_attribute("ElectricUsagePriority", False),
        "input_flow_limit": make_concept_attribute("Energy", True),
        "output_flow_limit": make_concept_attribute("Energy", True),
        "drain": make_concept_attribute("Energy", True),
    },
    "Burner": {
        "__parent": "EnergySource",
        "fuel_inventory_size": make_concept_attribute("ItemStackIndex", False),
        "burnt_inventory_size": make_concept_attribute("ItemStackIndex", True),
        "smoke": make_concept_attribute("SmokeSource[]", True),
        "light_flicker": make_concept_attribute("LightFlickeringDefinition", True),
        "effectivity": make_concept_attribute("double", True),
        "fuel_category": make_concept_attribute("string", True),
        "fuel_categories": make_concept_attribute("string[]", True),
    },
    "HeatEnergySource": {
        "__parent": "EnergySource",
        "max_temperature": make_concept_attribute("double", False),
        "default_temperature": make_concept_attribute("double", True),
        "specific_heat": make_concept_attribute("Energy", False),
        "max_transfer": make_concept_attribute("Energy", False),
        "min_temperature_gradient": make_concept_attribute("double", True),
        "min_working_temperature": make_concept_attribute("double", True),
        "minimum_glow_temperature": make_concept_attribute("float", True),
        "pipe_covers": make_concept_attribute("Sprite4Way", True),
        "heat_pipe_covers": make_concept_attribute("Sprite4Way", True),
        "heat_picture": make_concept_attribute("Sprite4Way", True),
        "heat_glow": make_concept_attribute("Sprite4Way", True),
        "connections": make_concept_attribute("HeatConnection[]", True),
    },
    "VoidEnergySource": {
        "__parent": "EnergySource"
    },
    "FluidEnergySource": {
        "__parent": "EnergySource",
        "fluid_box": make_concept_attribute("FluidBox", False),
        "smoke": make_concept_attribute("SmokeSource[]", True),
        "light_flicker": make_concept_attribute("LightFlickeringDefinition", True),
        "effectivity": make_concept_attribute("double", True),
        "burns_fluid": make_concept_attribute("boolean", True),
        "scale_fluid_usage": make_concept_attribute("boolean", True),
        "fluid_usage_per_tick": make_concept_attribute("double", True),
        "maximum_temperature": make_concept_attribute("double", True),
    },
    "Vector3D": {
        "x": make_concept_attribute("float", True),
        "y": make_concept_attribute("float", True),
        "z": make_concept_attribute("float", True),
        "[1]": make_concept_attribute("float", True),
        "[2]": make_concept_attribute("float", True),
        "[3]": make_concept_attribute("float", True),
    },
    "ItemToPlace": {
        "item": make_concept_attribute("string", False),
        "count": make_concept_attribute("uint32", False),
    },
    "WireConnectionPoint": {
        "wire": make_concept_attribute("WirePosition", False),
        "shadow": make_concept_attribute("WirePosition", False),
    },
    "SignalIDConnector": {
        "type": make_concept_attribute("string", False),
        "name": make_concept_attribute("string", False),
    },
    "SpiderEnginePrototype": {
        "military_target": make_concept_attribute("string", False),
        "legs": make_concept_attribute("SpiderLegSpecification | SpiderLegSpecification[]", False),
    },
    "ExplosionDefinition": {
        "name": make_concept_attribute("string", False),
        "offset": make_concept_attribute("Vector", True),
    },
    "TipTrigger": {
        "type": make_concept_attribute("string", False),
        # I am WAY TOO LAZY to properly implement all of the possible sub-types
        "[string]": make_concept_attribute("Any", True),
    },
    "Sprite4Way": {
        "__parent": "Sprite",
        "north": make_concept_attribute("Sprite", True),
        "east": make_concept_attribute("Sprite", True),
        "south": make_concept_attribute("Sprite", True),
        "west": make_concept_attribute("Sprite", True),
        "sheets": make_concept_attribute("SpriteNWaySheet", True),
        "sheet": make_concept_attribute("SpriteNWaySheet", True),
    },
    "ItemIngredientPrototype": {
        "type": make_concept_attribute('"item"', True),
        "name": make_concept_attribute("string", True),
        "amount": make_concept_attribute("uint16", True),
        "[1]": make_concept_attribute("string", True),
        "[2]": make_concept_attribute("uint16", True),
        "catalyst_amount": make_concept_attribute("uint16", True),
    },
    "ItemProductPrototype": {
        "type": make_concept_attribute('"item"', True),
        "name": make_concept_attribute("string", True),
        "amount": make_concept_attribute("uint16", True),
        "[1]": make_concept_attribute("string", True),
        "[2]": make_concept_attribute("uint16", True),
        "probability": make_concept_attribute("double", True),
        "amount_min": make_concept_attribute("uint16", True),
        "amount_max": make_concept_attribute("uint16", True),
        "catalyst_amount": make_concept_attribute("uint16", True),
    },
    "FluidProductPrototype": {
        "type": make_concept_attribute("string")
    },
}


# Type aliases referenced in the docs
prototypes_concepts_aliases = {
    "ItemCountType": "uint32",
    "IngredientPrototype": "ItemIngredientPrototype | FluidIngredientPrototype",
    "ProductPrototype": "ItemProductPrototype | FluidProductPrototype",
    "Trigger": "DirectTriggerItem | AreaTriggerItem | LineTriggerItem | ClusterTriggerItem",
    "RotatedAnimationVariations": "RotatedAnimation | RotatedAnimation[]",
    "AnimationFrameSequence": "uint16[]",
    "FootstepTriggerEffectList": "CreateParticleTriggerEffectItem[]",
    "CursorBoxType": "string",
    "FileName": "string",
    "EffectTypeLimitation": "string[]",
    "SpriteSizeType": "int16",
    "Order": "string",
    "MaterialAmountType": "double",
    "AttackReaction": "AttackReactionItem[]",
    "SpritePriority": "string",
    "Energy": "string",
    "TriggerEffect": "TriggerEffectItem | TriggerEffectItem[]",
    "TipStatus": "'locked' | 'optional' | 'dependencies-not-met' | 'unlocked' | 'suggested' | 'not-to-be-suggested'"
                 " | 'completed-without-tutorial' | 'completed'",
    "ItemStackIndex": "uint16",
    "SpriteFlags": "string[]",
    "DaytimeColorLookupTable": "DaytimeColor[]",
    "ConsumingType": "'none' | 'game-only'",
    "BlendMode": "'normal' | 'additive' | 'additive-soft' | 'multiplicative' | 'overwrite'",
    "ElectricUsagePriority": "'primary-input' | 'primary-output' | 'secondary-input' | 'secondary-output' | 'tertiary'"
                             " | 'solar' | 'lamp'",
    "EntityPrototypeFlagsList": "EntityPrototypeFlags_val[]",
    "ItemPrototypeFlagsList": "ItemPrototypeFlags_val[]",
}


# Fixes added to the attribute lists scrapped
prototypes_concepts_fixes = {
    "ItemIngredientPrototype": {
        "type": make_concept_attribute("string", True),
        "name": make_concept_attribute("string", True),
        "amount": make_concept_attribute("number", True),
        "[1]": make_concept_attribute("string", True),
        "[2]": make_concept_attribute("number", True)
    },
    "FluidIngredientPrototype": {
        "type": make_concept_attribute("string", True),
        "name": make_concept_attribute("string", True),
        "amount": make_concept_attribute("number", True),
        "[1]": make_concept_attribute("string", True),
        "[2]": make_concept_attribute("number", True)
    },
    "ItemProductPrototype": {
        "type": make_concept_attribute("string"),
        "name": make_concept_attribute("name", True),
        "amount": make_concept_attribute("number", True),
    },
    "FluidProductPrototype": {
        "type": make_concept_attribute("string")
    },
    "Sprite": {
        "filename":  make_concept_attribute("FileName", True)  # the filename is actually optional
    }
}


# Simple type name conversions
prototypes_concepts_replacements = {
    "bool": "boolean",
    "vector": "Vector",
    "LocalizedString": "LocalisedString",
    "Types/ItemStackIndex": "ItemStackIndex",
    "Recipe data": "RecipeData",
    "Technology data": "TechnologyData",
    "Modifier": "ModifierPrototype",
    "#sheet": "Animation",  # SOMEONE thought that putting that '#' was a good idea. It is not.
    "EntityPrototypeFlags": "EntityPrototypeFlagsList",
    "ItemPrototypeFlags": "ItemPrototypeFlagsList"
}


# Set of types which should not be scraped. Those include the concepts already defined in the Factorio Lua API, as well
# as those with weird non-scrapable pages.
prototypes_concepts_excludes = {
    "string", "LocalisedString",
    "table", "array", "Array",
    "int", "int8", "int16", "int32", "int64"
    "uint", "uint8", "uint16", "uint32", "uint64",
    "float", "double",
    "Color",
    "Position", "BoundingBox", "Vector3D",
    "RealOrientation",
    "RenderLayer", "NoiseExpression",
    "IconSpecification",
    "TriggerTargetMask", "CollisionMask",
    "CapsuleAction",
    "ForceCondition",
    "ItemPrototypeFlags", "EntityPrototypeFlags",
    "AutoplaceSpecification",
    "Loot",
    "AmmoType",
    "UnitSpawnDefinition",
    "AttackParameters",
    "SmokeSource",
    "HeatConnection"
}
prototypes_concepts_excludes.update(prototypes_concepts_additions.keys())
prototypes_concepts_excludes.update(prototypes_concepts_aliases.keys())


# Types classified as 'table' or something else, to their actual type
tables_exceptions = {
    "light_animations": "table<string, Animation | AnimationVariations | nil>",
    "ground_light_animations": "table<string, Animation | AnimationVariations | nil>",
    "fire": "table<string, Animation>",
    "fire_glow": "table<string, Animation>",
    "structure": "table<string, Animation | Sprite4Way>",
    "patch": "table<string, Sprite>",
    "armor_picture_mapping": "table<string, number>",
    "orientations": "table<string, OrientedCliffPrototype>",
    "default_recipe_tint": "table<string, Color>",
    "fluid_boxes": "table<number | string, FluidBox | boolean>",
    "shift_animation_waypoints": "table<string, Vector[]>",
    "status_colors": "table<string, Color>",
    "burnt_patch_alpha_variations": "table<string, string | number>[]",
    "difficulty_settings": "table<string, string | number>",
    "enemy_evolution": "table<string, number | boolean>",
    "enemy_expansion": "table<string, number | boolean>",
    "path_finder": "table<string, number | boolean | number[]>",
    "pollution": "table<string, number | boolean>",
    "steering": "table<string, table<string, number | boolean>>",
    "unit_group": "table<string, number>",
    "beacon_tint": "table<string, Color>",
    "graphics_set": "table<string, number | Sprite4Way | Animation4Way | RenderLayer>",
    "pictures": "table<string, Sprite | Sprite4Way | Sprite8Way | Animation | RailPieceLayers | SpriteVariations>",
    "instruments": "table<string, string | table<string, Sound>[]>",
    "crafting_machine_tint": "table<string, Color>",
    "aggregation": "table<string, number | boolean>",
    "variations": "table<string, FileName | number | boolean>[]",
    "unit": "table<string, number | string | IngredientPrototype[]>",
    "build_sound": "Sound | table<string, Sound>",
    "drawing_boxes": "table<string, BoundingBox>",
    "light1": "table<string, Sprite4Way | LightDefinition>",
    "light2": "table<string, Sprite4Way | LightDefinition>",
    "belt_animation_set": "table<string, number | boolean | RotatedAnimation | Sprite4Way>",
    "alternative_attacking_frame_sequence": "table<string, number[] | number>",
    "bonus_gui_ordering": "table<string, Order>",
    "chart": "table<string, Color | number | table<string, Color>>",
    "color_filters": "table<string, string | LocalisedString | number[][]>[]",
    "entity_renderer_search_box_limits": "table<string, number>",
    "map_editor": "table<string, Color | number>",
    "player_colors": "table<string, string | Color>[]",
    "train_path_finding": "table<string, number>",
    "cursor_box": "table<string, BoxSpecification[]>"
}


def write_prototype(file: TextIO, name: str, disp_name: str, parent: str, is_abstract: bool,
                    attributes: List[Dict[str, str]]):
    print(f'{disp_name} ({"<abs>" if is_abstract else name}) : {parent}')
    for attr in attributes:
        print(f'\t{attr["name"]}: {attr["type"]} {"(opt)" if attr["optional"] else ""}')

    if not disp_name.startswith("Prototype"):
        struct_name = "Prototype_" + disp_name
    else:
        struct_name = disp_name

    if parent:
        if not parent.startswith("Prototype"):
            parent = "Prototype_" + parent
        struct_name += " : " + parent

    if is_abstract:
        desc = "Abstract prototype."
    else:
        desc = ""

    file.write("\n\n")

    write_emmy_doc(file, desc, None, struct_name, is_struct=True)
    file.write(doc_continue + factorio_prototypes_base_url + disp_name)

    for attr in attributes:
        attr_str = doc_continue + "@field " + attr["name"] + " " + format_type(attr["type"])
        if attr["optional"]:
            attr_str += " | nil"
        attr_str = indent_for_desc(attr_str)
        if attr["optional"]:
            attr_str += " (Optional)"
        file.write(attr_str)

    file.write('\n')


def format_prototype_type(type_str: str) -> str:
    if type_str in prototypes_concepts_replacements:
        return prototypes_concepts_replacements[type_str]
    if type_str.startswith("Types/"):
        print(f"Well this is weird: {type_str}")
        type_str = type_str[6:]
    prototypes_concepts.add(type_str)
    return type_str


def format_complex_prototype_type(attribute_name: str, complex_type: List[str]) -> str:
    if attribute_name in tables_exceptions:
        # Handle special cases
        return tables_exceptions[attribute_name]

    if len(complex_type) == 1:
        return format_prototype_type(complex_type[0])

    if "or" in complex_type:
        i = complex_type.index("or")
        return format_complex_prototype_type(attribute_name, complex_type[:i]) \
            + " | " + format_complex_prototype_type(attribute_name, complex_type[i + 1:])

    if complex_type[0] == "table":
        if "of" in complex_type:
            i = complex_type.index("of") + 1
        elif "(array) of" in complex_type:
            i = complex_type.index("(array) of") + 1
        else:
            raise Exception("Unknown prototype attribute table type: " + str(complex_type))

        if complex_type[i] == "strings":
            # table of strings
            # table of strings of prototype names
            return "string[]"
        elif complex_type[i] == "tables":
            if i + 1 >= len(complex_type):
                # table (array) of tables
                return "table[]"
            else:
                # table of tables of <>
                # table of table (array) of <>
                i = complex_type.index("of", i) + 1
                return format_complex_prototype_type(attribute_name, complex_type[i:]) + "[][]"
        elif "to" in complex_type:
            # table of string to <>
            i = complex_type.index("to", i) + 1
            return "table<string, " + format_complex_prototype_type(attribute_name, complex_type[i:]) + ">"
        else:
            # table of <>
            # table (array) of <>
            return format_complex_prototype_type(attribute_name, complex_type[i:]) + "[]"
    elif complex_type[0].lower() == "array":
        if len(complex_type) >= 3:
            # array of []
            # array of two []
            # array of one or two []
            return format_complex_prototype_type(attribute_name, complex_type[2:]) + "[]"
        else:
            raise Exception("Unknown prototype attribute array type: " + str(complex_type))
    elif complex_type[0].lower() == "array of":
        # Array of []
        return format_complex_prototype_type(attribute_name, complex_type[1:]) + "[]"
    else:
        raise Exception("Unknown prototype attribute type: " + str(complex_type))


def scrap_prototypes_definitions(file: TextIO, prototypes_table: Tag):
    prototype_title_class = "prototype-toc-section-title"

    prototype_disp_name = None
    prototype_name = None
    prototype_parent = None
    is_abstract = None
    prototype_attributes = []

    for prototype in prototypes_table.children:
        if isinstance(prototype, NavigableString):
            continue
        elif prototype_title_class in prototype.td["class"]:
            if prototype_disp_name is not None:
                # we reached the next prototype definition, write the previous one to the file
                write_prototype(file, prototype_name, prototype_disp_name, prototype_parent, is_abstract,
                                prototype_attributes)
                prototype_attributes = []

            prototype_disp_name = str(prototype.td.a.contents[0])
            if '/' in prototype_disp_name:
                prototype_disp_name = prototype_disp_name[prototype_disp_name.find('/') + 1:]

            if hasattr(prototype.td, "code"):
                prototype_name = prototype.td.code.contents[0]
                if hasattr(prototype_name, "i"):
                    # it is '<i>abstract</i>'
                    is_abstract = True
                    prototype_name = None
                else:
                    is_abstract = False
                    prototype_name = str(prototype_name)
            else:
                prototype_name = None
                is_abstract = False

            if len(prototype.td.contents) > 4:
                prototype_parent = str(prototype.td.contents[4].contents[0])
                if '/' in prototype_parent:
                    prototype_parent = prototype_parent[prototype_parent.find('/') + 1:]
            else:
                prototype_parent = None
        else:
            # Prototype attribute
            if len(prototype.contents) == 1:
                # 'No new properties'
                continue

            attribute_name = str(prototype.td.a.contents[0])
            if " or " in attribute_name:
                # This attribute can be specified using multiple names. Choose the first one.
                attribute_name = attribute_name[:attribute_name.find(" or ")]

            type_elem = prototype.contents[2]
            attribute_type = format_prototype_type(str(type_elem.a.contents[0]))
            optional = False

            if len(type_elem.contents) > 1:
                # Complex type or optional attribute
                attribute_type = []
                for type_desc in type_elem.contents[:-1]:
                    if isinstance(type_desc, NavigableString):
                        type_str = str(type_desc.string).strip()
                        if len(type_str) > 0:
                            attribute_type.append(type_str)
                    else:
                        attribute_type.append(str(type_desc.contents[0]))
                attribute_type = format_complex_prototype_type(attribute_name, attribute_type)

                if not isinstance(type_elem.contents[-1], NavigableString) \
                        and str(type_elem.contents[-1].text) == "(optional)":
                    optional = True

            if "(IconSpecification)" in attribute_name:
                # Add all icon attributes as optional
                prototype_attributes.extend([
                    {
                        "name": "icons",
                        "type": "IconData[]",
                        "optional": True
                    },
                    {
                        "name": "icon",
                        "type": "FileName",
                        "optional": True
                    },
                    {
                        "name": "icon_size",
                        "type": "SpriteSizeType",
                        "optional": True
                    },
                    {
                        "name": "icon_mipmaps",
                        "type": "uint8",
                        "optional": True
                    }
                ])
            else:
                prototype_attributes.append({
                    "name": attribute_name,
                    "type": attribute_type,
                    "optional": optional
                })

        if prototype_name in prototypes_fixes:
            fix = prototypes_fixes[prototype_name]
            if "name" in fix:
                prototype_name = fix["name"]
            if "disp_name" in fix:
                prototype_disp_name = fix["disp_name"]
            if "parent" in fix:
                prototype_parent = fix["parent"]
            if "abstract" in fix:
                is_abstract = fix["abstract"]
            if "attributes" in fix:
                for attr in prototype_attributes:
                    if attr["name"] in fix["attributes"]:
                        attr.update(fix["attributes"][attr["name"]])

    write_prototype(file, prototype_name, prototype_disp_name, prototype_parent, is_abstract, prototype_attributes)


def extract_prototype_concept_attributes(concept: str, page: BeautifulSoup, attributes_list: Tag,
                                         optionals=False) -> Dict[str, dict]:
    attributes = {}

    for link in attributes_list.find_all("a"):
        attribute_id = link["href"]
        attribute_name = link.contents[2].string.strip()
        if " or " in attribute_name:
            # This attribute can be specified using multiple names. Choose the first one.
            attribute_name = attribute_name[:attribute_name.find(" or ")]

        # Follow the link to the attribute description
        attribute_desc = page.select_one(attribute_id)
        if attribute_desc is None:
            raise Exception(f"Could not resolve the type of {concept}#{attribute_name}: no desc")

        attribute_type_gen = attribute_desc.parent.next_sibling.next_sibling.strings
        if next(attribute_type_gen) not in {"Type", "Types"}:
            raise Exception(f"Could not resolve the type of {concept}#{attribute_name}: wrong format")
        next(attribute_type_gen)  # skip the ": "

        attribute_type_parts = list(attribute_type_gen)[:-1]  # remove the trailing new line
        attribute_type_parts = [part[6:].strip() if part.lower().startswith("types/") else part.strip()
                                for part in attribute_type_parts]
        attribute_type = format_complex_prototype_type(attribute_name, attribute_type_parts)

        attributes[attribute_name] = {
            "type": attribute_type,
            "optional": optionals
        }

    return attributes


def scrap_prototype_attribute_types():
    global prototypes_concepts

    print("Scraping prototypes concepts...")
    with prototypes_concepts_file.open(mode="w", encoding="utf-8") as lua_file:

        parsed = prototypes_concepts_excludes

        while True:
            # Recursively parse through all new concepts
            prototypes_concepts.difference_update(parsed)
            parsing_concepts = prototypes_concepts
            prototypes_concepts = set()
            if len(parsing_concepts) == 0:
                break

            for i, concept in enumerate(parsing_concepts):
                parsed.add(concept)

                print(f"({i}/{len(parsing_concepts)}) Types/{concept}")
                response = requests.get(factorio_prototypes_types_url + concept)
                parsed_html = BeautifulSoup(response.text, features=html_parser)

                # Use the contents table of the page to deduce the attributes
                contents_table_title = parsed_html.find("div", class_="toctitle")

                mandatory_attributes = None
                optional_attributes = None
                if contents_table_title is None:
                    mandatory_attributes = parsed_html.select_one("#Mandatory_properties")
                    if mandatory_attributes is None:
                        mandatory_attributes = parsed_html.select_one("#Properties")
                    optional_attributes = parsed_html.select_one("#Optional_properties")
                else:
                    contents_structure = contents_table_title.parent.ul.find_all("li", class_="toclevel-1")
                    if len(contents_structure) == 0:
                        raise Exception(f"Could not resolve the attributes of {concept}: "
                                        f"wrong contents table format")

                    for elem in contents_structure:
                        if elem.a["href"] in {"#Mandatory_properties", "#Properties"}:
                            mandatory_attributes = elem.ul
                        elif elem.a["href"] == "#Optional_properties":
                            optional_attributes = elem.ul

                if mandatory_attributes is None and optional_attributes is None:
                    raise Exception(f"Could not resolve the attributes of {concept}: wrong contents table format")

                if mandatory_attributes is not None:
                    attributes = extract_prototype_concept_attributes(concept, parsed_html, mandatory_attributes)
                else:
                    attributes = {}

                if optional_attributes is not None:
                    attributes.update(extract_prototype_concept_attributes(concept, parsed_html,
                                                                           optional_attributes, optionals=True))

                if concept in prototypes_concepts_fixes:
                    attributes.update(prototypes_concepts_fixes[concept])

                lua_file.write(doc_continue + "@shape " + concept)

                # Link to the type definition
                lua_file.write(doc_continue + factorio_prototypes_types_url + concept)

                for attr_name, attr in attributes.items():
                    attr_str = doc_continue + "@field " + attr_name + " " + attr["type"]
                    if attr["optional"]:
                        attr_str += " | nil"
                    attr_str = indent_for_desc(attr_str)
                    if attr["optional"]:
                        attr_str += " (Optional)"
                    lua_file.write(attr_str)

                lua_file.write("\n\n")

        # Add concepts whose page cannot be scraped like the others
        for concept, concept_def in prototypes_concepts_additions.items():
            if "__parent" in concept_def:
                lua_file.write(doc_continue + "@shape " + concept + " : " + concept_def["__parent"])
                del concept_def["__parent"]
            else:
                lua_file.write(doc_continue + "@shape " + concept)

            lua_file.write(doc_continue + factorio_prototypes_types_url + concept)

            for attr_name, attr in concept_def.items():
                attr_str = doc_continue + "@field " + attr_name + " " + attr["type"]
                if attr["optional"]:
                    attr_str += " | nil"
                attr_str = indent_for_desc(attr_str)
                if attr["optional"]:
                    attr_str += " (Optional)"
                lua_file.write(attr_str)

            lua_file.write("\n\n")

        # Add aliases
        for alias, type_str in prototypes_concepts_aliases.items():
            lua_file.write(doc_continue + "@alias " + alias + " " + type_str)
            lua_file.write(doc_continue + factorio_prototypes_types_url + alias + "\n\n")

    print("Done with the prototypes concepts.")


def scrap_prototypes_definitions_and_types():
    print("Scraping the prototype definitions...")

    response = requests.get(factorio_prototypes_url)
    parsed_html = BeautifulSoup(response.text, features=html_parser)
    prototypes_table = parsed_html.body.find("table", attrs={"class": "prototype-toc"}).tbody

    if not out_dir.exists():
        out_dir.mkdir(parents=True)

    with prototypes_file.open(mode="w", encoding="utf-8") as lua_file:
        scrap_prototypes_definitions(lua_file, prototypes_table)

    print("Done with the prototypes.")

    scrap_prototype_attribute_types()


if __name__ == '__main__':
    scrap_prototypes_definitions_and_types()
