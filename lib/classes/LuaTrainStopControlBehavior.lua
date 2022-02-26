

--- @class LuaTrainStopControlBehavior : LuaGenericOnOffControlBehavior
--- Control behavior for train stops.
local train_stop_control_behavior = {}


--- @type boolean
---  (RW)
--- `true` if the train stop should send the circuit network contents to the train to use.
train_stop_control_behavior.send_to_train = nil

--- @type boolean
---  (RW)
--- `true` if the train stop should send the train contents to the circuit network.
train_stop_control_behavior.read_from_train = nil

--- @type boolean
---  (RW)
--- `true` if the train stop should send the stopped train id to the circuit network.
train_stop_control_behavior.read_stopped_train = nil

--- @type boolean
---  (RW)
--- `true` if the trains_limit_signal is used to set a limit of trains incoming for train stop.
train_stop_control_behavior.set_trains_limit = nil

--- @type boolean
---  (RW)
--- `true` if the train stop should send amount of incoming trains to the circuit network.
train_stop_control_behavior.read_trains_count = nil

--- @type boolean
---  (RW)
--- `true` if the train stop is enabled/disabled through the circuit network.
train_stop_control_behavior.enable_disable = nil

--- @type SignalID
---  (RW)
--- The signal that will be sent when using the send-train-id option.
train_stop_control_behavior.stopped_train_signal = nil

--- @type SignalID
---  (RW)
--- The signal that will be sent when using the read-trains-count option.
train_stop_control_behavior.trains_count_signal = nil

--- @type SignalID
---  (RW)
--- The signal to be used by set-trains-limit to limit amount of incoming trains
train_stop_control_behavior.trains_limit_signal = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
train_stop_control_behavior.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
train_stop_control_behavior.object_name = nil



--- All methods and properties that this object supports.
--- 
--- @return string
function train_stop_control_behavior.help()
    return nil
end

