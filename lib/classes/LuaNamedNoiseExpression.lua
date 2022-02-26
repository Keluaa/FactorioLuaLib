

--- @class LuaNamedNoiseExpression
--- Prototype of a named noise expression.
local named_noise_expression = {}


--- @type string
---  (R)
--- Name of this prototype.
named_noise_expression.name = nil

--- @type string
---  (R)
--- Order string of this prototype.
named_noise_expression.order = nil

--- @type LocalisedString
---  (R)
named_noise_expression.localised_name = nil

--- @type LocalisedString
---  (R)
named_noise_expression.localised_description = nil

--- @type string
---  (R)
--- Name of the property that this expression is intended to provide a value for, if any.
named_noise_expression.intended_property = nil

--- @type NoiseExpression
---  (R)
--- The expression itself.
named_noise_expression.expression = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
named_noise_expression.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
named_noise_expression.object_name = nil



--- All methods and properties that this object supports.
--- 
--- @return string
function named_noise_expression.help()
    return nil
end

