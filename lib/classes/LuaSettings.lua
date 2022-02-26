

--- @class LuaSettings
--- Object containing mod settings of three distinct types: `startup`, `global`, and `player`. An instance of
--- LuaSettings is available through the global object named `settings`.
local settings = {}


--- @type LuaCustomTable<string, ModSetting>
---  (R)
--- The startup mod settings, indexed by prototype name.
--- Custom table.
--- @see LuaCustomTable
settings.startup = nil

--- @type LuaCustomTable<string, ModSetting>
---  (R)
--- The current global mod settings, indexed by prototype name.
--- Even though these are marked as read-only, they can be changed by overwriting individual ModSetting tables in the
--- custom table. Mods can only change their own settings. Using the in-game console, all global settings can be
--- changed.
--- 
--- @see ModSetting @
--- Custom table.
--- @see LuaCustomTable
settings.global = nil

--- @type LuaCustomTable<string, ModSetting>
---  (R)
--- The default player mod settings for this map, indexed by prototype name.
--- Even though these are marked as read-only, they can be changed by overwriting individual ModSetting tables in the
--- custom table. Mods can only change their own settings. Using the in-game console, all player settings can be
--- changed.
--- 
--- @see ModSetting @
--- Custom table.
--- @see LuaCustomTable
settings.player = nil

--- @type string
---  (R)
--- This object's name.
settings.object_name = nil



--- Gets the current per-player settings for the given player, indexed by prototype name. Returns the same structure as
--- LuaPlayer::mod_settings.
--- 
--- @see LuaPlayer#mod_settings @
--- 
--- @param player PlayerIdentification  
--- @return LuaCustomTable<string, ModSetting>
function settings.get_player_settings(player)
    player = nil
    return nil
end

