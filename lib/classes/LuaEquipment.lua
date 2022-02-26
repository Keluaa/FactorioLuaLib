

--- @class LuaEquipment
--- An item in a LuaEquipmentGrid, for example a fusion reactor placed in one's power armor.
--- An equipment reference becomes invalid once the equipment is removed or the equipment grid it resides in is
--- destroyed.
--- 
--- @see LuaEquipmentGrid @
local equipment = {}


--- @type string
---  (R)
--- Name of this equipment.
equipment.name = nil

--- @type string
---  (R)
--- Type of this equipment.
equipment.type = nil

--- @type EquipmentPosition
---  (R)
--- Position of this equipment in the equipment grid.
equipment.position = nil

--- @type table
---  (R)
--- Shape of this equipment.
equipment.shape = nil

--- @type double
---  (RW)
--- Current shield value of the equipment.
equipment.shield = nil

--- @type double
---  (R)
--- Maximum shield value.
equipment.max_shield = nil

--- @type double
---  (R)
--- Maximum solar power generated.
equipment.max_solar_power = nil

--- @type double
---  (R)
--- Movement speed bonus.
equipment.movement_bonus = nil

--- @type double
---  (R)
--- Energy generated per tick.
equipment.generator_power = nil

--- @type double
---  (RW)
--- Current available energy.
equipment.energy = nil

--- @type double
---  (R)
--- Maximum amount of energy that can be stored in this equipment.
equipment.max_energy = nil

--- @type LuaEquipmentPrototype
---  (R)
equipment.prototype = nil

--- @type LuaBurner
---  (R)
--- The burner energy source for this equipment or `nil` if there isn't one.
equipment.burner = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
equipment.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
equipment.object_name = nil



--- All methods and properties that this object supports.
--- 
--- @return string
function equipment.help()
    return nil
end

