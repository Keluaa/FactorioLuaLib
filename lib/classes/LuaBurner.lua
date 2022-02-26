

--- @class LuaBurner
--- A reference to the burner energy source owned by a specific LuaEntity or LuaEquipment.
--- 
--- @see LuaEquipment @
--- @see LuaEntity @
local burner = {}


--- @type LuaEntity | LuaEquipment
---  (R)
--- The owner of this burner energy source
burner.owner = nil

--- @type LuaInventory
---  (R)
--- The fuel inventory.
burner.inventory = nil

--- @type LuaInventory
---  (R)
--- The burnt result inventory.
burner.burnt_result_inventory = nil

--- @type double
---  (RW)
--- The current heat (energy) stored in this burner.
burner.heat = nil

--- @type double
---  (R)
--- The maximum heat (maximum energy) that this burner can store.
burner.heat_capacity = nil

--- @type double
---  (RW)
--- The amount of energy left in the currently-burning fuel item.
burner.remaining_burning_fuel = nil

--- @type LuaItemPrototype
---  (RW)
--- The currently burning item, or `nil` if no item is burning.
burner.currently_burning = nil

--- @type table<string, boolean>
---  (R)
--- The fuel categories this burner uses.
burner.fuel_categories = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
burner.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
burner.object_name = nil



--- All methods and properties that this object supports.
--- 
--- @return string
function burner.help()
    return nil
end

