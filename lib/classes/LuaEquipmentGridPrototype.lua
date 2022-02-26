

--- @class LuaEquipmentGridPrototype
--- Prototype of an equipment grid.
local equipment_grid_prototype = {}


--- @type string
---  (R)
--- Name of this prototype.
equipment_grid_prototype.name = nil

--- @type string
---  (R)
--- Order string of this prototype.
equipment_grid_prototype.order = nil

--- @type LocalisedString
---  (R)
equipment_grid_prototype.localised_name = nil

--- @type LocalisedString
---  (R)
equipment_grid_prototype.localised_description = nil

--- @type string[]
---  (R)
--- Equipment category names for the categories that may be inserted into this equipment grid. The grid will accept any
--- equipment that has at least one category in this list.
--- 
--- @see LuaEquipmentPrototype#equipment_categories @
equipment_grid_prototype.equipment_categories = {}

--- @type uint
---  (R)
equipment_grid_prototype.width = nil

--- @type uint
---  (R)
equipment_grid_prototype.height = nil

--- @type boolean
---  (R)
--- If the player can move equipment into or out of this grid.
equipment_grid_prototype.locked = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
equipment_grid_prototype.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
equipment_grid_prototype.object_name = nil



--- All methods and properties that this object supports.
--- @return nil                         
function equipment_grid_prototype.help()
    return nil
end

