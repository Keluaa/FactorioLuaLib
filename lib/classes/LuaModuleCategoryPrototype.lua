

--- @class LuaModuleCategoryPrototype
--- Prototype of a module category.
local module_category_prototype = {}


--- @type string
---  (R)
--- Name of this prototype.
module_category_prototype.name = nil

--- @type string
---  (R)
--- Order string of this prototype.
module_category_prototype.order = nil

--- @type LocalisedString
---  (R)
module_category_prototype.localised_name = nil

--- @type LocalisedString
---  (R)
module_category_prototype.localised_description = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
module_category_prototype.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
module_category_prototype.object_name = nil



--- All methods and properties that this object supports.
--- @return nil                         
function module_category_prototype.help()
    return nil
end

