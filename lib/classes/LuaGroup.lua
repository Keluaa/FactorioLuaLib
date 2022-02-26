

--- @class LuaGroup
--- Item group or subgroup.
local group = {}


--- @type string
---  (R)
group.name = nil

--- @type LocalisedString
---  (R)
--- Localised name of the group.
group.localised_name = nil

--- @type string
---  (R)
group.type = nil

--- @type LuaGroup
---  (R)
--- The parent group if any; `nil` if none.
group.group = nil

--- @type LuaGroup[]
---  (R)
--- Subgroups of this group.
group.subgroups = {}

--- @type string
---  (R)
--- The additional order value used in recipe ordering.
group.order_in_recipe = nil

--- @type string
---  (R)
group.order = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
group.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
group.object_name = nil



--- All methods and properties that this object supports.
--- 
--- @return string
function group.help()
    return nil
end

