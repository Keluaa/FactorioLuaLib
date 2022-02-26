

--- @class LuaInserterControlBehavior : LuaGenericOnOffControlBehavior
--- Control behavior for inserters.
local inserter_control_behavior = {}


--- @type boolean
---  (RW)
--- `true` if the contents of the inserter hand should be sent to the circuit network
inserter_control_behavior.circuit_read_hand_contents = nil

--- @type defines_control_behavior_inserter_circuit_mode_of_operation
---  (RW)
--- The circuit mode of operations for the inserter.
inserter_control_behavior.circuit_mode_of_operation = nil

--- @type defines_control_behavior_inserter_hand_read_mode
---  (RW)
--- The hand read mode for the inserter.
inserter_control_behavior.circuit_hand_read_mode = nil

--- @type boolean
---  (RW)
--- If the stack size of the inserter is set through the circuit network or not.
inserter_control_behavior.circuit_set_stack_size = nil

--- @type SignalID
---  (RW)
--- The signal used to set the stack size of the inserter.
inserter_control_behavior.circuit_stack_control_signal = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
inserter_control_behavior.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
inserter_control_behavior.object_name = nil



--- All methods and properties that this object supports.
--- @return nil                         
function inserter_control_behavior.help()
    return nil
end

