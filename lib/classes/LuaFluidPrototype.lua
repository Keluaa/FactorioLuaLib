

--- @class LuaFluidPrototype
--- Prototype of a fluid.
local fluid_prototype = {}


--- @type string
---  (R)
--- Name of this prototype.
fluid_prototype.name = nil

--- @type LocalisedString
---  (R)
fluid_prototype.localised_name = nil

--- @type LocalisedString
---  (R)
fluid_prototype.localised_description = nil

--- @type double
---  (R)
--- Default temperature of this fluid.
fluid_prototype.default_temperature = nil

--- @type double
---  (R)
--- Maximum temperature this fluid can reach.
fluid_prototype.max_temperature = nil

--- @type double
---  (R)
--- The amount of energy in Joules required to heat one unit of this fluid by 1°C.
fluid_prototype.heat_capacity = nil

--- @type string
---  (R)
--- Order string for this prototype.
fluid_prototype.order = nil

--- @type LuaGroup
---  (R)
--- Group of this prototype.
fluid_prototype.group = nil

--- @type LuaGroup
---  (R)
--- Subgroup of this prototype.
fluid_prototype.subgroup = nil

--- @type Color
---  (R)
fluid_prototype.base_color = nil

--- @type Color
---  (R)
fluid_prototype.flow_color = nil

--- @type double
---  (R)
--- The temperature above which this fluid will be shown as gaseous inside tanks and pipes.
fluid_prototype.gas_temperature = nil

--- @type double
---  (R)
--- A multiplier on the amount of emissions produced when this fluid is burnt in a generator. A value above `1.0`
--- increases emissions and vice versa. The multiplier can't be negative.
fluid_prototype.emissions_multiplier = nil

--- @type double
---  (R)
--- The amount of energy in Joules one unit of this fluid will produce when burnt in a generator. A value of `0` means
--- this fluid can't be used for energy generation. The value can't be negative.
fluid_prototype.fuel_value = nil

--- @type boolean
---  (R)
--- Whether this fluid is hidden from the fluid and signal selectors.
fluid_prototype.hidden = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
fluid_prototype.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
fluid_prototype.object_name = nil



--- All methods and properties that this object supports.
--- 
--- @return string
function fluid_prototype.help()
    return nil
end

