

--- @class LuaConstantCombinatorControlBehavior : LuaControlBehavior
--- Control behavior for constant combinators.
local constant_combinator_control_behavior = {}


--- @type ConstantCombinatorParameters[] | nil
---  (RW)
--- The constant combinator parameters
constant_combinator_control_behavior.parameters = nil

--- @type boolean
---  (RW)
--- Turns this constant combinator on and off.
constant_combinator_control_behavior.enabled = nil

--- @type uint
---  (R)
--- The number of signals this constant combinator supports
constant_combinator_control_behavior.signals_count = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
constant_combinator_control_behavior.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
constant_combinator_control_behavior.object_name = nil



--- Sets the signal at the given index
--- 
--- @param index uint                   
--- @param signal Signal                
function constant_combinator_control_behavior.set_signal(index, signal)
    index = nil
    signal = nil
end


--- Gets the signal at the given index. Returned Signal will not contain signal if none is set for the index.
--- 
--- @see Signal @
--- 
--- @param index uint                   
function constant_combinator_control_behavior.get_signal(index)
    index = nil
end


--- All methods and properties that this object supports.
--- @return nil                         
function constant_combinator_control_behavior.help()
    return nil
end

