

--- @class LuaPlayer : LuaControl
--- A player in the game. Pay attention that a player may or may not have a character, which is the LuaEntity of the
--- little guy running around the world doing things.
--- 
--- @see LuaEntity @
local player = {}


--- @type LuaEntity
---  (RW)
--- The character attached to this player, or `nil` if no character.
player.character = nil

--- @type LuaEntity
---  (R)
--- When in a cutscene; the character this player would be using once the cutscene is over.
player.cutscene_character = nil

--- @type uint
---  (R)
--- This player's index in LuaGameScript::players.
--- 
--- @see LuaGameScript#players @
player.index = nil

--- @type LuaGui
---  (R)
player.gui = nil

--- @type boolean
---  (R)
--- `true` if the player opened itself. I.e. if they opened the character or god-controller GUI.
player.opened_self = nil

--- @type defines_controllers
---  (R)
player.controller_type = nil

--- @type defines_controllers
---  (R)
--- The stashed controller type or `nil` if no controller is stashed.
player.stashed_controller_type = nil

--- @type GameViewSettings
---  (RW)
--- The player's game view settings.
player.game_view_settings = nil

--- @type boolean
---  (RW)
--- `true` if the minimap is visible.
player.minimap_enabled = nil

--- @type Color
---  (RW)
--- The color associated with the player. This will be used to tint the player's character as well as their buildings
--- and vehicles.
player.color = nil

--- @type Color
---  (RW)
--- The color used when this player talks in game.
player.chat_color = nil

--- @type string
---  (R)
--- The player's username.
player.name = nil

--- @type string
---  (RW)
--- The tag that is shown after the player in chat and on the map.
player.tag = nil

--- @type boolean
---  (R)
--- `true` if the player is currently connected to the game.
player.connected = nil

--- @type boolean
---  (RW)
--- `true` if the player is an admin.
player.admin = nil

--- @type LuaEntity
---  (R)
--- The source entity used during entity settings copy-paste if any.
--- `nil` if there isn't currently a source entity.
player.entity_copy_source = nil

--- @type uint
---  (R)
--- How many ticks since the last action of this player
player.afk_time = nil

--- @type uint
---  (R)
--- How many ticks did this player spend playing this save (all sessions combined)
player.online_time = nil

--- @type uint
---  (R)
--- At what tick this player was last online.
player.last_online = nil

--- @type LuaPermissionGroup
---  (RW)
--- The permission group this player is part of or `nil` if not part of any group.
player.permission_group = nil

--- @type LuaCustomTable<string, ModSetting>
---  (R)
--- Gets the current per-player settings for the this player, indexed by prototype name. Returns the same structure as
--- LuaSettings::get_player_settings.
--- 
--- @see LuaSettings#get_player_settings @
--- Custom table.
--- @see LuaCustomTable
player.mod_settings = nil

--- @type uint
---  (RW)
--- The number of ticks until this player will respawn or `nil` if not waiting to respawn.
player.ticks_to_respawn = nil

--- @type DisplayResolution
---  (R)
--- The display resolution for this player.
player.display_resolution = nil

--- @type double
---  (R)
--- The display scale for this player.
player.display_scale = nil

--- @type LuaItemStack
---  (R)
--- The item stack containing a blueprint to be setup.
player.blueprint_to_setup = nil

--- @type defines_render_mode
---  (R)
--- The render mode of the player, like map or zoom to world. The render mode can be set using LuaPlayer::open_map,
--- LuaPlayer::zoom_to_world and LuaPlayer::close_map.
--- 
--- @see LuaPlayer#close_map @
--- @see LuaPlayer#zoom_to_world @
--- @see LuaPlayer#open_map @
player.render_mode = nil

--- @type boolean
---  (RW)
--- If `true`, zoom-to-world noise effect will be disabled and environmental sounds will be based on zoom-to-world view
--- instead of position of player's character.
player.spectator = nil

--- @type boolean
---  (RW)
--- If `true`, circle and name of given player is rendered on the map/chart.
player.show_on_map = nil

--- @type boolean
---  (RW)
--- If items not included in this map editor infinity inventory filters should be removed.
player.remove_unfiltered_items = nil

--- @type InfinityInventoryFilter[]
---  (RW)
--- The filters for this map editor infinity inventory settings.
player.infinity_inventory_filters = {}

--- @type boolean
---  (R)
--- If the main inventory will be auto sorted.
player.auto_sort_main_inventory = nil

--- @type ItemStackLocation
---  (RW)
--- The original location of the item in the cursor, marked with a hand. When writing, the specified inventory slot
--- must be empty and the cursor stack must not be empty.
player.hand_location = nil

--- @type double
---  (W)
--- The player's zoom-level.
player.zoom = nil

--- @type MapViewSettings
---  (W)
--- The player's map view settings. To write to this, use a table containing the fields that should be changed.
player.map_view_settings = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
player.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
player.object_name = nil



--- Setup the screen to be shown when the game is finished.
--- 
--- @overload fun(message: LocalisedString)
--- 
--- @param message LocalisedString      
--- @param file string | nil             (Optional) 
function player.set_ending_screen_data(message, file)
    message = nil
    file = nil
end


--- Print text to the chat console.
--- 
--- @overload fun(message: LocalisedString)
--- 
--- @param message LocalisedString      
--- @param color Color | nil             (Optional) 
function player.print(message, color)
    message = nil
    color = nil
end


--- Clear the chat console.
--- 
--- @return nil
function player.clear_console()
    return nil
end


--- Get the current goal description, as a localised string.
--- 
--- @return LocalisedString
function player.get_goal_description()
    return nil
end


--- Set the text in the goal window (top left).
--- 
--- @overload fun()
--- @overload fun(text: LocalisedString)
--- 
--- @param text LocalisedString | nil    (Optional) 
--- @param only_update boolean | nil     (Optional) 
function player.set_goal_description(text, only_update)
    text = nil
    only_update = nil
end


--- @alias LuaPlayer_set_controller_p
--- @field type defines_controllers      Which controller to use.
--- @field character LuaEntity | nil     (Optional)  Entity to control. Mandatory when `type` is [defines.controllers.character](defines.controllers.character), ignored otherwise.
--- @field waypoints CutsceneWaypoint | nil (Optional)  List of waypoints for the cutscene controller. This parameter is mandatory when `type` is [defines.controllers.cutscene](defines.controllers.cutscene).
--- @field start_position MapPosition | nil (Optional)  If specified and `type` is [defines.controllers.cutscene](defines.controllers.cutscene), the cutscene will start at this position. If not given the start position will be the player position.
--- @field start_zoom double | nil       (Optional)  If specified and `type` is [defines.controllers.cutscene](defines.controllers.cutscene), the cutscene will start at this zoom level. If not given the start zoom will be the players zoom.
--- @field final_transition_time uint | nil (Optional)  If specified and `type` is [defines.controllers.cutscene](defines.controllers.cutscene), it is the time in ticks it will take for the camera to pan from the final waypoint back to the starting position. If not given the camera will not pan back to the start position/zoom.
--- @field chart_mode_cutoff double | nil (Optional)  If specified and `type` is [defines.controllers.cutscene](defines.controllers.cutscene), the game will switch to chart-mode (map zoomed out) rendering when the zoom level is less than this value.

--- Set the controller type of the player.
--- 
--- @param params LuaPlayer_set_controller_p
function player.set_controller(params)
    params = nil
end


--- @alias LuaPlayer_drag_wire_p
--- @field position MapPosition          Position at which cursor was clicked. Used only to decide which side of arithmetic combinator, decider combinator or power switch is to be connected. Entity itself to be connected is based on the player's selected entity.

--- Start/end wire dragging at the specified location, wire type is based on the cursor contents
--- 
--- @param params LuaPlayer_drag_wire_p 
--- @return boolean                      `true` if the action did something
function player.drag_wire(params)
    params = nil
    return nil
end


--- Disable recipe groups.
--- 
--- @return nil
function player.disable_recipe_groups()
    return nil
end


--- Enable recipe groups.
--- 
--- @return nil
function player.enable_recipe_groups()
    return nil
end


--- Disable recipe subgroups.
--- 
--- @return nil
function player.disable_recipe_subgroups()
    return nil
end


--- Enable recipe subgroups.
--- 
--- @return nil
function player.enable_recipe_subgroups()
    return nil
end


--- Print entity statistics to the player's console.
--- 
--- @overload fun()
--- 
--- @param entities string[] | nil       (Optional) 
function player.print_entity_statistics(entities)
    entities = {}
end


--- Print construction robot job counts to the players console.
--- 
--- @return nil
function player.print_robot_jobs()
    return nil
end


--- Print LuaObject counts per mod.
--- 
--- @return nil
function player.print_lua_object_statistics()
    return nil
end


--- Logs a dictionary of chunks -> active entities for the surface this player is on.
--- 
--- @return nil
function player.log_active_entity_chunk_counts()
    return nil
end


--- Logs a dictionary of active entities -> count for the surface this player is on.
--- 
--- @return nil
function player.log_active_entity_counts()
    return nil
end


--- Unlock the achievements of the given player. This has any effect only when this is the local player, the
--- achievement isn't unlocked so far and the achievement is of the type "achievement".
--- 
--- @param name string                  
function player.unlock_achievement(name)
    name = nil
end


--- Invokes the "clear cursor" action on the player as if the user pressed it.
--- 
--- @return boolean                      Whether the cursor is now empty.
function player.clear_cursor()
    return nil
end


--- Creates and attaches a character entity to this player.
--- 
--- @overload fun(): boolean
--- 
--- @param character string | nil        (Optional) 
--- @return boolean                      Whether the character was created.
function player.create_character(character)
    character = nil
    return nil
end


--- Adds an alert to this player for the given entity of the given alert type.
--- 
--- @param entity LuaEntity             
--- @param type defines_alert_type      
function player.add_alert(entity, type)
    entity = nil
    type = nil
end


--- Adds a custom alert to this player.
--- 
--- @param entity LuaEntity             
--- @param icon SignalID                
--- @param message LocalisedString      
--- @param show_on_map boolean          
function player.add_custom_alert(entity, icon, message, show_on_map)
    entity = nil
    icon = nil
    message = nil
    show_on_map = nil
end


--- @alias LuaPlayer_remove_alert_p
--- @field entity LuaEntity | nil        (Optional)  
--- @field prototype LuaEntityPrototype | nil (Optional)  
--- @field position MapPosition | nil    (Optional)  
--- @field type defines_alert_type | nil (Optional)  
--- @field surface SurfaceIdentification | nil (Optional)  
--- @field icon SignalID | nil           (Optional)  
--- @field message LocalisedString | nil (Optional)  

--- Removes all alerts matching the given filters or if an empty filters table is given all alerts are removed.
--- 
--- @param params LuaPlayer_remove_alert_p
function player.remove_alert(params)
    params = nil
end


--- @alias LuaPlayer_get_alerts_p
--- @field entity LuaEntity | nil        (Optional)  
--- @field prototype LuaEntityPrototype | nil (Optional)  
--- @field position MapPosition | nil    (Optional)  
--- @field type defines_alert_type | nil (Optional)  
--- @field surface SurfaceIdentification | nil (Optional)  

--- Get all alerts matching the given filters, or all alerts if no filters are given.
--- 
--- @param params LuaPlayer_get_alerts_p
--- @return table<uint, table<defines_alert_type, Alert[]>> A mapping of surface index to an array of arrays of [alerts](Alert) indexed by the [alert type](defines.alert_type).
function player.get_alerts(params)
    params = nil
    return nil
end


--- Mutes alerts for the given alert category.
--- 
--- @param alert_type defines_alert_type
--- @return boolean                      Whether the alert type was muted (false if it was already muted).
function player.mute_alert(alert_type)
    alert_type = nil
    return nil
end


--- Unmutes alerts for the given alert category.
--- 
--- @param alert_type defines_alert_type
--- @return boolean                      Whether the alert type was unmuted (false if it was wasn't muted).
function player.unmute_alert(alert_type)
    alert_type = nil
    return nil
end


--- If the given alert type is currently muted.
--- 
--- @param alert_type defines_alert_type
--- @return boolean
function player.is_alert_muted(alert_type)
    alert_type = nil
    return nil
end


--- Enables alerts for the given alert category.
--- 
--- @param alert_type defines_alert_type
--- @return boolean                      Whether the alert type was enabled (false if it was already enabled).
function player.enable_alert(alert_type)
    alert_type = nil
    return nil
end


--- Disables alerts for the given alert category.
--- 
--- @param alert_type defines_alert_type
--- @return boolean                      Whether the alert type was disabled (false if it was already disabled).
function player.disable_alert(alert_type)
    alert_type = nil
    return nil
end


--- If the given alert type is currently enabled.
--- 
--- @param alert_type defines_alert_type
--- @return boolean
function player.is_alert_enabled(alert_type)
    alert_type = nil
    return nil
end


--- Invokes the "smart pipette" action on the player as if the user pressed it.
--- 
--- May raise the following events:
---  - on_player_pipette:
---    @see on_player_pipette@
---    Raised instantly, conditionally.
---    Raised if the entity was successfully pipetted.
--- 
--- @param entity string | LuaEntity | LuaEntityPrototype
--- @return boolean                      Whether the smart pipette found something to place.
function player.pipette_entity(entity)
    entity = nil
    return nil
end


--- @alias LuaPlayer_can_place_entity_p
--- @field name string                   Name of the entity to check
--- @field position MapPosition          Where the entity would be placed
--- @field direction defines_direction | nil (Optional)  Direction the entity would be placed

--- Checks if this player can build the give entity at the given location on the surface the player is on.
--- 
--- @param params LuaPlayer_can_place_entity_p
--- @return boolean
function player.can_place_entity(params)
    params = nil
    return nil
end


--- @alias LuaPlayer_can_build_from_cursor_p
--- @field position MapPosition          Where the entity would be placed
--- @field direction defines_direction | nil (Optional)  Direction the entity would be placed
--- @field alt boolean | nil             (Optional)  If alt build should be used instead of normal build. Defaults to normal.
--- @field terrain_building_size uint | nil (Optional)  The size for building terrain if building terrain. Defaults to 2.
--- @field skip_fog_of_war boolean | nil (Optional)  If chunks covered by fog-of-war are skipped.

--- Checks if this player can build what ever is in the cursor on the surface the player is on.
--- 
--- May raise the following events:
---  - on_pre_build:
---    @see on_pre_build@
---    Raised instantly, conditionally.
---    Raised if the cursor was successfully built.
---  - on_built_entity:
---    @see on_built_entity@
---    Raised instantly, conditionally.
---    Raised if the cursor was successfully built.
--- 
--- @param params LuaPlayer_can_build_from_cursor_p
--- @return boolean
function player.can_build_from_cursor(params)
    params = nil
    return nil
end


--- @alias LuaPlayer_build_from_cursor_p
--- @field position MapPosition          Where the entity would be placed
--- @field direction defines_direction | nil (Optional)  Direction the entity would be placed
--- @field alt boolean | nil             (Optional)  If alt build should be used instead of normal build. Defaults to normal.
--- @field terrain_building_size uint | nil (Optional)  The size for building terrain if building terrain. Defaults to 2.
--- @field skip_fog_of_war boolean | nil (Optional)  If chunks covered by fog-of-war are skipped.

--- Builds what ever is in the cursor on the surface the player is on.
--- 
--- @param params LuaPlayer_build_from_cursor_p
function player.build_from_cursor(params)
    params = nil
end


--- Uses the current item in the cursor if it's a capsule or does nothing if not.
--- 
--- @param position MapPosition         
function player.use_from_cursor(position)
    position = nil
end


--- @alias LuaPlayer_play_sound_p
--- @field path SoundPath                The sound to play.
--- @field position MapPosition | nil    (Optional)  Where the sound should be played. If not given, it's played at the current position of the player.
--- @field volume_modifier double | nil  (Optional)  The volume of the sound to play. Must be between 0 and 1 inclusive.
--- @field override_sound_type SoundType | nil (Optional)  The volume mixer to play the sound through. Defaults to the default mixer for the given sound type.

--- Play a sound for this player.
--- 
--- @param params LuaPlayer_play_sound_p
function player.play_sound(params)
    params = nil
end


--- The characters associated with this player.
--- 
--- @return LuaEntity[]
function player.get_associated_characters()
    return {}
end


--- Associates a character with this player.
--- 
--- @param character LuaEntity          
function player.associate_character(character)
    character = nil
end


--- Disassociates a character from this player. This is functionally the same as setting LuaEntity::associated_player
--- to `nil`.
--- 
--- @see LuaEntity#associated_player @
--- 
--- @param character LuaEntity          
function player.disassociate_character(character)
    character = nil
end


--- @alias LuaPlayer_create_local_flying_text_p
--- @field text LocalisedString          The flying text to show.
--- @field position MapPosition | nil    (Optional)  The location on the map at which to show the flying text.
--- @field create_at_cursor boolean | nil (Optional)  If `true`, the flying text is created at the player's cursor. Defaults to `false`.
--- @field color Color | nil             (Optional)  The color of the flying text. Defaults to white text.
--- @field time_to_live uint | nil       (Optional)  The amount of ticks that the flying text will be shown for. Defaults to `80`.
--- @field speed double | nil            (Optional)  The speed at which the text rises upwards in tiles/second. Can't be a negative value.

--- Spawn flying text that is only visible to this player. Either `position` or `create_at_cursor` are required. When
--- `create_at_cursor` is `true`, all parameters other than `text` are ignored.
--- 
--- @param params LuaPlayer_create_local_flying_text_p
function player.create_local_flying_text(params)
    params = nil
end


--- Gets the quick bar filter for the given slot or `nil`.
--- 
--- @param index uint                   
--- @return LuaItemPrototype
function player.get_quick_bar_slot(index)
    index = nil
    return nil
end


--- Sets the quick bar filter for the given slot.
--- 
--- @param index uint                   
--- @param filter string | LuaItemPrototype | LuaItemStack
function player.set_quick_bar_slot(index, filter)
    index = nil
    filter = nil
end


--- Gets which quick bar page is being used for the given screen page or `nil` if not known.
--- 
--- @param index uint                   
--- @return uint8
function player.get_active_quick_bar_page(index)
    index = nil
    return nil
end


--- Sets which quick bar page is being used for the given screen page.
--- 
--- @param screen_index uint            
--- @param page_index uint              
function player.set_active_quick_bar_page(screen_index, page_index)
    screen_index = nil
    page_index = nil
end


--- Jump to the specified cutscene waypoint. Only works when the player is viewing a cutscene.
--- 
--- @param waypoint_index uint          
function player.jump_to_cutscene_waypoint(waypoint_index)
    waypoint_index = nil
end


--- Exit the current cutscene. Errors if not in a cutscene.
--- 
--- @return nil
function player.exit_cutscene()
    return nil
end


--- Queues a request to open the map at the specified position. If the map is already opened, the request will simply
--- set the position (and scale). Render mode change requests are processed before rendering of the next frame.
--- 
--- @overload fun(position: MapPosition)
--- 
--- @param position MapPosition         
--- @param scale double | nil            (Optional) 
function player.open_map(position, scale)
    position = nil
    scale = nil
end


--- Queues a request to zoom to world at the specified position. If the player is already zooming to world, the request
--- will simply set the position (and scale). Render mode change requests are processed before rendering of the next
--- frame.
--- 
--- @overload fun(position: MapPosition)
--- 
--- @param position MapPosition         
--- @param scale double | nil            (Optional) 
function player.zoom_to_world(position, scale)
    position = nil
    scale = nil
end


--- Queues request to switch to the normal game view from the map or zoom to world view. Render mode change requests
--- are processed before rendering of the next frame.
--- 
--- @return nil
function player.close_map()
    return nil
end


--- Is a custom Lua shortcut currently toggled?
--- 
--- @param prototype_name string        
--- @return boolean
function player.is_shortcut_toggled(prototype_name)
    prototype_name = nil
    return nil
end


--- Is a custom Lua shortcut currently available?
--- 
--- @param prototype_name string        
--- @return boolean
function player.is_shortcut_available(prototype_name)
    prototype_name = nil
    return nil
end


--- Toggle or untoggle a custom Lua shortcut
--- 
--- @param prototype_name string        
--- @param toggled boolean              
function player.set_shortcut_toggled(prototype_name, toggled)
    prototype_name = nil
    toggled = nil
end


--- Make a custom Lua shortcut available or unavailable.
--- 
--- @param prototype_name string        
--- @param available boolean            
function player.set_shortcut_available(prototype_name, available)
    prototype_name = nil
    available = nil
end


--- @alias LuaPlayer_connect_to_server_p
--- @field address string                The server (address:port) if port is not given the default Factorio port is used.
--- @field name LocalisedString | nil    (Optional)  The name of the server.
--- @field description LocalisedString | nil (Optional)  
--- @field password string | nil         (Optional)  The password if different from the one used to join this game. Note, if the current password is not empty but the one required to join the new server is an empty string should be given for this field.

--- Asks the player if they would like to connect to the given server.
--- 
--- @param params LuaPlayer_connect_to_server_p
function player.connect_to_server(params)
    params = nil
end


--- Toggles this player into or out of the map editor. Does nothing if this player isn't an admin or if the player
--- doesn't have permission to use the map editor.
--- 
--- May raise the following events:
---  - on_pre_player_toggled_map_editor:
---    @see on_pre_player_toggled_map_editor@
---    Raised instantly, conditionally.
---    Raised if the map editor was successfully toggled.
---  - on_player_toggled_map_editor:
---    @see on_player_toggled_map_editor@
---    Raised instantly, conditionally.
---    Raised if the map editor was successfully toggled.
--- 
--- @return nil
function player.toggle_map_editor()
    return nil
end


--- Requests a translation for the given localised string. If the request is successful the on_string_translated event
--- will be fired at a later time with the results.
--- 
--- @see on_string_translated @
--- 
--- May raise the following events:
---  - on_string_translated:
---    @see on_string_translated@
---    Raised at future_tick, conditionally.
---    Raised if the request was successfully sent.
--- 
--- @param localised_string LocalisedString
--- @return boolean                      Whether the request was sent or not.
function player.request_translation(localised_string)
    localised_string = nil
    return nil
end


--- Gets the filter for this map editor infinity filters at the given index or `nil` if the filter index doesn't exist
--- or is empty.
--- 
--- @param index uint                   
--- @return InfinityInventoryFilter
function player.get_infinity_inventory_filter(index)
    index = nil
    return nil
end


--- Sets the filter for this map editor infinity filters at the given index.
--- 
--- @param index uint                   
--- @param filter InfinityInventoryFilter
function player.set_infinity_inventory_filter(index, filter)
    index = nil
    filter = nil
end


--- Clears all recipe notifications for this player.
--- 
--- @return nil
function player.clear_recipe_notifications()
    return nil
end


--- Adds the given recipe to the list of recipe notifications for this player.
--- 
--- @param recipe string                
function player.add_recipe_notification(recipe)
    recipe = nil
end


--- Adds the given blueprint to this player's clipboard queue.
--- 
--- @param blueprint LuaItemStack       
function player.add_to_clipboard(blueprint)
    blueprint = nil
end


--- Gets a copy of the currently selected blueprint in the clipboard queue into the player's cursor, as if the player
--- activated Paste.
--- 
--- @return nil
function player.activate_paste()
    return nil
end


--- Starts selection with selection tool from the specified position. Does nothing if the players cursor is not a
--- selection tool.
--- 
--- @param position MapPosition         
--- @param selection_mode string        
function player.start_selection(position, selection_mode)
    position = nil
    selection_mode = nil
end


--- Clears the players selection tool selection position.
--- 
--- @return nil
function player.clear_selection()
    return nil
end


--- All methods and properties that this object supports.
--- 
--- @return string
function player.help()
    return nil
end

