

--- @class LuaPermissionGroup
--- A permission group that defines what players in this group are allowed to do.
local permission_group = {}


--- @type string
---  (RW)
--- The name of this group.
permission_group.name = nil

--- @type LuaPlayer[]
---  (R)
--- The players in this group.
permission_group.players = {}

--- @type uint
---  (R)
--- The group ID
permission_group.group_id = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
permission_group.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
permission_group.object_name = nil



--- Adds the given player to this group.
--- 
--- @param player PlayerIdentification  
--- @return boolean                      Whether the player was added.
function permission_group.add_player(player)
    player = nil
    return nil
end


--- Removes the given player from this group.
--- 
--- @param player PlayerIdentification  
--- @return boolean                      Whether the player was removed.
function permission_group.remove_player(player)
    player = nil
    return nil
end


--- Whether this group allows the given action.
--- 
--- @param action defines_input_action  
--- @return boolean
function permission_group.allows_action(action)
    action = nil
    return nil
end


--- Sets whether this group allows the performance the given action.
--- 
--- @param action defines_input_action  
--- @param allow_action boolean         
--- @return boolean                      Whether the value was successfully applied.
function permission_group.set_allows_action(action, allow_action)
    action = nil
    allow_action = nil
    return nil
end


--- Destroys this group.
--- 
--- @return boolean                      Whether the group was successfully destroyed.
function permission_group.destroy()
    return nil
end


--- All methods and properties that this object supports.
--- 
--- @return string
function permission_group.help()
    return nil
end

