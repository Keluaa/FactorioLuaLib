

--- @class LuaLogisticPoint
--- Logistic point of a particular LuaEntity. A "Logistic point" is the name given for settings and properties used by
--- requester, provider, and storage points in a given logistic network. These "points" don't have to be a logistic
--- container but often are. One other entity that can own several points is the "character" character type entity.
--- 
--- @see LuaEntity @
local logistic_point = {}


--- @type LuaEntity
---  (R)
--- The LuaEntity owner of this LuaLogisticPoint.
--- 
--- @see LuaLogisticPoint @
--- @see LuaEntity @
logistic_point.owner = nil

--- @type LuaLogisticNetwork
---  (R)
logistic_point.logistic_network = nil

--- @type uint
---  (R)
--- The Logistic member index of this logistic point.
logistic_point.logistic_member_index = nil

--- @type LogisticFilter[]
---  (R)
--- The logistic filters for this logistic point or `nil` if this doesn't use logistic filters.
logistic_point.filters = {}

--- @type defines_logistic_mode
---  (R)
--- The logistic mode.
logistic_point.mode = nil

--- @type LuaForce
---  (R)
--- The force of this logistic point.
logistic_point.force = nil

--- @type table<string, uint>
---  (R)
--- Items targeted to be picked up from this logistic point by robots. The attribute is a dictionary mapping the item
--- prototype names to their item counts.
logistic_point.targeted_items_pickup = nil

--- @type table<string, uint>
---  (R)
--- Items targeted to be dropped off into this logistic point by robots. The attribute is a dictionary mapping the item
--- prototype names to their item counts.
logistic_point.targeted_items_deliver = nil

--- @type boolean
---  (R)
--- If this logistic point is using the exact mode. In exact mode robots never over-deliver requests.
logistic_point.exact = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
logistic_point.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
logistic_point.object_name = nil



--- All methods and properties that this object supports.
--- 
--- @return string
function logistic_point.help()
    return nil
end

