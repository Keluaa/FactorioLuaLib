

--- @class LuaVoidEnergySourcePrototype
--- Prototype of a void energy source.
local void_energy_source_prototype = {}


--- @type double
---  (R)
void_energy_source_prototype.emissions = nil

--- @type boolean
---  (R)
void_energy_source_prototype.render_no_network_icon = nil

--- @type boolean
---  (R)
void_energy_source_prototype.render_no_power_icon = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
void_energy_source_prototype.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
void_energy_source_prototype.object_name = nil



--- All methods and properties that this object supports.
--- @return nil                         
function void_energy_source_prototype.help()
    return nil
end

