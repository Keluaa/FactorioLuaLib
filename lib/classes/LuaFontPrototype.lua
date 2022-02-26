

--- @class LuaFontPrototype
--- Prototype of a font.
local font_prototype = {}


--- @type string
---  (R)
--- Name of this prototype.
font_prototype.name = nil

--- @type string
---  (R)
font_prototype.from = nil

--- @type int
---  (R)
font_prototype.size = nil

--- @type float
---  (R)
font_prototype.spacing = nil

--- @type boolean
---  (R)
font_prototype.border = nil

--- @type boolean
---  (R)
font_prototype.filtered = nil

--- @type Color
---  (R)
--- The border color or `nil` if not set.
font_prototype.border_color = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
font_prototype.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
font_prototype.object_name = nil



--- All methods and properties that this object supports.
--- 
--- @return string
function font_prototype.help()
    return nil
end

