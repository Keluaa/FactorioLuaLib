

--- @class LuaInventory
--- A storage of item stacks.
local inventory = {}


--- @type defines_inventory
---  (R)
--- The inventory index this inventory uses, or `nil` if the inventory doesn't have an index.
inventory.index = nil

--- @type LuaEntity
---  (R)
--- The entity that owns this inventory or `nil` if this isn't owned by an entity.
inventory.entity_owner = nil

--- @type LuaPlayer
---  (R)
--- The player that owns this inventory or `nil` if this isn't owned by a player.
inventory.player_owner = nil

--- @type LuaEquipment
---  (R)
--- The equipment that owns this inventory or `nil` if this isn't owned by an equipment.
inventory.equipment_owner = nil

--- @type string
---  (R)
--- The mod that owns this inventory or `nil` if this isn't owned by a mod.
inventory.mod_owner = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
inventory.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
inventory.object_name = nil



--- Make this inventory empty.
--- @return nil                         
function inventory.clear()
    return nil
end


--- Can at least some items be inserted?
--- 
--- @param items ItemStackIdentification
function inventory.can_insert(items)
    items = nil
end


--- Insert items into this inventory.
--- 
--- @param items ItemStackIdentification
function inventory.insert(items)
    items = nil
end


--- Remove items from this inventory.
--- 
--- @param items ItemStackIdentification
function inventory.remove(items)
    items = nil
end


--- Get the number of all or some items in this inventory.
--- 
--- @overload fun()
--- @param item string | nil             (Optional) 
function inventory.get_item_count(item)
    item = nil
end


--- Does this inventory contain nothing?
--- @return nil                         
function inventory.is_empty()
    return nil
end


--- Get counts of all items in this inventory.
--- @return nil                         
function inventory.get_contents()
    return nil
end


--- Does this inventory support a bar? Bar is the draggable red thing, found for example on chests, that limits the
--- portion of the inventory that may be manipulated by machines.
--- @return nil                         
function inventory.supports_bar()
    return nil
end


--- Get the current bar. This is the index at which the red area starts.
--- @return nil                         
function inventory.get_bar()
    return nil
end


--- Set the current bar.
--- 
--- @overload fun()
--- @param bar uint | nil                (Optional) 
function inventory.set_bar(bar)
    bar = nil
end


--- If this inventory supports filters.
--- @return nil                         
function inventory.supports_filters()
    return nil
end


--- If this inventory supports filters and has at least 1 filter set.
--- @return nil                         
function inventory.is_filtered()
    return nil
end


--- If the given inventory slot filter can be set to the given filter.
--- 
--- @param index uint                   
--- @param filter string                
function inventory.can_set_filter(index, filter)
    index = nil
    filter = nil
end


--- Gets the filter for the given item stack index.
--- 
--- @param index uint                   
function inventory.get_filter(index)
    index = nil
end


--- Sets the filter for the given item stack index.
--- 
--- @param index uint                   
--- @param filter string                
function inventory.set_filter(index, filter)
    index = nil
    filter = nil
end


--- Gets the first LuaItemStack in the inventory that matches the given item name.
--- 
--- @param item string                  
function inventory.find_item_stack(item)
    item = nil
end


--- Finds the first empty stack. Filtered slots are excluded unless a filter item is given.
--- 
--- @overload fun()
--- @param item string | nil             (Optional) 
function inventory.find_empty_stack(item)
    item = nil
end


--- Counts the number of empty stacks.
--- 
--- @overload fun()
--- @param include_filtered boolean | nil (Optional) 
function inventory.count_empty_stacks(include_filtered)
    include_filtered = nil
end


--- Gets the number of the given item that can be inserted into this inventory.
--- 
--- @param item string                  
function inventory.get_insertable_count(item)
    item = nil
end


--- Sorts and merges the items in this inventory.
--- @return nil                         
function inventory.sort_and_merge()
    return nil
end


--- Resizes the inventory.
--- 
--- @param size uint16                  
function inventory.resize(size)
    size = nil
end


--- Destroys this inventory.
--- @return nil                         
function inventory.destroy()
    return nil
end


--- All methods and properties that this object supports.
--- @return nil                         
function inventory.help()
    return nil
end

