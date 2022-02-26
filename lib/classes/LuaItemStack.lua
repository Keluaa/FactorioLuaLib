

--- @class LuaItemStack
--- A reference to an item and count owned by some external entity.
local item_stack = {}


--- 
--- In most instances this is a simple reference as in: it points at a specific slot in an inventory and not the item
--- in the slot.
--- 
--- In the instance this references an item on a LuaTransportLine the reference is only guaranteed to stay valid (and
--- refer to the same item) as long as nothing changes the transport line.
--- 
--- @see LuaTransportLine @
--- @type boolean
---  (R)
--- Is this valid for reading? Differs from the usual `valid` in that `valid` will be `true` even if the item stack is
--- blank but the entity that holds it is still valid.
item_stack.valid_for_read = nil

--- @type LuaItemPrototype
---  (R)
--- Prototype of the item held in this stack.
item_stack.prototype = nil

--- @type string
---  (R)
--- Prototype name of the item held in this stack.
item_stack.name = nil

--- @type string
---  (R)
--- Type of the item prototype.
item_stack.type = nil

--- @type uint
---  (RW)
--- Number of items in this stack.
item_stack.count = nil

--- @type LuaEquipmentGrid
---  (R)
--- The equipment grid of this item or `nil` if this item doesn't have a grid.
item_stack.grid = nil

--- @type float
---  (RW)
--- How much health the item has, as a number in range [0, 1].
item_stack.health = nil

--- @type double
---  (RW)
--- Durability of the contained item. Automatically capped at the item's maximum durability.
item_stack.durability = nil

--- @type uint
---  (RW)
--- Number of bullets left in the magazine.
item_stack.ammo = nil

--- @type BlueprintSignalIcon[]
---  (RW)
--- Icons of a blueprint item, blueprint book, deconstruction item or upgrade planner. An item that doesn't have icons
--- returns nil on read and throws error on write.
item_stack.blueprint_icons = {}

--- @type TilePosition
---  (RW)
--- The snapping grid size in this blueprint item or nil if snapping is not enabled.
item_stack.blueprint_snap_to_grid = nil

--- @type TilePosition
---  (RW)
--- The offset from the absolute grid or nil if absolute snapping is not enabled.
item_stack.blueprint_position_relative_to_grid = nil

--- @type boolean
---  (RW)
--- If absolute snapping is enabled on this blueprint item.
item_stack.blueprint_absolute_snapping = nil

--- @type string
---  (RW)
--- The current label for this item. Nil when none.
item_stack.label = nil

--- @type Color
---  (RW)
--- The current label color for this item. Nil when none.
item_stack.label_color = nil

--- @type boolean
---  (RW)
--- If the label for this item can be manually changed. When false the label can only be changed through the API.
item_stack.allow_manual_label_change = nil

--- @type table<string, uint>
---  (R)
--- Raw materials required to build this blueprint. Result is a dictionary mapping each item prototype name to the
--- required count.
item_stack.cost_to_build = nil

--- @type boolean
---  (RW)
--- If this item extends the inventory it resides in (provides its contents for counts, crafting, insertion). Only
--- callable on items with inventories.
item_stack.extends_inventory = nil

--- @type string
---  (RW)
--- The insertion mode priority this ItemWithInventory uses when items are inserted into an inventory it resides in.
--- Only callable on items with inventories.
item_stack.prioritize_insertion_mode = nil

--- @type BlueprintItemIcon[]
---  (R)
--- The default icons for a blueprint item.
item_stack.default_icons = {}

--- @type Tags
---  (RW)
item_stack.tags = nil

--- @type LocalisedString
---  (RW)
--- The custom description this item-with-tags. This is shown over the normal item description if this is set to a non-
--- empty value.
item_stack.custom_description = nil

--- @type string[]
---  (RW)
--- The entity filters for this deconstruction item. The attribute is a sparse array with the keys representing the
--- index of the filter. All strings in this array must be entity prototype names that don't have the `"not-
--- deconstructable"` flag set and are either a `cliff` or marked as `minable`.
item_stack.entity_filters = {}

--- @type string[]
---  (RW)
--- The tile filters for this deconstruction item. The attribute is a sparse array with the keys representing the index
--- of the filter. All strings in this array must be tile prototype names.
item_stack.tile_filters = {}

--- @type defines_deconstruction_item_entity_filter_mode
---  (RW)
--- The blacklist/whitelist entity filter mode for this deconstruction item.
item_stack.entity_filter_mode = nil

--- @type defines_deconstruction_item_tile_filter_mode
---  (RW)
--- The blacklist/whitelist tile filter mode for this deconstruction item.
item_stack.tile_filter_mode = nil

--- @type defines_deconstruction_item_tile_selection_mode
---  (RW)
--- The tile selection mode for this deconstruction item.
item_stack.tile_selection_mode = nil

--- @type boolean
---  (RW)
--- If this deconstruction item is set to allow trees and rocks only.
item_stack.trees_and_rocks_only = nil

--- @type uint
---  (R)
--- The number of entity filters this deconstruction item supports.
item_stack.entity_filter_count = nil

--- @type uint
---  (R)
--- The number of tile filters this deconstruction item supports.
item_stack.tile_filter_count = nil

--- @type uint
---  (RW)
--- The active blueprint index for this blueprint book. May be `nil`.
item_stack.active_index = nil

--- @type uint
---  (R)
--- The unique identifier for this item if it has one, `nil` otherwise. Note that this ID stays the same no matter
--- where the item is moved to.
--- Only these types of items have unique IDs:
--- - `"armor"`
--- - `"spidertron-remote"`
--- - `"selection-tool"`
--- - `"copy-paste-tool"`
--- - `"upgrade-item"`
--- - `"deconstruction-item"`
--- - `"blueprint"`
--- - `"blueprint-book"`
--- - `"item-with-entity-data"`
--- - `"item-with-inventory"`
--- - `"item-with-tags"`
item_stack.item_number = nil

--- @type LuaEntity
---  (RW)
--- If this item is a spidertron remote that has a spidertron bound to it, it returns the connected spider-vehicle
--- entity, `nil` otherwise.
item_stack.connected_entity = nil

--- @type boolean
---  (R)
--- If this is a blueprint item.
item_stack.is_blueprint = nil

--- @type boolean
---  (R)
--- If this is a blueprint book item.
item_stack.is_blueprint_book = nil

--- @type boolean
---  (R)
--- If this is a module item.
item_stack.is_module = nil

--- @type boolean
---  (R)
--- If this is a tool item.
item_stack.is_tool = nil

--- @type boolean
---  (R)
--- If this is a mining tool item.
item_stack.is_mining_tool = nil

--- @type boolean
---  (R)
--- If this is an armor item.
item_stack.is_armor = nil

--- @type boolean
---  (R)
--- If this is a repair tool item.
item_stack.is_repair_tool = nil

--- @type boolean
---  (R)
--- If this is an item with label item.
item_stack.is_item_with_label = nil

--- @type boolean
---  (R)
--- If this is an item with inventory item.
item_stack.is_item_with_inventory = nil

--- @type boolean
---  (R)
--- If this is an item with entity data item.
item_stack.is_item_with_entity_data = nil

--- @type boolean
---  (R)
--- If this is a selection tool item.
item_stack.is_selection_tool = nil

--- @type boolean
---  (R)
--- If this is an item with tags item.
item_stack.is_item_with_tags = nil

--- @type boolean
---  (R)
--- If this is a deconstruction tool item.
item_stack.is_deconstruction_item = nil

--- @type boolean
---  (R)
--- If this is a upgrade item.
item_stack.is_upgrade_item = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
item_stack.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
item_stack.object_name = nil



--- Is this blueprint item setup? I.e. is it a non-empty blueprint?
--- @return nil                         
function item_stack.is_blueprint_setup()
    return nil
end


--- The entities in this blueprint.
--- @return nil                         
function item_stack.get_blueprint_entities()
    return nil
end


--- Set new entities to be a part of this blueprint.
--- 
--- @param entities BlueprintEntity[]   
function item_stack.set_blueprint_entities(entities)
    entities = {}
end


--- Add ammo to this ammo item.
--- 
--- @param amount float                 
function item_stack.add_ammo(amount)
    amount = nil
end


--- Remove ammo from this ammo item.
--- 
--- @param amount float                 
function item_stack.drain_ammo(amount)
    amount = nil
end


--- Add durability to this tool item.
--- 
--- @param amount double                
function item_stack.add_durability(amount)
    amount = nil
end


--- Remove durability from this tool item.
--- 
--- @param amount double                
function item_stack.drain_durability(amount)
    amount = nil
end


--- Would a call to LuaItemStack::set_stack succeed?
--- 
--- @see LuaItemStack#set_stack @
--- 
--- @overload fun()
--- @param stack ItemStackIdentification | nil (Optional) 
function item_stack.can_set_stack(stack)
    stack = nil
end


--- Set this item stack to another item stack.
--- 
--- @overload fun()
--- @param stack ItemStackIdentification | nil (Optional) 
function item_stack.set_stack(stack)
    stack = nil
end


--- Transfers the given item stack into this item stack.
--- 
--- @param stack ItemStackIdentification
function item_stack.transfer_stack(stack)
    stack = nil
end


--- Export a supported item (blueprint, blueprint-book, deconstruction-planner, upgrade-planner, item-with-tags) to a
--- string.
--- @return nil                         
function item_stack.export_stack()
    return nil
end


--- Import a supported item (blueprint, blueprint-book, deconstruction-planner, upgrade-planner, item-with-tags) from a
--- string.
--- 
--- @param data string                  
function item_stack.import_stack(data)
    data = nil
end


--- Swaps this item stack with the given item stack if allowed.
--- 
--- @param stack LuaItemStack           
function item_stack.swap_stack(stack)
    stack = nil
end


--- Clear this item stack.
--- @return nil                         
function item_stack.clear()
    return nil
end


--- A list of the tiles in this blueprint.
--- @return nil                         
function item_stack.get_blueprint_tiles()
    return nil
end


--- Set specific tiles in this blueprint.
--- 
--- @param tiles Tile[]                 
function item_stack.set_blueprint_tiles(tiles)
    tiles = {}
end


--- Access the inner inventory of an item.
--- 
--- @param inventory defines_inventory  
function item_stack.get_inventory(inventory)
    inventory = nil
end


--- @alias LuaItemStack_build_blueprint_p
--- @field surface SurfaceIdentification Surface to build on
--- @field force ForceIdentification     Force to use for the building
--- @field position MapPosition          The position to build at
--- @field force_build boolean | nil     (Optional)  When true, anything that can be built is else nothing is built if any one thing can't be built
--- @field direction defines_direction | nil (Optional)  The direction to use when building
--- @field skip_fog_of_war boolean | nil (Optional)  If chunks covered by fog-of-war are skipped.
--- @field by_player PlayerIdentification | nil (Optional)  The player to use if any. If provided [defines.events.on_built_entity](defines.events.on_built_entity) will also be fired on successful entity creation.
--- @field raise_built boolean | nil     (Optional)  If true; [defines.events.script_raised_built](defines.events.script_raised_built) will be fired on successful entity creation. Note: this is ignored if by_player is provided.

--- @param params LuaItemStack_build_blueprint_p
function item_stack.build_blueprint(params)
    params = nil
end


--- @alias LuaItemStack_deconstruct_area_p
--- @field surface SurfaceIdentification Surface to deconstruct on
--- @field force ForceIdentification     Force to use for the deconstruction
--- @field area BoundingBox              The area to deconstruct
--- @field skip_fog_of_war boolean | nil (Optional)  If chunks covered by fog-of-war are skipped.
--- @field by_player PlayerIdentification | nil (Optional)  The player to use if any.

--- Deconstruct the given area with this deconstruction item.
--- 
--- @param params LuaItemStack_deconstruct_area_p
function item_stack.deconstruct_area(params)
    params = nil
end


--- @alias LuaItemStack_cancel_deconstruct_area_p
--- @field surface SurfaceIdentification Surface to cancel deconstruct on
--- @field force ForceIdentification     Force to use for canceling deconstruction
--- @field area BoundingBox              The area to deconstruct
--- @field skip_fog_of_war boolean | nil (Optional)  If chunks covered by fog-of-war are skipped.
--- @field by_player PlayerIdentification | nil (Optional)  The player to use if any.

--- Cancel deconstruct the given area with this deconstruction item.
--- 
--- @param params LuaItemStack_cancel_deconstruct_area_p
function item_stack.cancel_deconstruct_area(params)
    params = nil
end


--- @alias LuaItemStack_create_blueprint_p
--- @field surface SurfaceIdentification Surface to create from
--- @field force ForceIdentification     Force to use for the creation
--- @field area BoundingBox              The bounding box
--- @field always_include_tiles boolean | nil (Optional)  When true, blueprintable tiles are always included in the blueprint. When false they're only included if no entities exist in the setup area.
--- @field include_entities boolean | nil (Optional)  When true, entities are included in the blueprint. Defaults to true.
--- @field include_modules boolean | nil (Optional)  When true, modules are included in the blueprint. Defaults to true.
--- @field include_station_names boolean | nil (Optional)  When true, station names are included in the blueprint. Defaults to false.
--- @field include_trains boolean | nil  (Optional)  When true, trains are included in the blueprint. Defaults to false.
--- @field include_fuel boolean | nil    (Optional)  When true, train fuel is included in the blueprint, Defaults to true.

--- Sets up this blueprint using the found blueprintable entities/tiles on the surface.
--- 
--- @param params LuaItemStack_create_blueprint_p
function item_stack.create_blueprint(params)
    params = nil
end


--- Gets the tag with the given name or returns `nil` if it doesn't exist.
--- 
--- @param tag_name string              
function item_stack.get_tag(tag_name)
    tag_name = nil
end


--- Sets the tag with the given name and value.
--- 
--- @param tag_name string              
--- @param tag AnyBasic                 
function item_stack.set_tag(tag_name, tag)
    tag_name = nil
    tag = nil
end


--- Removes a tag with the given name.
--- 
--- @param tag string                   
function item_stack.remove_tag(tag)
    tag = nil
end


--- Clears this blueprint item.
--- @return nil                         
function item_stack.clear_blueprint()
    return nil
end


--- Gets the entity filter at the given index for this deconstruction item.
--- 
--- @param index uint                   
function item_stack.get_entity_filter(index)
    index = nil
end


--- Sets the entity filter at the given index for this deconstruction item.
--- 
--- @param index uint                   
--- @param filter string | LuaEntityPrototype | LuaEntity
function item_stack.set_entity_filter(index, filter)
    index = nil
    filter = nil
end


--- Gets the tile filter at the given index for this deconstruction item.
--- 
--- @param index uint                   
function item_stack.get_tile_filter(index)
    index = nil
end


--- Sets the tile filter at the given index for this deconstruction item.
--- 
--- @param index uint                   
--- @param filter string | LuaTilePrototype | LuaTile
function item_stack.set_tile_filter(index, filter)
    index = nil
    filter = nil
end


--- Clears all settings/filters on this deconstruction item resetting it to default values.
--- @return nil                         
function item_stack.clear_deconstruction_item()
    return nil
end


--- Clears all settings/filters on this upgrade item resetting it to default values.
--- @return nil                         
function item_stack.clear_upgrade_item()
    return nil
end


--- Gets the filter at the given index for this upgrade item.
--- 
--- @param index uint                   
--- @param type string                  
function item_stack.get_mapper(index, type)
    index = nil
    type = nil
end


--- Sets the module filter at the given index for this upgrade item.
--- 
--- @param index uint                   
--- @param type string                  
--- @param filter UpgradeFilter         
function item_stack.set_mapper(index, type, filter)
    index = nil
    type = nil
    filter = nil
end


--- Gets the number of entities in this blueprint item.
--- @return nil                         
function item_stack.get_blueprint_entity_count()
    return nil
end


--- Gets the tags for the given blueprint entity index in this blueprint item.
--- 
--- @param index uint                   
function item_stack.get_blueprint_entity_tags(index)
    index = nil
end


--- Sets the tags on the given blueprint entity index in this blueprint item.
--- 
--- @param index uint                   
--- @param tags Tags                    
function item_stack.set_blueprint_entity_tags(index, tags)
    index = nil
    tags = nil
end


--- Gets the given tag on the given blueprint entity index in this blueprint item.
--- 
--- @param index uint                   
--- @param tag string                   
function item_stack.get_blueprint_entity_tag(index, tag)
    index = nil
    tag = nil
end


--- Sets the given tag on the given blueprint entity index in this blueprint item.
--- 
--- @param index uint                   
--- @param tag string                   
--- @param value AnyBasic               
function item_stack.set_blueprint_entity_tag(index, tag, value)
    index = nil
    tag = nil
    value = nil
end


--- Creates the equipment grid for this item if it doesn't exist and this is an item-with-entity-data that supports
--- equipment grids.
--- @return nil                         
function item_stack.create_grid()
    return nil
end


--- All methods and properties that this object supports.
--- @return nil                         
function item_stack.help()
    return nil
end

