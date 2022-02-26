

--- @class LuaArithmeticCombinatorControlBehavior : LuaCombinatorControlBehavior
--- Control behavior for arithmetic combinators.
local arithmetic_combinator_control_behavior = {}


--- @type ArithmeticCombinatorParameters
---  (RW)
--- The arithmetic combinator parameters.
arithmetic_combinator_control_behavior.parameters = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
arithmetic_combinator_control_behavior.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
arithmetic_combinator_control_behavior.object_name = nil



--- All methods and properties that this object supports.
--- @return nil                         
function arithmetic_combinator_control_behavior.help()
    return nil
end

