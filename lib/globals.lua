
--- This is the main object, through which most of the API is accessed. It is, however, not available inside handlers
--- registered with LuaBootstrap::on_load.
--- 
--- @see LuaBootstrap#on_load @
--- @type LuaGameScript
game = nil


--- Provides an interface for registering event handlers.
--- @type LuaBootstrap
script = nil


--- Allows inter-mod communication by way of providing a repository of interfaces that is shared by all mods.
--- @type LuaRemote
remote = nil


--- Allows registering custom commands for the in-game console accessible via the grave key.
--- @type LuaCommandProcessor
commands = nil


--- Allows reading the current mod settings.
--- @type LuaSettings
settings = nil


--- Allows printing messages to the calling RCON instance if any.
--- @type LuaRCON
rcon = nil


--- Allows rendering of geometric shapes, text and sprites in the game world.
--- @type LuaRendering
rendering = nil


--- The defines table, which contains symbolic constants used throughout the API.
--- @type defines
defines = nil

--- The global table each mod has access to: a table with the name global declared as a global variable that is
--- persisted between map sessions.
--- Only specific data can be saved and loaded using this table:
---  - Basic data: nil, strings, numbers, booleans
---  - Tables, but not meta tables; tables with metatables become plain tables when saved and loaded.
---  - References to builtin Factorio LuaObjects
--- @type table<any, any>
global = {}

