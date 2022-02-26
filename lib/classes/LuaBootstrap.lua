

--- @class LuaBootstrap
--- Entry point for registering event handlers. It is accessible through the global object named `script`.
local bootstrap = {}


--- @type string
---  (R)
--- The name of the mod from the environment this is used in.
bootstrap.mod_name = nil

--- @type table
---  (R)
--- Information about the currently running scenario/campaign/tutorial.
bootstrap.level = nil

--- @type table<string, string>
---  (R)
--- A dictionary listing the names of all currently active mods and mapping them to their version.
bootstrap.active_mods = nil

--- @type string
---  (R)
--- This object's name.
bootstrap.object_name = nil



--- Register a callback to be run on mod initialization. This is only called when a new save game is created or when a
--- save file is loaded that previously didn't contain the mod. During it, the mod gets the chance to set up initial
--- values that it will use for its lifetime. It has full access to LuaGameScript and the `global` table and can change
--- anything about them that it deems appropriate. No other events will be raised for the mod until it has finished
--- this step.
--- 
--- @see LuaGameScript @
--- 
--- @param f fun()                      
function bootstrap.on_init(f)
    f = nil
end


--- Register a function to be run on save load. This is only called for mods that have been part of the save
--- previously, or for players connecting to a running multiplayer session. It gives the mod the opportunity to do some
--- very specific actions, should it need to. Doing anything other than these three will lead to desyncs, which breaks
--- multiplayer and replay functionality. Access to LuaGameScript and LuaRendering is not available. The `global` table
--- can be accessed and is safe to read from, but not write to.
--- The only legitimate uses of this event are these three:
--- - Re-setup metatables as they are not persisted through save-load.
--- - Re-setup conditional event handlers.
--- - Create local references to data stored in the global table.
--- For all other purposes, LuaBootstrap::on_init, LuaBootstrap::on_configuration_changed or migration scripts should
--- be used instead.
--- 
--- @see LuaBootstrap#on_configuration_changed @
--- @see LuaBootstrap#on_init @
--- @see LuaRendering @
--- @see LuaGameScript @
--- 
--- @param f fun()                      
function bootstrap.on_load(f)
    f = nil
end


--- Register a function to be run when mod configuration changes. This is called when the game version or any mod
--- version changes; when any mod is added or removed; or when prototypes or startup mod settings have changed. It
--- allows the mod to make any changes it deems appropriate to both the data structures in its `global` table or to the
--- game state through LuaGameScript.
--- 
--- @see LuaGameScript @
--- 
--- @param f fun(_0: ConfigurationChangedData)
function bootstrap.on_configuration_changed(f)
    f = nil
end


--- Register a handler to run on the specified event(s). Each mod can only register once for every event, as any
--- additional registration will overwrite the previous one. This holds true even if different filters are used for
--- subsequent registrations.
--- 
--- @overload fun(event: defines_events | defines_events[] | string, f: fun(_0: EventData))
--- 
--- @param event defines_events | defines_events[] | string
--- @param f fun(_0: EventData)         
--- @param filters EventFilter[] | nil   (Optional) 
function bootstrap.on_event(event, f, filters)
    event = nil
    f = nil
    filters = {}
end


--- Register a handler to run every nth-tick(s). When the game is on tick 0 it will trigger all registered handlers.
--- 
--- @param tick uint | uint[]           
--- @param f fun(_0: NthTickEventData)  
function bootstrap.on_nth_tick(tick, f)
    tick = nil
    f = nil
end


--- Registers an entity so that after it's destroyed, on_entity_destroyed is called. Once an entity is registered, it
--- stays registered until it is actually destroyed, even through save/load cycles. The registration is global across
--- all mods, meaning once one mod registers an entity, all mods listening to on_entity_destroyed will receive the
--- event when it is destroyed. Registering the same entity multiple times will still only fire the destruction event
--- once, and will return the same registration number.
--- 
--- @see on_entity_destroyed @
--- 
--- @param entity LuaEntity             
--- @return uint64                       The registration number. It is used to identify the entity in the [on_entity_destroyed](on_entity_destroyed) event.
function bootstrap.register_on_entity_destroyed(entity)
    entity = nil
    return nil
end


--- Generate a new, unique event ID that can be used to raise custom events with LuaBootstrap::raise_event.
--- 
--- @see LuaBootstrap#raise_event @
--- 
--- @return uint                         The newly generated event ID.
function bootstrap.generate_event_name()
    return nil
end


--- Find the event handler for an event.
--- 
--- @param event uint                   
--- @return fun(_0: EventData)           Reference to the function currently registered as the handler, if it was found.
function bootstrap.get_event_handler(event)
    event = nil
    return nil
end


--- Gets the mod event order as a string.
--- 
--- @return string
function bootstrap.get_event_order()
    return nil
end


--- Sets the filters for the given event. The filters are only retained when set after the actual event registration,
--- because registering for an event with different or no filters will overwrite previously set ones.
--- 
--- @overload fun(event: uint)
--- 
--- @param event uint                   
--- @param filters EventFilter[] | nil   (Optional) 
function bootstrap.set_event_filter(event, filters)
    event = nil
    filters = {}
end


--- Gets the filters for the given event.
--- 
--- @param event uint                   
--- @return EventFilter[]                The filters or `nil` if none are defined.
function bootstrap.get_event_filter(event)
    event = nil
    return {}
end


--- Raise an event. Only events generated with LuaBootstrap::generate_event_name and the following can be raised:
--- - on_console_chat
--- - on_player_crafted_item
--- - on_player_fast_transferred
--- - on_biter_base_built
--- - on_market_item_purchased
--- - script_raised_built
--- - script_raised_destroy
--- - script_raised_revive
--- - script_raised_set_tiles
--- 
--- @see LuaBootstrap#generate_event_name @
--- @see script_raised_set_tiles @
--- @see script_raised_revive @
--- @see script_raised_destroy @
--- @see script_raised_built @
--- @see on_market_item_purchased @
--- @see on_biter_base_built @
--- @see on_player_fast_transferred @
--- @see on_player_crafted_item @
--- @see on_console_chat @
--- 
--- @param event uint                   
--- @param data table                   
function bootstrap.raise_event(event, data)
    event = nil
    data = nil
end


--- @alias LuaBootstrap_raise_console_chat_p
--- @field player_index uint             The player doing the chatting.
--- @field message string                The chat message to send.

--- May raise the following events:
---  - on_console_chat:
---    @see on_console_chat@
---    Raised instantly.
---    Raised with the provided arguments.
--- 
--- @param params LuaBootstrap_raise_console_chat_p
function bootstrap.raise_console_chat(params)
    params = nil
end


--- @alias LuaBootstrap_raise_player_crafted_item_p
--- @field item_stack LuaItemStack       The item that has been crafted.
--- @field player_index uint             The player doing the crafting.
--- @field recipe LuaRecipe              The recipe used to craft this item.

--- May raise the following events:
---  - on_player_crafted_item:
---    @see on_player_crafted_item@
---    Raised instantly.
---    Raised with the provided arguments.
--- 
--- @param params LuaBootstrap_raise_player_crafted_item_p
function bootstrap.raise_player_crafted_item(params)
    params = nil
end


--- @alias LuaBootstrap_raise_player_fast_transferred_p
--- @field player_index uint             The player transferred from or to.
--- @field entity LuaEntity              The entity transferred from or to.
--- @field from_player boolean           Whether the transfer was from player to entity. If `false`, the transfer was from entity to player.

--- May raise the following events:
---  - on_player_fast_transferred:
---    @see on_player_fast_transferred@
---    Raised instantly.
---    Raised with the provided arguments.
--- 
--- @param params LuaBootstrap_raise_player_fast_transferred_p
function bootstrap.raise_player_fast_transferred(params)
    params = nil
end


--- @alias LuaBootstrap_raise_biter_base_built_p
--- @field entity LuaEntity              The entity that was built.

--- May raise the following events:
---  - on_biter_base_built:
---    @see on_biter_base_built@
---    Raised instantly.
---    Raised with the provided arguments.
--- 
--- @param params LuaBootstrap_raise_biter_base_built_p
function bootstrap.raise_biter_base_built(params)
    params = nil
end


--- @alias LuaBootstrap_raise_market_item_purchased_p
--- @field player_index uint             The player who did the purchasing.
--- @field market LuaEntity              The market entity.
--- @field offer_index uint              The index of the offer purchased.
--- @field count uint                    The amount of offers purchased.

--- May raise the following events:
---  - on_market_item_purchased:
---    @see on_market_item_purchased@
---    Raised instantly.
---    Raised with the provided arguments.
--- 
--- @param params LuaBootstrap_raise_market_item_purchased_p
function bootstrap.raise_market_item_purchased(params)
    params = nil
end


--- @alias LuaBootstrap_raise_script_built_p
--- @field entity LuaEntity              The entity that has been built.

--- May raise the following events:
---  - script_raised_built:
---    @see script_raised_built@
---    Raised instantly.
---    Raised with the provided arguments.
--- 
--- @param params LuaBootstrap_raise_script_built_p
function bootstrap.raise_script_built(params)
    params = nil
end


--- @alias LuaBootstrap_raise_script_destroy_p
--- @field entity LuaEntity              The entity that was destroyed.

--- May raise the following events:
---  - script_raised_destroy:
---    @see script_raised_destroy@
---    Raised instantly.
---    Raised with the provided arguments.
--- 
--- @param params LuaBootstrap_raise_script_destroy_p
function bootstrap.raise_script_destroy(params)
    params = nil
end


--- @alias LuaBootstrap_raise_script_revive_p
--- @field entity LuaEntity              The entity that was revived.
--- @field tags Tags | nil               (Optional)  The tags associated with this entity, if any.

--- May raise the following events:
---  - script_raised_revive:
---    @see script_raised_revive@
---    Raised instantly.
---    Raised with the provided arguments.
--- 
--- @param params LuaBootstrap_raise_script_revive_p
function bootstrap.raise_script_revive(params)
    params = nil
end


--- @alias LuaBootstrap_raise_script_set_tiles_p
--- @field surface_index uint            The surface whose tiles have been changed.
--- @field tiles Tile[]                  The tiles that have been changed.

--- May raise the following events:
---  - script_raised_set_tiles:
---    @see script_raised_set_tiles@
---    Raised instantly.
---    Raised with the provided arguments.
--- 
--- @param params LuaBootstrap_raise_script_set_tiles_p
function bootstrap.raise_script_set_tiles(params)
    params = nil
end

