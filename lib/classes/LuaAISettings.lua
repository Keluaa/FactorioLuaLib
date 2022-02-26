

--- @class LuaAISettings
--- Collection of settings for overriding default ai behavior.
local ai_settings = {}


--- @type boolean
---  (RW)
--- If enabled, units that repeatedly fail to succeed at commands will be destroyed.
ai_settings.allow_destroy_when_commands_fail = nil

--- @type boolean
---  (RW)
--- If enabled, units that have nothing else to do will attempt to return to a spawner.
ai_settings.allow_try_return_to_spawner = nil

--- @type boolean
---  (RW)
--- If enabled, units will try to separate themselves from nearby friendly units.
ai_settings.do_separation = nil

--- @type int8
---  (RW)
--- The pathing resolution modifier, must be between -8 and 8.
ai_settings.path_resolution_modifier = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
ai_settings.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
ai_settings.object_name = nil



--- All methods and properties that this object supports.
--- @return nil                         
function ai_settings.help()
    return nil
end

