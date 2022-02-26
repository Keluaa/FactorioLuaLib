

--- @class LuaCommandProcessor
--- Allows for the registration of custom console commands. Similarly to [event subscriptions](LuaBootstrap::on_event),
--- these don't persist through a save-and-load cycle.
local command_processor = {}


--- @type table<string, LocalisedString>
---  (R)
--- Lists the custom commands registered by scripts through `LuaCommandProcessor`.
command_processor.commands = nil

--- @type table<string, LocalisedString>
---  (R)
--- Lists the built-in commands of the core game. The wiki has an overview of these.
command_processor.game_commands = nil

--- @type string
---  (R)
--- This object's name.
command_processor.object_name = nil



--- Add a custom console command.
--- 
--- @param name string                  
--- @param help LocalisedString         
--- @param function_ fun(_0: CustomCommandData)
function command_processor.add_command(name, help, function_)
    name = nil
    help = nil
    function_ = nil
end


--- Remove a custom console command.
--- 
--- @param name string                  
function command_processor.remove_command(name)
    name = nil
end

