

--- @class LuaBurnerPrototype
--- Prototype of a burner energy source.
local burner_prototype = {}


--- @type double
---  (R)
burner_prototype.emissions = nil

--- @type boolean
---  (R)
burner_prototype.render_no_network_icon = nil

--- @type boolean
---  (R)
burner_prototype.render_no_power_icon = nil

--- @type double
---  (R)
burner_prototype.effectivity = nil

--- @type uint
---  (R)
burner_prototype.fuel_inventory_size = nil

--- @type uint
---  (R)
burner_prototype.burnt_inventory_size = nil

--- @type SmokeSource[]
---  (R)
--- The smoke sources for this burner prototype if any.
burner_prototype.smoke = {}

--- @type table
---  (R)
--- The light flicker definition for this burner prototype if any.
burner_prototype.light_flicker = nil

--- @type table<string, boolean>
---  (R)
burner_prototype.fuel_categories = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
burner_prototype.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
burner_prototype.object_name = nil



--- All methods and properties that this object supports.
--- @return nil                         
function burner_prototype.help()
    return nil
end

