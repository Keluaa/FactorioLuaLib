

--- @class LuaPermissionGroups
--- All permission groups.
local permission_groups = {}


--- @type LuaPermissionGroup[]
---  (R)
--- All of the permission groups.
permission_groups.groups = {}

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
permission_groups.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
permission_groups.object_name = nil



--- Creates a new permission group.
--- 
--- @overload fun(): LuaPermissionGroup
--- 
--- @param name string | nil             (Optional) 
--- @return LuaPermissionGroup           `nil` if the calling player doesn't have permission to make groups.
function permission_groups.create_group(name)
    name = nil
    return nil
end


--- Gets the permission group with the given name or group ID.
--- 
--- @param group string | uint          
--- @return LuaPermissionGroup           `nil` if there is no matching group.
function permission_groups.get_group(group)
    group = nil
    return nil
end


--- All methods and properties that this object supports.
--- 
--- @return string
function permission_groups.help()
    return nil
end

