

--- @class LuaHeatEnergySourcePrototype
--- Prototype of a heat energy source.
local heat_energy_source_prototype = {}


--- @type double
---  (R)
heat_energy_source_prototype.emissions = nil

--- @type boolean
---  (R)
heat_energy_source_prototype.render_no_network_icon = nil

--- @type boolean
---  (R)
heat_energy_source_prototype.render_no_power_icon = nil

--- @type double
---  (R)
heat_energy_source_prototype.max_temperature = nil

--- @type double
---  (R)
heat_energy_source_prototype.default_temperature = nil

--- @type double
---  (R)
heat_energy_source_prototype.specific_heat = nil

--- @type double
---  (R)
heat_energy_source_prototype.max_transfer = nil

--- @type double
---  (R)
heat_energy_source_prototype.min_temperature_gradient = nil

--- @type double
---  (R)
heat_energy_source_prototype.min_working_temperature = nil

--- @type double
---  (R)
heat_energy_source_prototype.minimum_glow_temperature = nil

--- @type HeatConnection[]
---  (R)
heat_energy_source_prototype.connections = {}

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
heat_energy_source_prototype.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
heat_energy_source_prototype.object_name = nil



--- All methods and properties that this object supports.
--- 
--- @return string
function heat_energy_source_prototype.help()
    return nil
end

