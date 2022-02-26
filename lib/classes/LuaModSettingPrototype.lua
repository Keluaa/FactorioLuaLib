

--- @class LuaModSettingPrototype
--- Prototype of a mod setting.
local mod_setting_prototype = {}


--- @type string
---  (R)
--- Name of this prototype.
mod_setting_prototype.name = nil

--- @type string
---  (R)
--- Order string of this prototype.
mod_setting_prototype.order = nil

--- @type LocalisedString
---  (R)
mod_setting_prototype.localised_name = nil

--- @type LocalisedString
---  (R)
mod_setting_prototype.localised_description = nil

--- @type string
---  (R)
--- The mod that owns this setting.
mod_setting_prototype.mod = nil

--- @type string
---  (R)
mod_setting_prototype.setting_type = nil

--- @type boolean | double | int | string
---  (R)
--- The default value of this setting.
mod_setting_prototype.default_value = nil

--- @type double | int
---  (R)
--- The minimum value for this setting or `nil` if this setting type doesn't support a minimum.
mod_setting_prototype.minimum_value = nil

--- @type double | int
---  (R)
--- The maximum value for this setting or `nil` if this setting type doesn't support a maximum.
mod_setting_prototype.maximum_value = nil

--- @type string[] | int[] | double[]
---  (R)
--- The allowed values for this setting or `nil` if this setting doesn't use the a fixed set of values.
mod_setting_prototype.allowed_values = nil

--- @type boolean
---  (R)
--- If this string setting allows blank values or `nil` if not a string setting.
mod_setting_prototype.allow_blank = nil

--- @type boolean
---  (R)
--- If this string setting auto-trims values or `nil` if not a string setting.
mod_setting_prototype.auto_trim = nil

--- @type boolean
---  (R)
--- If this setting is hidden from the GUI.
mod_setting_prototype.hidden = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
mod_setting_prototype.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
mod_setting_prototype.object_name = nil



--- All methods and properties that this object supports.
--- 
--- @return string
function mod_setting_prototype.help()
    return nil
end

