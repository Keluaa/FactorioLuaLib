

--- @class LuaItemPrototype
--- Prototype of an item.
local item_prototype = {}


--- @type string
---  (R)
--- Type of this prototype. E.g. `"gun"` or `"mining-tool"`.
item_prototype.type = nil

--- @type string
---  (R)
--- Name of this prototype.
item_prototype.name = nil

--- @type LocalisedString
---  (R)
item_prototype.localised_name = nil

--- @type LocalisedString
---  (R)
item_prototype.localised_description = nil

--- @type string
---  (R)
--- Order string.
item_prototype.order = nil

--- @type LuaEntityPrototype
---  (R)
--- Prototype of the entity that will be created by placing this item, or `nil` if there is no such entity.
item_prototype.place_result = nil

--- @type LuaEquipmentPrototype
---  (R)
--- Prototype of the equipment that will be created by placing this item in an equipment grid or `nil` if there is no
--- equipment defined.
item_prototype.place_as_equipment_result = nil

--- @type PlaceAsTileResult
---  (R)
--- The place-as-tile result if one is defined, else `nil`.
item_prototype.place_as_tile_result = nil

--- @type boolean
---  (R)
--- Is this item allowed to stack at all?
item_prototype.stackable = nil

--- @type uint
---  (R)
--- The default request value.
item_prototype.default_request_amount = nil

--- @type uint
---  (R)
--- Maximum stack size of the item specified by this prototype.
item_prototype.stack_size = nil

--- @type uint
---  (R)
--- The number of items needed to connect 2 entities with this as wire.
item_prototype.wire_count = nil

--- @type string
---  (R)
--- The fuel category or `nil`.
item_prototype.fuel_category = nil

--- @type LuaItemPrototype
---  (R)
--- The result of burning this item as fuel or `nil`.
item_prototype.burnt_result = nil

--- @type float
---  (R)
--- Fuel value when burned.
item_prototype.fuel_value = nil

--- @type double
---  (R)
--- The acceleration multiplier when this item is used as fuel in a vehicle.
item_prototype.fuel_acceleration_multiplier = nil

--- @type double
---  (R)
--- The fuel top speed multiplier when this item is used as fuel in a vehicle.
item_prototype.fuel_top_speed_multiplier = nil

--- @type double
---  (R)
--- The emissions multiplier if this is used as fuel.
item_prototype.fuel_emissions_multiplier = nil

--- @type LuaGroup
---  (R)
--- The subgroup this prototype belongs to.
item_prototype.subgroup = nil

--- @type LuaGroup
---  (R)
--- The group this prototype belongs to.
item_prototype.group = nil

--- @type ItemPrototypeFlags
---  (R)
--- The flags for this item prototype.
item_prototype.flags = nil

--- @type Product[]
---  (R)
--- The results from launching this item in a rocket.
item_prototype.rocket_launch_products = {}

--- @type boolean
---  (R)
--- If this item can be mod-opened.
item_prototype.can_be_mod_opened = nil

--- @type float
---  (R)
--- Size of full magazine; `nil` if this is not an ammo item.
item_prototype.magazine_size = nil

--- @type float
---  (R)
--- Amount of extra time (in ticks) it takes to reload the weapon after depleting the magazine or `nil` if this is not
--- an ammo item.
item_prototype.reload_time = nil

--- @type LuaEquipmentGridPrototype
---  (R)
--- The prototype of this armor equipment grid or `nil` if none or this is not an armor item.
item_prototype.equipment_grid = nil

--- @type table<string, Resistance>
---  (R)
--- Resistances of this armour item, indexed by damage type name. `nil` if not an armor or the armor has no
--- resistances.
item_prototype.resistances = nil

--- @type uint
---  (R)
--- The inventory size bonus for this armor prototype. `nil` if this isn't an armor prototype.
item_prototype.inventory_size_bonus = nil

--- @type CapsuleAction
---  (R)
--- The capsule action for this capsule item prototype or `nil` if this isn't a capsule item prototype.
item_prototype.capsule_action = nil

--- @type AttackParameters
---  (R)
--- The gun attack parameters or `nil` if not a gun item prototype.
item_prototype.attack_parameters = nil

--- @type uint
---  (R)
--- The main inventory size for item-with-inventory-prototype. `nil` if not an item-with-inventory-prototype.
item_prototype.inventory_size = nil

--- @type table<string, LuaItemPrototype>
---  (R)
item_prototype.item_filters = nil

--- @type table<string, LuaGroup>
---  (R)
item_prototype.item_group_filters = nil

--- @type table<string, LuaGroup>
---  (R)
item_prototype.item_subgroup_filters = nil

--- @type string
---  (R)
--- The filter mode used by this item with inventory.
item_prototype.filter_mode = nil

--- @type string
---  (R)
--- The insertion priority mode used by this item with inventory.
item_prototype.insertion_priority_mode = nil

--- @type LocalisedString
---  (R)
--- The localised string used when the player attempts to put items into this item with inventory that aren't allowed.
item_prototype.localised_filter_message = nil

--- @type boolean
---  (R)
--- If this item with inventory extends the inventory it resides in by default.
item_prototype.extend_inventory_by_default = nil

--- @type Color
---  (R)
--- The default label color used for this item with label. `nil` if not defined or if this isn't an item with label.
item_prototype.default_label_color = nil

--- @type boolean
---  (R)
--- If true, and this item with label has a label it is drawn in place of the normal number when held in the cursor.
item_prototype.draw_label_for_cursor_render = nil

--- @type float
---  (R)
--- The repairing speed if this is a repairing tool; otherwise `nil`.
item_prototype.speed = nil

--- @type ModuleEffects
---  (R)
--- Effects of this module; `nil` if this is not a module.
item_prototype.module_effects = nil

--- @type string
---  (R)
--- The name of a LuaModuleCategoryPrototype. Used when upgrading modules: Ctrl + click modules into an entity and it
--- will replace lower tier modules of the same category with higher tier modules.
--- 
--- @see LuaModuleCategoryPrototype @
item_prototype.category = nil

--- @type uint
---  (R)
--- Tier of the module inside its category. Used when upgrading modules: Ctrl + click modules into an entity and it
--- will replace lower tier modules with higher tier modules if they have the same category.
item_prototype.tier = nil

--- @type string[]
---  (R)
--- An array of recipe names this module is allowed to work with. Empty when all recipes are allowed.
item_prototype.limitations = {}

--- @type string
---  (R)
--- The limitation message key used when the player attempts to use this modules in some place it's not allowed.
item_prototype.limitation_message_key = nil

--- @type LuaEntityPrototype
---  (R)
--- The straight rail prototype used for this rail planner prototype, or `nil` if this isn't a rail planner prototype.
item_prototype.straight_rail = nil

--- @type LuaEntityPrototype
---  (R)
--- The curved rail prototype used for this rail planner prototype, or `nil` if this isn't a rail planner prototype.
item_prototype.curved_rail = nil

--- @type TriggerItem[]
---  (R)
--- The repair result of this repair tool prototype or `nil` if this isn't a repair tool prototype.
item_prototype.repair_result = {}

--- @type Color
---  (R)
--- The color used when doing normal selection with this selection tool prototype.
item_prototype.selection_border_color = nil

--- @type Color
---  (R)
--- The color used when doing alt selection with this selection tool prototype.
item_prototype.alt_selection_border_color = nil

--- @type SelectionModeFlags
---  (R)
--- Flags that affect which entities will be selected.
item_prototype.selection_mode_flags = nil

--- @type SelectionModeFlags
---  (R)
--- Flags that affect which entities will be selected during alternate selection.
item_prototype.alt_selection_mode_flags = nil

--- @type string
---  (R)
item_prototype.selection_cursor_box_type = nil

--- @type string
---  (R)
item_prototype.alt_selection_cursor_box_type = nil

--- @type boolean
---  (R)
--- If tiles area always included when doing selection with this selection tool prototype.
item_prototype.always_include_tiles = nil

--- @type string
---  (R)
--- The entity filter mode used by this selection tool.
item_prototype.entity_filter_mode = nil

--- @type string
---  (R)
--- The alt entity filter mode used by this selection tool.
item_prototype.alt_entity_filter_mode = nil

--- @type string
---  (R)
--- The tile filter mode used by this selection tool.
item_prototype.tile_filter_mode = nil

--- @type string
---  (R)
--- The alt tile filter mode used by this selection tool.
item_prototype.alt_tile_filter_mode = nil

--- @type table<string, LuaEntityPrototype>
---  (R)
--- The entity filters used by this selection tool indexed by entity name.
item_prototype.entity_filters = nil

--- @type table<string, LuaEntityPrototype>
---  (R)
--- The alt entity filters used by this selection tool indexed by entity name.
item_prototype.alt_entity_filters = nil

--- @type table<string, boolean>
---  (R)
--- The entity type filters used by this selection tool indexed by entity type.
item_prototype.entity_type_filters = nil

--- @type table<string, boolean>
---  (R)
--- The alt entity type filters used by this selection tool indexed by entity type.
item_prototype.alt_entity_type_filters = nil

--- @type table<string, LuaTilePrototype>
---  (R)
--- The tile filters used by this selection tool indexed by tile name.
item_prototype.tile_filters = nil

--- @type table<string, LuaTilePrototype>
---  (R)
--- The alt tile filters used by this selection tool indexed by tile name.
item_prototype.alt_tile_filters = nil

--- @type uint
---  (R)
--- The number of entity filters this deconstruction item has or `nil` if this isn't a deconstruction item prototype.
item_prototype.entity_filter_slots = nil

--- @type uint
---  (R)
--- The number of tile filters this deconstruction item has or `nil` if this isn't a deconstruction item prototype.
item_prototype.tile_filter_slots = nil

--- @type string
---  (R)
--- The durability message key used when displaying the durability of this tool.
item_prototype.durability_description_key = nil

--- @type double
---  (R)
--- The durability of this tool item or `nil` if not a tool item.
item_prototype.durability = nil

--- @type boolean
---  (R)
--- If this tool item has infinite durability. `nil` if not a tool type item.
item_prototype.infinite = nil

--- @type uint
---  (R)
--- How many filters an upgrade item has. `nil` if not a upgrade item.
item_prototype.mapper_count = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
item_prototype.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
item_prototype.object_name = nil



--- Does this prototype have a flag enabled?
--- 
--- @param flag string                  
--- @return boolean
function item_prototype.has_flag(flag)
    flag = nil
    return nil
end


--- Type of this ammo prototype or `nil` if this is not an ammo prototype.
--- 
--- @overload fun(): AmmoType
--- 
--- @param ammo_source_type string | nil (Optional) 
--- @return AmmoType
function item_prototype.get_ammo_type(ammo_source_type)
    ammo_source_type = nil
    return nil
end


--- All methods and properties that this object supports.
--- 
--- @return string
function item_prototype.help()
    return nil
end

