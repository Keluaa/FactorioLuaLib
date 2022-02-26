

--- @class LuaMiningDrillControlBehavior : LuaGenericOnOffControlBehavior
--- Control behavior for mining drills.
local mining_drill_control_behavior = {}


--- @type boolean
---  (RW)
--- `true` if this drill is enabled or disabled using the logistics or circuit condition.
mining_drill_control_behavior.circuit_enable_disable = nil

--- @type boolean
---  (RW)
--- `true` if this drill should send the resources in the field to the circuit network. Which resources depends on
--- LuaMiningDrillControlBehavior::resource_read_mode
--- 
--- @see LuaMiningDrillControlBehavior#resource_read_mode @
mining_drill_control_behavior.circuit_read_resources = nil

--- @type defines_control_behavior_mining_drill_resource_read_mode
---  (RW)
--- If the mining drill should send just the resources in its area or the entire field it's on to the circuit network.
mining_drill_control_behavior.resource_read_mode = nil

--- @type LuaEntity[]
---  (R)
--- The resource entities that the mining drill will send information about to the circuit network or an empty array.
mining_drill_control_behavior.resource_read_targets = {}

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
mining_drill_control_behavior.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
mining_drill_control_behavior.object_name = nil



--- All methods and properties that this object supports.
--- @return nil                         
function mining_drill_control_behavior.help()
    return nil
end

