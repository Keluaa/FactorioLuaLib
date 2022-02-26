

--- @class LuaGenericOnOffControlBehavior : LuaControlBehavior
--- An abstract base class for behaviors that support switching the entity on or off based on some condition.
local generic_on_off_control_behavior = {}


--- @type boolean
---  (R)
--- If the entity is currently disabled because of the control behavior.
generic_on_off_control_behavior.disabled = nil

--- @type CircuitConditionDefinition
---  (RW)
--- The circuit condition.
generic_on_off_control_behavior.circuit_condition = nil

--- @type CircuitConditionDefinition
---  (RW)
--- The logistic condition.
generic_on_off_control_behavior.logistic_condition = nil

--- @type boolean
---  (RW)
--- `true` if this should connect to the logistic network.
generic_on_off_control_behavior.connect_to_logistic_network = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
generic_on_off_control_behavior.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
generic_on_off_control_behavior.object_name = nil



--- All methods and properties that this object supports.
--- @return nil                         
function generic_on_off_control_behavior.help()
    return nil
end

