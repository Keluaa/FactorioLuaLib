
import requests
import json
import textwrap
from pathlib import Path
from typing import *
from typing import TextIO
from inflection import underscore

from lua_docs_format import max_line_length, doc_start, doc_continue, check_var, format_type, extract_references, \
    format_description, write_emmy_doc, indent_for_desc


factorio_api_url = r"https://lua-api.factorio.com"
runtime_api_file = "runtime-api.json"


out_dir = Path.cwd() / "lib"
api_json_file = out_dir / "raw_api_docs.json"

classes_dir = out_dir / "classes"

events_file = out_dir / "events.lua"
defines_file = out_dir / "defines.lua"
builtins_file = out_dir / "builtins.lua"
concepts_file = out_dir / "concepts.lua"
globals_file = out_dir / "globals.lua"
libs_and_functions_file = out_dir / "libs_and_functions.lua"
data_state_file = out_dir / "data_stage.lua"


# Any key not encountered while parsing the concepts will have its value written to the concepts file
concepts_additions = {
    # PrototypeFilter should be an alias for any prototype filter
    "PrototypeFilter": [
        doc_start + "@alias PrototypeFilter"
                  + " TechnologyPrototypeFilter"
                  + " | EquipmentPrototypeFilter"
                  + " | AchievementPrototypeFilter"
                  + " | DecorativePrototypeFilter"
                  + " | RecipePrototypeFilter"
                  + " | FluidPrototypeFilter"
                  + " | EntityPrototypeFilter"
                  + " | TilePrototypeFilter"
                  + " | ItemPrototypeFilter"
    ],

    # Those are errors which will be fixed in the future of the API
    "BlueprintCircuitConnection": [
        doc_start + "@alias BlueprintCircuitConnection table"
    ],
    "BlueprintControlBehavior": [
        doc_start + "@alias BlueprintControlBehavior table"
    ]
}


# Replaces some keys of some concepts definitions
concepts_fixes = {
    "LocalisedString": {
        "category": "union",
        "options": [
            {
                "type": "string",
                "order": 1,
                "description": ""
            },
            {
                "type": {
                    "complex_type": "array",
                    "value": {
                        "complex_type": "variant",
                        "options": [
                            "LocalisedString",
                            "string",
                            "number",
                            "LuaProfiler"
                        ]
                    }
                },
                "order": 2,
                "description": ""
            }
        ]
    },
    "Tags": {
        "category": "struct",
        "attributes": [
            {
                "name": "[string]",
                "type": "string | boolean | number | table",
                "order": 1,
                "description": "",
                "read": True,
                "write": True
            }
        ]
    },
    "Vector": {
        "category": "struct",
        "attributes": [
            {
                "name": "[1]",
                "type": "number",
                "order": 1,
                "description": "x",
                "read": True,
                "write": True
            },
            {
                "name": "[2]",
                "type": "number",
                "order": 2,
                "description": "y",
                "read": True,
                "write": True
            }
        ]
    }
}


# When one of those concepts is encountered, its attributes are ignored and it becomes a simple alias declaration
concepts_as_aliases = {
    "SpritePath": "string",
    "RenderLayer": "string | number"
}


classes_fixes = {
    "LuaLazyLoadedValue": {
        "generic": "<A>",
        "methods": {
            "get": {
                "return_type": "A"
            }
        }
    },
    "LuaCustomTable": {
        "generic": "<K, V>",
        "generic_fields": [
            {
                "name": "[K | any]",  # TODO : ' | any' must be added because of some invalid generic field indexing
                "type": "V"
            }
        ]
    },
    "LuaConstantCombinatorControlBehavior": {
        "attributes": {
            "parameters": {
                "type": "ConstantCombinatorParameters[] | nil"  # This attribute can be set to nil
            }
        }
    },
    "LuaEntity": {
        "methods": {
            "get_rail_segment_end": {
                "return_type": "LuaEntity, defines_rail_direction"
            }
        }
    },
    "LuaGuiElement": {
        "generic_fields": [
            {
                "name": "[string]",
                "type": "LuaGuiElement"
            }
        ]
    }
}


builtins_additions = {
    "int16": {
        "type": "number",
        "description": "16-bit signed integer. Possible values are -32,768 to 32,767."
    },
    "int32": {
        "type": "number",
        "description": "32-bit signed integer. Possible values are -2147,483,648 to 2,147,483,647."
    },
    "int64": {
        "type": "number",
        "description":
            "32-bit signed integer. Possible values are -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807."
    },
    "uint32": {
        "type": "number",
        "description": "32-bit signed integer. Possible values are 0 to 4,294,967,295."
    }
}


defines_fixes = {
    "defines_prototypes": {
        "values": [
            {
                "name": "[string]",
                "type": "table<string, number>",
                "order": 0,
                "optional": False,
                "description": ""
            }
        ]
    }
}


libs_and_functions = {
    "serpent": {
        "description": "Lua serializer and pretty printer.\nhttps://github.com/pkulchenko/serpent",
        "methods": [
            {
                "name": "block",
                "description": "Multi-line indented pretty printing",
                "order": 0,
                "takes_table": False,
                "parameters": [
                    {
                        "name": "a",
                        "type": "any",
                        "optional": False,
                        "description": "",
                        "order": 0
                    },
                    {
                        "name": "options",
                        "type": "table<string, any>",
                        "optional": True,
                        "description": "Options",
                        "order": 1
                    }
                ],
                "return_type": "string"
            },
            {
                "name": "line",
                "description": "Single line pretty printing",
                "order": 1,
                "takes_table": False,
                "parameters": [
                    {
                        "name": "a",
                        "type": "any",
                        "optional": False,
                        "description": "",
                        "order": 0
                    },
                    {
                        "name": "options",
                        "type": "table<string, any>",
                        "optional": True,
                        "description": "Options",
                        "order": 1
                    }
                ],
                "return_type": "string"
            },
            {
                "name": "dump",
                "description": "Serialises the given value",
                "order": 2,
                "takes_table": False,
                "parameters": [
                    {
                        "name": "a",
                        "type": "any",
                        "optional": False,
                        "description": "",
                        "order": 0
                    },
                    {
                        "name": "options",
                        "type": "table<string, any>",
                        "optional": True,
                        "description": "Options",
                        "order": 1
                    }
                ],
                "return_type": "string"
            },
            {
                "name": "load",
                "description": "Loads a serialised value",
                "order": 3,
                "takes_table": False,
                "parameters": [
                    {
                        "name": "str",
                        "type": "string",
                        "optional": False,
                        "description": "",
                        "order": 0
                    },
                    {
                        "name": "options",
                        "type": "table<string, any>",
                        "optional": True,
                        "description": "Options",
                        "order": 1
                    }
                ],
                "return_type": "boolean, any"
            }
        ]
    },
    "log": {
        "name": "log",
        "description": "Prints a string (or a localised string) to the log file.\nhttps://wiki.factorio.com/Log_file",
        "order": 0,
        "takes_table": False,
        "parameters": [
            {
                "name": "str",
                "type": "LocalisedString",
                "optional": False,
                "description": "",
                "order": 0
            }
        ]
    },
    "localised_print": {
        "name": "localised_print",
        "description":
            "Prints a string to the standard output. Only useful when running Factorio from the command line.",
        "order": 0,
        "takes_table": False,
        "parameters": [
            {
                "name": "str",
                "type": "LocalisedString",
                "optional": False,
                "description": "",
                "order": 0
            }
        ]
    },
    "table_size": {
        "name": "table_size",
        "description":
            "Returns the number of non-nil values in a table, a generalized # operator. "
            "Does not work for custom tables.",
        "order": 0,
        "takes_table": False,
        "parameters": [
            {
                "name": "tbl",
                "type": "table",
                "optional": False,
                "description": "",
                "order": 0
            }
        ],
        "return_type": "number"
    }
}


def is_array(type_desc: Union[str, dict]) -> bool:
    if type(type_desc) is str:
        return False
    return type_desc["complex_type"] == "array"


def is_custom_table(type_desc: Union[str, dict]) -> bool:
    if type(type_desc) is str:
        return False
    return type_desc["complex_type"] == "LuaCustomTable"


def is_lazy_loaded_value(type_desc: Union[str, dict]) -> bool:
    if type(type_desc) is str:
        return False
    return type_desc["complex_type"] == "LuaLazyLoadedValue"


def write_defines(file: TextIO, root: str, defines: List[dict]):
    if root == "":
        root = ""
        defines = [{
            "name": "defines",
            "order": 1,
            "subkeys": defines,
            "description": ""
        }]
    else:
        root += "_"

    for defines_def in sorted(defines, key=lambda x: x["order"]):
        full_name = root + defines_def["name"]
        values_type = ""

        if "values" in defines_def:
            file.write(doc_start + "@alias " + full_name + " number\n\n")
            values_type = full_name
            full_name += "_enum"

        write_emmy_doc(file, defines_def["description"], None, full_name)

        if full_name in defines_fixes:
            if "values" in defines_fixes[full_name]:
                write_parameters(file, defines_fixes[full_name]["values"], are_fields=True)

        if "values" in defines_def:
            if defines_def["name"] == "events":
                for value_def in sorted(defines_def["values"], key=lambda x: x["order"]):
                    file.writelines([
                        doc_continue + "@field " + value_def["name"],
                        doc_continue + "@see " + value_def["name"] + " @",
                        doc_continue
                    ])
            else:
                for value_def in sorted(defines_def["values"], key=lambda x: x["order"]):
                    value_str = doc_continue + "@field " + value_def["name"] + " " + values_type
                    if value_def["description"]:
                        value_str = indent_for_desc(value_str)
                        desc, _ = extract_references(value_def["description"])
                        desc = desc.strip().replace('\n', ' ')
                        value_str += " " + desc
                    file.write(value_str)

        if "subkeys" in defines_def:
            full_name = root + defines_def["name"]
            for sub_key_def in sorted(defines_def["subkeys"], key=lambda x: x["order"]):
                sub_key_name = full_name + "_" + sub_key_def["name"]
                if "values" in sub_key_def:
                    sub_key_name += "_enum"
                file.write(doc_continue + "@field " + sub_key_def["name"] + " " + sub_key_name)

            file.write("\n\n\n")
            write_defines(file, full_name, defines_def["subkeys"])
        else:
            file.write("\n\n\n")


def write_enum_type(file: TextIO, values_def: List[dict]):
    for value_def in sorted(values_def, key=lambda x: x["order"]):
        value_str = doc_continue + " - " + value_def["name"]
        value_str = indent_for_desc(value_str)

        if value_def["description"]:
            value_str += value_def["description"]

        file.write(value_str)


def write_parameters(file: TextIO, params: List[dict], are_fields: bool = False):
    for param in sorted(params, key=lambda x: x["order"]):
        param_str = doc_continue + ("@field " if are_fields else " @param ") + param["name"]
        param_str += " " + format_type(param["type"])
        if param["optional"]:
            param_str += " | nil"
        param_str = indent_for_desc(param_str)

        if param["optional"]:
            param_str += " (Optional) "

        if is_lazy_loaded_value(param["type"]):
            param_str += " LazyLoadedValue, call 'get()' to have its value."

        if '\n' in param["description"]:
            param_str += " " + param["description"][:param["description"].find('\n')]
        else:
            param_str += " " + param["description"]

        file.write(param_str)


def write_parameter_groups(file: TextIO, param_groups: List[dict]):
    params = {}
    for param_group in sorted(param_groups, key=lambda x: x["order"]):
        for param in sorted(param_group["parameters"], key=lambda x: x["order"]):
            if param["name"] in params:
                if format_type(param["type"]) not in params[param["name"]]["types"]:
                    params[param["name"]]["types"].append(format_type(param["type"]))
                params[param["name"]]["optional"] &= param["optional"]
            else:
                params[param["name"]] = {
                    "types": [format_type(param["type"])],
                    "optional": param["optional"]
                }

    for param_name, param in params.items():
        param_str = doc_continue + "@field " + param_name + " " + " | ".join(param["types"])
        if "nil" not in param["types"]:
            param_str += " | nil"
        param_str = indent_for_desc(param_str)
        param_str += " (Optional)"

        file.write(param_str)


def write_attributes(file: TextIO, attributes: dict):
    for attr in sorted(attributes, key=lambda x: x["order"]):
        attr_str = doc_continue + "@field " + attr["name"] + " " + format_type(attr["type"])
        attr_str = indent_for_desc(attr_str)

        attr_str += " ("
        if attr["read"]:
            attr_str += "R"
        if attr["write"]:
            attr_str += "W"
        attr_str += ") "

        attr_str += attr["description"]

        # Missing: notes, examples, see_also

        file.write(attr_str)


def format_overload(method: dict, params_list: List[dict]) -> str:
    params_str = ", ".join(map(lambda x: x["name"] + ": " + format_type(x["type"]), params_list))
    overload_str = doc_continue + f"@overload fun({params_str})"

    if "return_type" in method:
        overload_str += ": " + format_type(method["return_type"])

    return overload_str


def write_methods(file: TextIO, class_type: str, class_var: str, methods: List[dict]):
    for method in sorted(methods, key=lambda x: x["order"]):
        if method["takes_table"]:
            params_decl = "params"
            params_table_type = class_type + "_" + method["name"] + "_p"
            table_optional = method["table_is_optional"] if "table_is_optional" in method else False
            params_list = [
                {
                    "name": "params",
                    "type": params_table_type,
                    "optional": table_optional,
                    "desc": "",
                    "nil": "nil"
                }
            ]

            file.write(doc_continue + "@alias " + params_table_type)
            write_parameters(file, method["parameters"], are_fields=True)

            if "variant_parameter_groups" in method:
                write_parameter_groups(file, method["variant_parameter_groups"])

            file.write("\n")
        else:
            params_list = [
                {
                    "name": check_var(param["name"], class_var),
                    "type": format_type(param["type"]),
                    "optional": (param["optional"] if "optional" in param else False),
                    "desc": param["description"],
                    "nil": "{}" if is_array(param["type"]) else "nil"
                }
                for param in sorted(method["parameters"], key=lambda x: x["order"])
            ]
            params_decl = ", ".join([param["name"] for param in params_list])

        if method["description"]:
            file.write("\n")
            file.writelines(format_description(method["description"]))
            if len(params_list) > 0 or "return_type" in method:
                file.write(doc_continue)

        if any(map(lambda x: x["optional"], params_list)):
            # The function has optional parameters, build the function overloads
            overload_params_list = []
            for param in params_list:
                if param["optional"]:
                    file.write(format_overload(method, overload_params_list))
                overload_params_list.append(param)

        for param in params_list:
            optional = "optional" in param and param["optional"]

            param_str = doc_continue + f'@param {param["name"]} {param["type"]}'
            if optional:
                param_str += " | nil"
            param_str = indent_for_desc(param_str)

            if optional:
                param_str += " (Optional) "

            if "description" in param:
                desc, _ = extract_references(param["description"])

                if '\n' in desc:
                    param_str += " " + desc[:desc.find('\n')]
                else:
                    param_str += " " + desc

            file.write(param_str)

        if "variadic_type" in method:
            if params_decl:
                params_decl += ", ..."
            else:
                params_decl = "..."

            param_str = doc_continue + "@vararg " + format_type(method["variadic_type"])
            param_str = indent_for_desc(param_str)

            if "variadic_description" in method:
                desc = method["variadic_description"]
                if '\n' in desc:
                    param_str += " " + desc[:desc.find('\n')]
                else:
                    param_str += " " + desc

            file.write(param_str)

        return_str = doc_continue + "@return "

        if "return_type" in method:
            return_str += format_type(method["return_type"])
            returns_array = is_array(method["return_type"])
            has_return = True
        elif len(params_list) == 0:
            # TODO : we force the return type to nil when there is no parameters or returned value because of a bug in
            #  Luanalysis
            return_str += "nil"
            returns_array = False
            has_return = True
        else:
            returns_array = False
            has_return = False

        if has_return:
            return_str = indent_for_desc(return_str)
            if "return_description" in method:
                return_str += extract_references(method["return_description"])[0]
            file.write(return_str)

        if "see_also" in method:
            for ref in method["see_also"]:
                _, links = extract_references(ref)
                file.writelines(links)

        if class_var:
            file.write(f'\nfunction {class_var}.{method["name"]}({params_decl})\n    ')
        else:
            file.write(f'\nfunction {method["name"]}({params_decl})\n    ')

        file.write("\n    ".join([param["name"] + " = " + param["nil"] for param in params_list]))
        if has_return:
            if len(params_list) > 0:
                file.write("\n    ")
            if returns_array:
                file.write("return {}")
            elif ',' in return_str:
                file.write("return " + ", ".join(["nil"] * (return_str.count(',') + 1)))
            else:
                file.write("return nil")
        file.write("\nend\n\n")

        # Missing: examples, notes, subclasses


def write_attributes_var(file: TextIO, class_var: str, attributes: List[dict]):
    for attr in sorted(attributes, key=lambda x: x["order"]):
        file.write(doc_continue + "@type " + format_type(attr["type"]))

        attr_rw = doc_continue + " ("
        if attr["read"]:
            attr_rw += "R"
        if attr["write"]:
            attr_rw += "W"
        attr_rw += ")\n"
        file.write(attr_rw)

        if attr["description"]:
            file.writelines(format_description(attr["description"]))
            file.write("\n")

        if is_custom_table(attr["type"]):
            file.writelines([
                doc_start + "Custom table.",
                doc_continue + "@see LuaCustomTable\n"
            ])

        if is_array(attr["type"]):
            file.write(class_var + "." + attr["name"] + " = {}\n")
        else:
            file.write(class_var + "." + attr["name"] + " = nil\n")

        # Missing: examples, notes, subclasses


def parse_classes(classes: list):
    if not classes_dir.exists():
        classes_dir.mkdir(parents=True)

    for class_def in sorted(classes, key=lambda x: x["order"]):
        with (classes_dir / (class_def["name"] + ".lua")).open(mode="w", encoding="utf-8") as lua_file:
            if class_def["name"] in classes_fixes:
                fixes: dict = classes_fixes[class_def["name"]]
            else:
                fixes = {}

            lua_var = class_def["name"]
            if lua_var.startswith("Lua"):
                lua_var = lua_var[3:]
            lua_var = underscore(lua_var)

            class_type = class_def["name"]
            full_class_type = class_type
            if "generic" in fixes:
                full_class_type += fixes["generic"]
            if "base_classes" in class_def:
                full_class_type += " : " + ", ".join(class_def["base_classes"])

            lua_file.write("\n" + doc_continue + "@class " + full_class_type + "\n")
            lua_file.writelines(format_description(class_def["description"]))

            if "generic_fields" in fixes:
                for field in fixes["generic_fields"]:
                    lua_file.write(doc_continue + "@field " + field["name"] + " " + field["type"])

            if "methods" in fixes:
                for method_def in class_def["methods"]:
                    if method_def["name"] in fixes["methods"]:
                        method_def.update(fixes["methods"][method_def["name"]])

            if "attributes" in fixes:
                for attr_def in class_def["attributes"]:
                    if attr_def["name"] in fixes["attributes"]:
                        attr_def.update(fixes["attributes"][attr_def["name"]])

            if "see_also" in class_def:
                for ref in class_def["see_also"]:
                    _, links = extract_references(ref)
                    lua_file.writelines(links)

            lua_file.write("\nlocal " + lua_var + " = {}\n\n")

            if "notes" in class_def:
                for note in class_def["notes"]:
                    lua_file.write(doc_continue + "\n")
                    write_emmy_doc(lua_file, note, None, None)

            write_attributes_var(lua_file, lua_var, class_def["attributes"])
            lua_file.write("\n\n")
            write_methods(lua_file, class_type, lua_var, class_def["methods"])

            # Missing: operators


def parse_events(events: list):
    with events_file.open(mode="w", encoding="utf-8") as lua_file:
        lua_file.write("\n")

        event_params_filter = [
            "tick",
            "name",
            "mod_name"
        ]

        for event_def in sorted(events, key=lambda x: x["order"]):
            lua_file.write(doc_start + "@class " + event_def["name"])

            if event_def["description"]:
                lua_file.write("\n")
                lua_file.writelines(format_description(event_def["description"]))

            lua_file.write("\n\n")

            lua_file.write(doc_start + "@shape " + event_def["name"] + "_data : EventData")
            event_data = filter(lambda e_data: e_data["name"] not in event_params_filter, event_def["data"])
            write_parameters(lua_file, list(event_data), are_fields=True)

            lua_file.write("\n\n\n")

            # Missing: notes, examples, see_also


def parse_defines(defines: list):
    with defines_file.open(mode="w", encoding="utf-8") as lua_file:
        lua_file.write("\n")
        write_defines(lua_file, "", defines)


def parse_builtins(builtins: list):
    with builtins_file.open(mode="w", encoding="utf-8") as lua_file:
        lua_file.write("\n")

        for builtin_def in sorted(builtins, key=lambda x: x["order"]):
            if builtin_def["name"] in {"string", "boolean", "table"}:
                # Those types are already defined
                continue

            lua_file.write(doc_start + "@alias " + builtin_def["name"] + " number")

            if builtin_def["description"]:
                lua_file.write("\n")
                lua_file.writelines(format_description(builtin_def["description"]))

            lua_file.write("\n\n")

        for name, builtin_def in builtins_additions.items():
            lua_file.write(doc_start + "@alias " + name + " number\n")
            lua_file.writelines(format_description(builtin_def["description"]))
            lua_file.write("\n\n")


def write_concept(file: TextIO, concept_def: dict):
    category = concept_def["category"]
    if category == "concept":
        write_emmy_doc(file, concept_def["description"], None, concept_def["name"], is_struct=True)
    elif category == "table":
        write_emmy_doc(file, concept_def["description"], None, concept_def["name"], is_struct=True)
        write_parameters(file, concept_def["parameters"], are_fields=True)
        if "variant_parameter_groups" in concept_def:
            write_parameter_groups(file, concept_def["variant_parameter_groups"])
    elif category == "table_or_array":
        write_emmy_doc(file, concept_def["description"], None, concept_def["name"], is_struct=True)
        file.write(doc_continue + doc_continue + "Explicit or implicit parameters:")
        # Make all named parameters optional
        for param in concept_def["parameters"]:
            param["optional"] = True
        write_parameters(file, concept_def["parameters"], are_fields=True)
        for i, param in enumerate(sorted(concept_def["parameters"], key=lambda x: x["order"])):
            param_str = doc_continue + f"@field [{i + 1}] " + format_type(param["type"] + " | nil")
            file.write(param_str)
    elif category == "enum":
        values = [f'"{member["name"]}"' for member in sorted(concept_def["options"], key=lambda x: x["order"])]
        file.write(doc_start + "@alias " + concept_def["name"] + " " + " | ".join(values) + "\n")
        file.writelines(format_description(concept_def["description"]))
        write_enum_type(file, concept_def["options"])
    elif category == "flag":
        values_name = concept_def["name"] + "_val"
        file.write(doc_start + "@alias " + concept_def["name"] + " table<" + values_name + ", boolean>")
        if concept_def["description"]:
            file.write("\n")
            file.writelines(format_description(concept_def["description"]))

        options = ""
        desc = ""
        for value_def in sorted(concept_def["options"], key=lambda x: x["order"]):
            options += f""" | '"{value_def["name"]}"'"""

            if value_def["description"]:
                val_desc = doc_continue + f' - "{value_def["name"]}": '
                val_desc = indent_for_desc(val_desc)

                desc += "".join(textwrap.wrap(value_def["description"],
                                              width=max_line_length, break_long_words=False,
                                              initial_indent=val_desc,
                                              subsequent_indent=doc_continue + "    ",
                                              expand_tabs=True, tabsize=4))

        file.write(doc_continue + "@alias " + values_name + " string" + options)
        if desc:
            file.write("\n")
            file.write(desc)
    elif category == "union":
        options = ""
        desc = ""
        for value_def in sorted(concept_def["options"], key=lambda x: x["order"]):
            options += f""" | {format_type(value_def["type"])}"""

            if value_def["description"]:
                val_desc = doc_continue + f' - {value_def["type"]}: '
                val_desc = indent_for_desc(val_desc)

                desc += "".join(textwrap.wrap(value_def["description"],
                                              width=max_line_length, break_long_words=False,
                                              initial_indent=val_desc,
                                              subsequent_indent=doc_continue + "    ",
                                              expand_tabs=True, tabsize=4))
        if options:
            options = options[2:]

        file.write(doc_start + "@alias " + concept_def["name"] + options)
        if concept_def["description"]:
            file.write("\n")
            file.writelines(format_description(concept_def["description"]))
        if desc:
            file.write("\n")
            file.write(desc)
    elif category == "filter":
        write_emmy_doc(file, concept_def["description"], None, concept_def["name"], is_struct=True)
        write_parameters(file, concept_def["parameters"], are_fields=True)
        if "variant_parameter_groups" in concept_def:
            write_parameter_groups(file, concept_def["variant_parameter_groups"])
    elif category == "struct":
        write_emmy_doc(file, concept_def["description"], None, concept_def["name"], is_struct=True)
        write_attributes(file, concept_def["attributes"])
    else:
        print("Unknown category: " + category)


def parse_concepts(concepts: list):
    with concepts_file.open(mode="w", encoding="utf-8") as lua_file:
        lua_file.write("\n")

        for concept_def in sorted(concepts, key=lambda x: x["order"]):
            if concept_def["name"] in concepts_fixes:
                concept_def.update(concepts_fixes[concept_def["name"]])

            if concept_def["name"] in concepts_as_aliases:
                lua_file.write(doc_start + f'@alias {concept_def["name"]} {concepts_as_aliases[concept_def["name"]]}\n')
                write_emmy_doc(lua_file, concept_def["description"], None, None)
            else:
                write_concept(lua_file, concept_def)

            if concept_def["name"] in concepts_additions:
                del concepts_additions[concept_def["name"]]

            if "notes" in concept_def:
                for note in concept_def["notes"]:
                    lua_file.write(doc_continue + "\n")
                    write_emmy_doc(lua_file, note, None, None)

            if "see_also" in concept_def:
                for ref in concept_def["see_also"]:
                    _, links = extract_references(ref)
                    lua_file.writelines(links)

            if "examples" in concept_def:
                lua_file.write("\n\n--[[")
                for note in concept_def["examples"]:
                    lua_file.write("\n")
                    lua_file.writelines(textwrap.wrap(note,
                                                      width=max_line_length, break_long_words=False,
                                                      initial_indent="", subsequent_indent="\n",
                                                      expand_tabs=True, tabsize=4))
                    lua_file.write("\n")
                lua_file.write("--]]")

            lua_file.write("\n\n\n")

        if len(concepts_additions) > 0:
            lua_file.write("-- Fixes for the Factorio API:\n\n\n")

        for _, fix in concepts_additions.items():
            lua_file.writelines(fix)
            lua_file.write("\n\n\n")


def parse_globals(globals_def: list):
    with globals_file.open(mode="w", encoding="utf-8") as lua_file:
        lua_file.write("\n")

        for global_def in sorted(globals_def, key=lambda x: x["order"]):
            write_emmy_doc(lua_file, global_def["description"], global_def["type"], None)
            lua_file.write(global_def["name"] + " = nil\n")
            lua_file.write("\n\n")

        lua_file.writelines([
            doc_start + "The defines table, which contains symbolic constants used throughout the API.",
            doc_continue + "@type defines\n",
            "defines = nil\n\n",
            doc_start + "The global table each mod has access to: a table with the name global declared as a global "
                        "variable that is",
            doc_continue + "persisted between map sessions.",
            doc_continue + "Only specific data can be saved and loaded using this table:",
            doc_continue + " - Basic data: nil, strings, numbers, booleans",
            doc_continue + " - Tables, but not meta tables; tables with metatables become plain tables when saved and "
                           "loaded.",
            doc_continue + " - References to builtin Factorio LuaObjects",
            doc_continue + "@type table<any, any>\n",
            "global = {}\n\n"
        ])


def get_api_json(version: str, force: bool = False) -> dict:
    if not force and api_json_file.exists():
        with api_json_file.open(mode="r") as api_file:
            print("Loaded from file.")
            return json.load(api_file)

    runtime_api_file_url = factorio_api_url + "/" + version + "/" + runtime_api_file
    response = requests.get(runtime_api_file_url)
    return response.json()


def parse_libs_and_functions():
    with libs_and_functions_file.open(mode="w", encoding="utf-8") as lua_file:
        lua_file.write("\n")

        for name, thing_def in libs_and_functions.items():
            if "methods" in thing_def:
                # Library
                write_emmy_doc(lua_file, thing_def["description"], None, name)
                lua_file.write("\n" + name + " = {}\n\n")
                write_methods(lua_file, name, name, thing_def["methods"])
            elif "parameters" in thing_def:
                # Function
                write_methods(lua_file, "", "", [thing_def])


def data_stage():
    with data_state_file.open(mode="w", encoding="utf-8") as lua_file:

        # TODO : 'mods' table (but also in the settings stage)

        lua_file.writelines([
            doc_continue,
            doc_continue + " /!\\ Those functions and tables are only defined during the data stage /!\\",
            doc_continue,
            "\n\n",
            "table = table -- The only way I found to make this work for Luanalysis",
            "\n\n",
            doc_continue + "Returns a copy of the given table. All members are copied recursively.",
            doc_continue + "@param tbl table<K, V>",
            doc_continue + "@generic K",
            doc_continue + "@generic V",
            doc_continue + "@return table<K, V>",
            "\nfunction table.deepcopy(tbl)",
            "\n    tbl = nil"
            "\n    return {}",
            "\nend",
            "\n\n",
            doc_continue + "@class Data",
            doc_continue + "@field raw table<string, table<string, table>>",
            doc_continue + "@field is_demo boolean",
            "\ndata = {}",
            "\n\n",
            doc_continue + "@param p table | table[]"
            "\nfunction data:extend(p)",
            "\n    p = nil",
            "\nend",
            "\n\n",
        ])


def convert_factorio_api(version: str = "latest", force_request: bool = True):
    factorio_api = get_api_json(version, force_request)
    print("Factorio API version: " + factorio_api["application_version"])
    print("Docs version: " + str(factorio_api["api_version"]))

    if not force_request:
        with api_json_file.open(mode="w") as api_file:
            json.dump(factorio_api, api_file, indent=4, sort_keys=True)

    parse_classes(factorio_api["classes"])
    parse_events(factorio_api["events"])
    parse_defines(factorio_api["defines"])
    parse_builtins(factorio_api["builtin_types"])
    parse_concepts(factorio_api["concepts"])
    parse_globals(factorio_api["global_objects"])

    print("Done with the API.")

    parse_libs_and_functions()
    data_stage()


if __name__ == '__main__':
    convert_factorio_api()
