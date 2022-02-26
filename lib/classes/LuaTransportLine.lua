

--- @class LuaTransportLine
--- One line on a transport belt.
local transport_line = {}


--- @type LuaEntity
---  (R)
--- The entity this transport line belongs to.
transport_line.owner = nil

--- @type LuaTransportLine[]
---  (R)
--- The transport lines that this transport line outputs items to or an empty table if none.
transport_line.output_lines = {}

--- @type LuaTransportLine[]
---  (R)
--- The transport lines that this transport line is fed by or an empty table if none.
transport_line.input_lines = {}

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
transport_line.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
transport_line.object_name = nil



--- Remove all items from this transport line.
--- 
--- @return nil
function transport_line.clear()
    return nil
end


--- Count some or all items on this line, similar to how LuaInventory::get_item_count does.
--- 
--- @see LuaInventory#get_item_count @
--- 
--- @overload fun(): uint
--- 
--- @param item string | nil             (Optional) 
--- @return uint
function transport_line.get_item_count(item)
    item = nil
    return nil
end


--- Remove some items from this line.
--- 
--- @param items ItemStackIdentification
--- @return uint                         Number of items actually removed.
function transport_line.remove_item(items)
    items = nil
    return nil
end


--- Can an item be inserted at a given position?
--- 
--- @param position float               
--- @return boolean
function transport_line.can_insert_at(position)
    position = nil
    return nil
end


--- Can an item be inserted at the back of this line?
--- 
--- @return boolean
function transport_line.can_insert_at_back()
    return nil
end


--- Insert items at a given position.
--- 
--- @param position float               
--- @param items ItemStackIdentification
--- @return boolean                      Were the items inserted successfully?
function transport_line.insert_at(position, items)
    position = nil
    items = nil
    return nil
end


--- Insert items at the back of this line.
--- 
--- @param items ItemStackIdentification
--- @return boolean                      Were the items inserted successfully?
function transport_line.insert_at_back(items)
    items = nil
    return nil
end


--- Get counts of all items on this line, similar to how LuaInventory::get_contents does.
--- 
--- @see LuaInventory#get_contents @
--- 
--- @return table<string, uint>          The counts, indexed by item names.
function transport_line.get_contents()
    return nil
end


--- Returns whether the associated internal transport line of this line is the same as the others associated internal
--- transport line.
--- 
--- @param other LuaTransportLine       
--- @return boolean
function transport_line.line_equals(other)
    other = nil
    return nil
end


--- All methods and properties that this object supports.
--- 
--- @return string
function transport_line.help()
    return nil
end

