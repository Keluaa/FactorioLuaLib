

--- @class LuaCombinatorControlBehavior : LuaControlBehavior

local combinator_control_behavior = {}


--- @type Signal[]
---  (R)
--- The circuit network signals sent by this combinator last tick.
combinator_control_behavior.signals_last_tick = {}



--- Gets the value of a specific signal sent by this combinator behavior last tick or `nil` if the signal didn't exist.
--- 
--- @param signal SignalID              
function combinator_control_behavior.get_signal_last_tick(signal)
    signal = nil
end

