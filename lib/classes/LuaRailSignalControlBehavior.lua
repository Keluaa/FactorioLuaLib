

--- @class LuaRailSignalControlBehavior : LuaControlBehavior
--- Control behavior for rail signals.
local rail_signal_control_behavior = {}


--- @type SignalID
---  (RW)
rail_signal_control_behavior.red_signal = nil

--- @type SignalID
---  (RW)
rail_signal_control_behavior.orange_signal = nil

--- @type SignalID
---  (RW)
rail_signal_control_behavior.green_signal = nil

--- @type boolean
---  (RW)
--- If this will close the rail signal based off the circuit condition.
rail_signal_control_behavior.close_signal = nil

--- @type boolean
---  (RW)
--- If this will read the rail signal state.
rail_signal_control_behavior.read_signal = nil

--- @type CircuitConditionDefinition
---  (RW)
--- The circuit condition when controlling the signal through the circuit network.
rail_signal_control_behavior.circuit_condition = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
rail_signal_control_behavior.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
rail_signal_control_behavior.object_name = nil



--- All methods and properties that this object supports.
--- @return nil                         
function rail_signal_control_behavior.help()
    return nil
end

