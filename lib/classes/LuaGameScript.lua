

--- @class LuaGameScript
--- Main toplevel type, provides access to most of the API though its members. An instance of LuaGameScript is
--- available as the global object named `game`.
local game_script = {}


--- @type string
---  (R)
--- This object's name.
game_script.object_name = nil

--- @type LuaPlayer
---  (R)
--- The player typing at the console - `nil` in all other instances. See LuaGameScript::players for accessing all
--- players.
--- 
--- @see LuaGameScript#players @
game_script.player = nil

--- @type LuaCustomTable<uint | string, LuaPlayer>
---  (R)
--- Get a table of all the players that currently exist. This sparse table allows you to find players by indexing it
--- with either their `name` or `index`. Iterating this table with `pairs()` will only iterate the array part of the
--- table. Iterating with `ipairs()` will not work at all.
--- Custom table.
--- @see LuaCustomTable
game_script.players = nil

--- @type MapSettings
---  (R)
--- The currently active set of map settings. Even though this property is marked as read-only, the members of the
--- dictionary that is returned can be modified mid-game.
game_script.map_settings = nil

--- @type DifficultySettings
---  (R)
--- The currently active set of difficulty settings. Even though this property is marked as read-only, the members of
--- the dictionary that is returned can be modified mid-game. This is however not recommended as different difficulties
--- can have differing technology and recipe trees, which can cause problems for players.
game_script.difficulty_settings = nil

--- @type defines_difficulty
---  (R)
--- Current scenario difficulty.
game_script.difficulty = nil

--- @type LuaCustomTable<uint | string, LuaForce>
---  (R)
--- Get a table of all the forces that currently exist. This sparse table allows you to find forces by indexing it with
--- either their `name` or `index`. Iterating this table with `pairs()` will only iterate the array part of the table.
--- Iterating with `ipairs()` will not work at all.
--- Custom table.
--- @see LuaCustomTable
game_script.forces = nil

--- @type LuaCustomTable<string, LuaEntityPrototype>
---  (R)
--- A dictionary containing every LuaEntityPrototype indexed by `name`.
--- Custom table.
--- @see LuaCustomTable
game_script.entity_prototypes = nil

--- @type LuaCustomTable<string, LuaItemPrototype>
---  (R)
--- A dictionary containing every LuaItemPrototype indexed by `name`.
--- Custom table.
--- @see LuaCustomTable
game_script.item_prototypes = nil

--- @type LuaCustomTable<string, LuaFluidPrototype>
---  (R)
--- A dictionary containing every LuaFluidPrototype indexed by `name`.
--- Custom table.
--- @see LuaCustomTable
game_script.fluid_prototypes = nil

--- @type LuaCustomTable<string, LuaTilePrototype>
---  (R)
--- A dictionary containing every LuaTilePrototype indexed by `name`.
--- Custom table.
--- @see LuaCustomTable
game_script.tile_prototypes = nil

--- @type LuaCustomTable<string, LuaEquipmentPrototype>
---  (R)
--- A dictionary containing every LuaEquipmentPrototype indexed by `name`.
--- Custom table.
--- @see LuaCustomTable
game_script.equipment_prototypes = nil

--- @type LuaCustomTable<string, LuaDamagePrototype>
---  (R)
--- A dictionary containing every LuaDamagePrototype indexed by `name`.
--- Custom table.
--- @see LuaCustomTable
game_script.damage_prototypes = nil

--- @type LuaCustomTable<string, LuaVirtualSignalPrototype>
---  (R)
--- A dictionary containing every LuaVirtualSignalPrototype indexed by `name`.
--- Custom table.
--- @see LuaCustomTable
game_script.virtual_signal_prototypes = nil

--- @type LuaCustomTable<string, LuaEquipmentGridPrototype>
---  (R)
--- A dictionary containing every LuaEquipmentGridPrototype indexed by `name`.
--- Custom table.
--- @see LuaCustomTable
game_script.equipment_grid_prototypes = nil

--- @type LuaCustomTable<string, LuaRecipePrototype>
---  (R)
--- A dictionary containing every LuaRecipePrototype indexed by `name`.
--- Custom table.
--- @see LuaCustomTable
game_script.recipe_prototypes = nil

--- @type LuaCustomTable<string, LuaTechnologyPrototype>
---  (R)
--- A dictionary containing every LuaTechnologyPrototype indexed by `name`.
--- 
--- @see LuaTechnologyPrototype @
--- Custom table.
--- @see LuaCustomTable
game_script.technology_prototypes = nil

--- @type LuaCustomTable<string, LuaDecorativePrototype>
---  (R)
--- A dictionary containing every LuaDecorativePrototype indexed by `name`.
--- Custom table.
--- @see LuaCustomTable
game_script.decorative_prototypes = nil

--- @type LuaCustomTable<string, LuaParticlePrototype>
---  (R)
--- A dictionary containing every LuaParticlePrototype indexed by `name`.
--- Custom table.
--- @see LuaCustomTable
game_script.particle_prototypes = nil

--- @type LuaCustomTable<string, LuaAutoplaceControlPrototype>
---  (R)
--- A dictionary containing every LuaAutoplaceControlPrototype indexed by `name`.
--- Custom table.
--- @see LuaCustomTable
game_script.autoplace_control_prototypes = nil

--- @type LuaCustomTable<string, LuaNoiseLayerPrototype>
---  (R)
--- A dictionary containing every LuaNoiseLayerPrototype indexed by `name`.
--- Custom table.
--- @see LuaCustomTable
game_script.noise_layer_prototypes = nil

--- @type LuaCustomTable<string, LuaModSettingPrototype>
---  (R)
--- A dictionary containing every LuaModSettingPrototype indexed by `name`.
--- Custom table.
--- @see LuaCustomTable
game_script.mod_setting_prototypes = nil

--- @type LuaCustomTable<string, LuaCustomInputPrototype>
---  (R)
--- A dictionary containing every LuaCustomInputPrototype indexed by `name`.
--- Custom table.
--- @see LuaCustomTable
game_script.custom_input_prototypes = nil

--- @type LuaCustomTable<string, LuaAmmoCategoryPrototype>
---  (R)
--- A dictionary containing every LuaAmmoCategoryPrototype indexed by `name`.
--- Custom table.
--- @see LuaCustomTable
game_script.ammo_category_prototypes = nil

--- @type LuaCustomTable<string, LuaNamedNoiseExpression>
---  (R)
--- A dictionary containing every LuaNamedNoiseExpression indexed by `name`.
--- Custom table.
--- @see LuaCustomTable
game_script.named_noise_expressions = nil

--- @type LuaCustomTable<string, LuaGroup>
---  (R)
--- A dictionary containing every ItemSubgroup indexed by `name`.
--- Custom table.
--- @see LuaCustomTable
game_script.item_subgroup_prototypes = nil

--- @type LuaCustomTable<string, LuaGroup>
---  (R)
--- A dictionary containing every ItemGroup indexed by `name`.
--- Custom table.
--- @see LuaCustomTable
game_script.item_group_prototypes = nil

--- @type LuaCustomTable<string, LuaFuelCategoryPrototype>
---  (R)
--- A dictionary containing every LuaFuelCategoryPrototype indexed by `name`.
--- Custom table.
--- @see LuaCustomTable
game_script.fuel_category_prototypes = nil

--- @type LuaCustomTable<string, LuaResourceCategoryPrototype>
---  (R)
--- A dictionary containing every LuaResourceCategoryPrototype indexed by `name`.
--- Custom table.
--- @see LuaCustomTable
game_script.resource_category_prototypes = nil

--- @type LuaCustomTable<string, LuaAchievementPrototype>
---  (R)
--- A dictionary containing every LuaAchievementPrototype indexed by `name`.
--- Custom table.
--- @see LuaCustomTable
game_script.achievement_prototypes = nil

--- @type LuaCustomTable<string, LuaModuleCategoryPrototype>
---  (R)
--- A dictionary containing every LuaModuleCategoryPrototype indexed by `name`.
--- Custom table.
--- @see LuaCustomTable
game_script.module_category_prototypes = nil

--- @type LuaCustomTable<string, LuaEquipmentCategoryPrototype>
---  (R)
--- A dictionary containing every LuaEquipmentCategoryPrototype indexed by `name`.
--- Custom table.
--- @see LuaCustomTable
game_script.equipment_category_prototypes = nil

--- @type LuaCustomTable<string, LuaTrivialSmokePrototype>
---  (R)
--- A dictionary containing every LuaTrivialSmokePrototype indexed by `name`.
--- Custom table.
--- @see LuaCustomTable
game_script.trivial_smoke_prototypes = nil

--- @type LuaCustomTable<string, LuaShortcutPrototype>
---  (R)
--- A dictionary containing every LuaShortcutPrototype indexed by `name`.
--- Custom table.
--- @see LuaCustomTable
game_script.shortcut_prototypes = nil

--- @type LuaCustomTable<string, LuaRecipeCategoryPrototype>
---  (R)
--- A dictionary containing every LuaRecipeCategoryPrototype indexed by `name`.
--- Custom table.
--- @see LuaCustomTable
game_script.recipe_category_prototypes = nil

--- @type LuaCustomTable<string, LuaFontPrototype>
---  (R)
--- A dictionary containing every LuaFontPrototype indexed by `name`.
--- Custom table.
--- @see LuaCustomTable
game_script.font_prototypes = nil

--- @type LuaCustomTable<string, MapGenPreset>
---  (R)
--- A dictionary containing every MapGenPreset indexed by `name`.
--- Custom table.
--- @see LuaCustomTable
game_script.map_gen_presets = nil

--- @type LuaCustomTable<string, string>
---  (R)
--- The styles that LuaGuiElement can use, indexed by `name`.
--- 
--- @see LuaGuiElement @
--- Custom table.
--- @see LuaCustomTable
game_script.styles = nil

--- @type uint
---  (R)
--- Current map tick.
game_script.tick = nil

--- @type uint
---  (R)
--- The number of ticks since this game was 'created'. A game is 'created' either by using "new game" or "new game from
--- scenario".
game_script.ticks_played = nil

--- @type boolean
---  (RW)
--- If the tick has been paused. This means that entity update has been paused.
game_script.tick_paused = nil

--- @type uint
---  (RW)
--- The number of ticks to be run while the tick is paused. When LuaGameScript::tick_paused is true, ticks_to_run
--- behaves the following way: While this is > 0, the entity update is running normally and this value is decremented
--- every tick. When this reaches 0, the game will pause again.
--- 
--- @see LuaGameScript#tick_paused @
game_script.ticks_to_run = nil

--- @type boolean
---  (R)
--- True while the victory screen is shown.
game_script.finished = nil

--- @type boolean
---  (R)
--- True after players finished the game and clicked "continue".
game_script.finished_but_continuing = nil

--- @type float
---  (RW)
--- Speed to update the map at. 1.0 is normal speed -- 60 UPS.
game_script.speed = nil

--- @type LuaCustomTable<uint | string, LuaSurface>
---  (R)
--- Get a table of all the surfaces that currently exist. This sparse table allows you to find surfaces by indexing it
--- with either their `name` or `index`. Iterating this table with `pairs()` will only iterate the array part of the
--- table. Iterating with `ipairs()` will not work at all.
--- Custom table.
--- @see LuaCustomTable
game_script.surfaces = nil

--- @type table<string, string>
---  (R)
--- The active mods versions. The keys are mod names, the values are the versions.
game_script.active_mods = nil

--- @type LuaPlayer[]
---  (R)
--- The players that are currently online.
--- This is primarily useful when you want to do some action against all online players.
game_script.connected_players = {}

--- @type LuaPermissionGroups
---  (R)
game_script.permissions = nil

--- @type LuaCustomTable<uint, string>
---  (R)
--- Array of the names of all the backers that supported the game development early on. These are used as names for
--- labs, locomotives, radars, roboports, and train stops.
--- Custom table.
--- @see LuaCustomTable
game_script.backer_names = nil

--- @type MapGenSettings
---  (R)
--- The default map gen settings for this save.
game_script.default_map_gen_settings = nil

--- @type boolean
---  (RW)
--- Determines if enemy land mines are completely invisible or not.
game_script.enemy_has_vision_on_land_mines = nil

--- @type boolean
---  (RW)
--- True by default. Can be used to disable autosaving. Make sure to turn it back on soon after.
game_script.autosave_enabled = nil

--- @type boolean
---  (RW)
--- True by default. Can be used to disable the highlighting of resource patches when they are hovered on the map.
game_script.draw_resource_selection = nil

--- @type LuaFlowStatistics
---  (R)
--- The pollution statistics for this map.
game_script.pollution_statistics = nil

--- @type double
---  (R)
game_script.max_force_distraction_distance = nil

--- @type uint
---  (R)
game_script.max_force_distraction_chunk_distance = nil

--- @type float
---  (R)
game_script.max_electric_pole_supply_area_distance = nil

--- @type double
---  (R)
game_script.max_electric_pole_connection_distance = nil

--- @type double
---  (R)
game_script.max_beacon_supply_area_distance = nil

--- @type double
---  (R)
game_script.max_gate_activation_distance = nil

--- @type double
---  (R)
game_script.max_inserter_reach_distance = nil

--- @type uint8
---  (R)
game_script.max_pipe_to_ground_distance = nil

--- @type uint8
---  (R)
game_script.max_underground_belt_distance = nil



--- @alias LuaGameScript_set_game_state_p
--- @field game_finished boolean         
--- @field player_won boolean            
--- @field next_level string             
--- @field can_continue boolean          
--- @field victorious_force ForceIdentification 

--- Set scenario state.
--- 
--- @param params LuaGameScript_set_game_state_p
function game_script.set_game_state(params)
    params = nil
end


--- Reset scenario state (game_finished, player_won, etc.).
--- 
--- @return nil
function game_script.reset_game_state()
    return nil
end


--- @param tag string                   
--- @return LuaEntity
function game_script.get_entity_by_tag(tag)
    tag = nil
    return nil
end


--- @alias LuaGameScript_show_message_dialog_p
--- @field text LocalisedString          What the dialog should say
--- @field image string | nil            (Optional)  Path to an image to show on the dialog
--- @field point_to GuiArrowSpecification | nil (Optional)  If specified, dialog will show an arrow pointing to this place. When not specified, the arrow will point to the player's position. (Use `point_to={type="nowhere"}` to remove the arrow entirely.) The dialog itself will be placed near the arrow's target.
--- @field style string | nil            (Optional)  The gui style to use for this speech bubble. Must be of type speech_bubble.
--- @field wrapper_frame_style string | nil (Optional)  Must be of type flow_style.

--- Show an in-game message dialog.
--- 
--- @param params LuaGameScript_show_message_dialog_p
function game_script.show_message_dialog(params)
    params = nil
end


--- Is this the demo version of Factorio?
--- 
--- @return boolean
function game_script.is_demo()
    return nil
end


--- Forces a reload of the scenario script from the original scenario location.
--- 
--- @return nil
function game_script.reload_script()
    return nil
end


--- Forces a reload of all mods.
--- 
--- @return nil
function game_script.reload_mods()
    return nil
end


--- Saves the current configuration of Atlas to a file. This will result in huge file containing all of the game
--- graphics moved to as small space as possible.
--- 
--- @return nil
function game_script.save_atlas()
    return nil
end


--- Run internal consistency checks. Allegedly prints any errors it finds.
--- 
--- @return nil
function game_script.check_consistency()
    return nil
end


--- Regenerate autoplacement of some entities on all surfaces. This can be used to autoplace newly-added entities.
--- 
--- @param entities string | string[]   
function game_script.regenerate_entity(entities)
    entities = nil
end


--- @alias LuaGameScript_take_screenshot_p
--- @field player PlayerIdentification | nil (Optional)  The player to focus on. Defaults to the local player.
--- @field by_player PlayerIdentification | nil (Optional)  If defined, the screenshot will only be taken for this player.
--- @field surface SurfaceIdentification | nil (Optional)  If defined, the screenshot will be taken on this surface.
--- @field position MapPosition | nil    (Optional)  If defined, the screenshot will be centered on this position. Otherwise, the screenshot will center on `player`.
--- @field resolution TilePosition | nil (Optional)  The maximum allowed resolution is 16384x16384 (8192x8192 when `anti_alias` is `true`), but the maximum recommended resolution is 4096x4096 (resp. 2048x2048).
--- @field zoom double | nil             (Optional)  The map zoom to take the screenshot at. Defaults to `1`.
--- @field path string | nil             (Optional)  The sub-path in `"script-output"` to save the screenshot to. Defaults to `"screenshot.png"`.
--- @field show_gui boolean | nil        (Optional)  Whether to include GUIs in the screenshot or not. Defaults to `false`.
--- @field show_entity_info boolean | nil (Optional)  Whether to include entity info ("Alt mode") or not. Defaults to `false`.
--- @field show_cursor_building_preview boolean | nil (Optional)  When `true` and when `player` is specified, the building preview for the item in the player's cursor will also be rendered. Defaults to `false`.
--- @field anti_alias boolean | nil      (Optional)  Whether to render in double resolution and downscale the result (including GUI). Defaults to `false`.
--- @field quality int | nil             (Optional)  The `.jpg` render quality as a percentage (from 0% to 100% inclusive), if used. A lower value means a more compressed image. Defaults to `80`.
--- @field allow_in_replay boolean | nil (Optional)  Whether to save the screenshot even during replay playback. Defaults to `false`.
--- @field daytime double | nil          (Optional)  Overrides the current surface daytime for the duration of screenshot rendering.
--- @field water_tick uint | nil         (Optional)  Overrides the tick of water animation, if animated water is enabled.
--- @field force_render boolean | nil    (Optional)  Screenshot requests are processed in between game update and render. The game may skip rendering (ie. drop frames) if the previous frame has not finished rendering or the game simulation starts to fall below 60 updates per second. If `force_render` is set to `true`, the game won't drop frames and process the screenshot request at the end of the update in which the request was created. This is not honored on multiplayer clients that are catching up to server. Defaults to `false`.

--- Take a screenshot and save it to a file. The filename should include a file extension indicating the desired image
--- format. Supports `.png`, `.jpg` / `.jpeg`, `.tga` and `.bmp`.
--- 
--- @param params LuaGameScript_take_screenshot_p
function game_script.take_screenshot(params)
    params = nil
end


--- Forces the screenshot saving system to wait until all queued screenshots have been written to disk.
--- 
--- @return nil
function game_script.set_wait_for_screenshots_to_finish()
    return nil
end


--- @alias LuaGameScript_take_technology_screenshot_p
--- @field force ForceIdentification | nil (Optional)  The force whose technology to screenshot. If not given, the `"player`" force is used.
--- @field path string | nil             (Optional)  The sub-path in `"script-output"` to save the screenshot to. Defaults to `"technology-screenshot.png"`.
--- @field by_player PlayerIdentification | nil (Optional)  If given, the screenshot will only be taken for this player.
--- @field selected_technology TechnologyIdentification | nil (Optional)  The technology to highlight.
--- @field skip_disabled boolean | nil   (Optional)  If `true`, disabled technologies will be skipped. Their successors will be attached to the disabled technology's parents. Defaults to `false`.
--- @field quality int | nil             (Optional)  The `.jpg` render quality as a percentage (from 0% to 100% inclusive), if used. A lower value means a more compressed image. Defaults to `80`.

--- Take a screenshot of the technology screen and save it to a file. The filename should include a file extension
--- indicating the desired image format. Supports `.png`, `.jpg` / `.jpeg`, `.tga` and `.bmp`.
--- 
--- @param params LuaGameScript_take_technology_screenshot_p
function game_script.take_technology_screenshot(params)
    params = nil
end


--- Convert a table to a JSON string
--- 
--- @param data table                   
--- @return string
function game_script.table_to_json(data)
    data = nil
    return nil
end


--- Convert a JSON string to a table.
--- 
--- @param json string                  
--- @return AnyBasic                     The returned object, or `nil` if the JSON string was invalid.
function game_script.json_to_table(json)
    json = nil
    return nil
end


--- Write a string to a file.
--- 
--- @overload fun(filename: string, data: LocalisedString)
--- @overload fun(filename: string, data: LocalisedString, append: boolean)
--- 
--- @param filename string              
--- @param data LocalisedString         
--- @param append boolean | nil          (Optional) 
--- @param for_player uint | nil         (Optional) 
function game_script.write_file(filename, data, append, for_player)
    filename = nil
    data = nil
    append = nil
    for_player = nil
end


--- Remove file or directory. Given path is taken relative to the script output directory. Can be used to remove files
--- created by LuaGameScript::write_file.
--- 
--- @see LuaGameScript#write_file @
--- 
--- @param path string                  
function game_script.remove_path(path)
    path = nil
end


--- Remove players who are currently not connected from the map.
--- 
--- May raise the following events:
---  - on_pre_player_removed:
---    @see on_pre_player_removed@
---    Raised instantly.
---  - on_player_removed:
---    @see on_player_removed@
---    Raised instantly.
--- 
--- @overload fun()
--- 
--- @param players (LuaPlayer | string)[] | nil (Optional) 
function game_script.remove_offline_players(players)
    players = {}
end


--- Force a CRC check. Tells all peers to calculate their current map CRC; these CRC are then compared against each
--- other. If a mismatch is detected, the game is desynced and some peers are forced to reconnect.
--- 
--- @return nil
function game_script.force_crc()
    return nil
end


--- Create a new force.
--- 
--- May raise the following events:
---  - on_force_created:
---    @see on_force_created@
---    Raised instantly.
--- 
--- @param force string                 
--- @return LuaForce                     The force that was just created
function game_script.create_force(force)
    force = nil
    return nil
end


--- Marks two forces to be merged together. All entities in the source force will be reassigned to the target force.
--- The source force will then be destroyed.
--- 
--- May raise the following events:
---  - on_forces_merging:
---    @see on_forces_merging@
---    Raised at future_tick.
---  - on_forces_merged:
---    @see on_forces_merged@
---    Raised at future_tick.
--- 
--- @param source ForceIdentification   
--- @param destination ForceIdentification
function game_script.merge_forces(source, destination)
    source = nil
    destination = nil
end


--- Create a new surface.
--- 
--- May raise the following events:
---  - on_surface_created:
---    @see on_surface_created@
---    Raised instantly.
--- 
--- @overload fun(name: string): LuaSurface
--- 
--- @param name string                  
--- @param settings MapGenSettings | nil (Optional) 
--- @return LuaSurface                   The surface that was just created.
function game_script.create_surface(name, settings)
    name = nil
    settings = nil
    return nil
end


--- Instruct the server to save the map.
--- 
--- @overload fun()
--- 
--- @param name string | nil             (Optional) 
function game_script.server_save(name)
    name = nil
end


--- Instruct the game to perform an auto-save.
--- 
--- @overload fun()
--- 
--- @param name string | nil             (Optional) 
function game_script.auto_save(name)
    name = nil
end


--- Deletes the given surface and all entities on it.
--- 
--- May raise the following events:
---  - on_pre_surface_deleted:
---    @see on_pre_surface_deleted@
---    Raised at future_tick.
---  - on_surface_deleted:
---    @see on_surface_deleted@
---    Raised at future_tick.
--- 
--- @param surface string | LuaSurface  
function game_script.delete_surface(surface)
    surface = nil
end


--- Disables replay saving for the current save file. Once done there's no way to re-enable replay saving for the save
--- file without loading an old save.
--- 
--- @return nil
function game_script.disable_replay()
    return nil
end


--- Disables tutorial triggers, that unlock new tutorials and show notices about unlocked tutorials.
--- 
--- @return nil
function game_script.disable_tutorial_triggers()
    return nil
end


--- Converts the given direction into the string version of the direction.
--- 
--- @param direction defines_direction  
function game_script.direction_to_string(direction)
    direction = nil
end


--- Print text to the chat console all players.
--- 
--- @overload fun(message: LocalisedString)
--- 
--- @param message LocalisedString      
--- @param color Color | nil             (Optional) 
function game_script.print(message, color)
    message = nil
    color = nil
end


--- Creates a deterministic standalone random generator with the given seed or if a seed is not provided the initial
--- map seed is used.
--- 
--- @overload fun(): LuaRandomGenerator
--- 
--- @param seed uint | nil               (Optional) 
--- @return LuaRandomGenerator
function game_script.create_random_generator(seed)
    seed = nil
    return nil
end


--- Goes over all items, entities, tiles, recipes, technologies among other things and logs if the locale is incorrect.
--- 
--- @return nil
function game_script.check_prototype_translations()
    return nil
end


--- @alias LuaGameScript_play_sound_p
--- @field path SoundPath                The sound to play.
--- @field position MapPosition | nil    (Optional)  Where the sound should be played. If not given, it's played at the current position of each player.
--- @field volume_modifier double | nil  (Optional)  The volume of the sound to play. Must be between 0 and 1 inclusive.
--- @field override_sound_type SoundType | nil (Optional)  The volume mixer to play the sound through. Defaults to the default mixer for the given sound type.

--- Play a sound for every player in the game.
--- 
--- @param params LuaGameScript_play_sound_p
function game_script.play_sound(params)
    params = nil
end


--- Checks if the given SoundPath is valid.
--- 
--- @param sound_path SoundPath         
--- @return boolean
function game_script.is_valid_sound_path(sound_path)
    sound_path = nil
    return nil
end


--- Checks if the given SpritePath is valid and contains a loaded sprite.
--- 
--- @param sprite_path SpritePath       
--- @return boolean
function game_script.is_valid_sprite_path(sprite_path)
    sprite_path = nil
    return nil
end


--- Kicks the given player from this multiplayer game. Does nothing if this is a single player game or if the player
--- running this isn't an admin.
--- 
--- May raise the following events:
---  - on_player_kicked:
---    @see on_player_kicked@
---    Raised instantly.
---  - on_console_command:
---    @see on_console_command@
---    Raised instantly.
--- 
--- @overload fun(player: PlayerIdentification)
--- 
--- @param player PlayerIdentification  
--- @param reason LocalisedString | nil  (Optional) 
function game_script.kick_player(player, reason)
    player = nil
    reason = nil
end


--- Bans the given player from this multiplayer game. Does nothing if this is a single player game of if the player
--- running this isn't an admin.
--- 
--- May raise the following events:
---  - on_player_banned:
---    @see on_player_banned@
---    Raised instantly.
---  - on_console_command:
---    @see on_console_command@
---    Raised instantly.
--- 
--- @overload fun(player: PlayerIdentification)
--- 
--- @param player PlayerIdentification  
--- @param reason LocalisedString | nil  (Optional) 
function game_script.ban_player(player, reason)
    player = nil
    reason = nil
end


--- Unbans the given player from this multiplayer game. Does nothing if this is a single player game of if the player
--- running this isn't an admin.
--- 
--- May raise the following events:
---  - on_player_unbanned:
---    @see on_player_unbanned@
---    Raised instantly.
---  - on_console_command:
---    @see on_console_command@
---    Raised instantly.
--- 
--- @param player PlayerIdentification  
function game_script.unban_player(player)
    player = nil
end


--- Purges the given players messages from the game. Does nothing if the player running this isn't an admin.
--- 
--- May raise the following events:
---  - on_console_command:
---    @see on_console_command@
---    Raised instantly.
--- 
--- @param player PlayerIdentification  
function game_script.purge_player(player)
    player = nil
end


--- Mutes the given player. Does nothing if the player running this isn't an admin.
--- 
--- May raise the following events:
---  - on_player_muted:
---    @see on_player_muted@
---    Raised instantly.
---  - on_console_command:
---    @see on_console_command@
---    Raised instantly.
--- 
--- @param player PlayerIdentification  
function game_script.mute_player(player)
    player = nil
end


--- Unmutes the given player. Does nothing if the player running this isn't an admin.
--- 
--- May raise the following events:
---  - on_player_unmuted:
---    @see on_player_unmuted@
---    Raised instantly.
---  - on_console_command:
---    @see on_console_command@
---    Raised instantly.
--- 
--- @param player PlayerIdentification  
function game_script.unmute_player(player)
    player = nil
end


--- Counts how many distinct groups of pipes exist in the world.
--- 
--- @return nil
function game_script.count_pipe_groups()
    return nil
end


--- Is the map loaded is multiplayer?
--- 
--- @return boolean
function game_script.is_multiplayer()
    return nil
end


--- Gets the number of entities that are active (updated each tick).
--- 
--- @overload fun(): uint
--- 
--- @param surface SurfaceIdentification | nil (Optional) 
--- @return uint
function game_script.get_active_entities_count(surface)
    surface = nil
    return nil
end


--- Gets the map exchange string for the map generation settings that were used to create this map.
--- 
--- @return string
function game_script.get_map_exchange_string()
    return nil
end


--- Convert a map exchange string to map gen settings and map settings.
--- 
--- @param map_exchange_string string   
--- @return MapExchangeStringData
function game_script.parse_map_exchange_string(map_exchange_string)
    map_exchange_string = nil
    return nil
end


--- @alias LuaGameScript_get_train_stops_p
--- @field name string | string[] | nil  (Optional)  
--- @field surface SurfaceIdentification | nil (Optional)  
--- @field force ForceIdentification | nil (Optional)  

--- Gets train stops matching the given filters.
--- 
--- @overload fun(): LuaEntity[]
--- 
--- @param params LuaGameScript_get_train_stops_p | nil (Optional) 
--- @return LuaEntity[]
function game_script.get_train_stops(params)
    params = nil
    return {}
end


--- Gets the given player or returns `nil` if no player is found.
--- 
--- @param player uint | string         
--- @return LuaPlayer
function game_script.get_player(player)
    player = nil
    return nil
end


--- Gets the given surface or returns `nil` if no surface is found.
--- 
--- @param surface uint | string        
--- @return LuaSurface
function game_script.get_surface(surface)
    surface = nil
    return nil
end


--- Creates a LuaProfiler, which is used for measuring script performance.
--- 
--- @see LuaProfiler @
--- 
--- @overload fun(): LuaProfiler
--- 
--- @param stopped boolean | nil         (Optional) 
--- @return LuaProfiler
function game_script.create_profiler(stopped)
    stopped = nil
    return nil
end


--- Evaluate an expression, substituting variables as provided. For details on the formula, see the relevant page on
--- the Factorio wiki.
--- 
--- @overload fun(expression: string): double
--- 
--- @param expression string            
--- @param variables table<string, double> | nil (Optional) 
--- @return double
function game_script.evaluate_expression(expression, variables)
    expression = nil
    variables = nil
    return nil
end


--- Returns a dictionary of all LuaEntityPrototypes that fit the given filters. The prototypes are indexed by `name`.
--- 
--- @param filters EntityPrototypeFilter[]
--- @return LuaCustomTable<string, LuaEntityPrototype>
function game_script.get_filtered_entity_prototypes(filters)
    filters = {}
    return nil
end


--- Returns a dictionary of all LuaItemPrototypes that fit the given filters. The prototypes are indexed by `name`.
--- 
--- @param filters ItemPrototypeFilter[]
--- @return LuaCustomTable<string, LuaItemPrototype>
function game_script.get_filtered_item_prototypes(filters)
    filters = {}
    return nil
end


--- Returns a dictionary of all LuaEquipmentPrototypes that fit the given filters. The prototypes are indexed by
--- `name`.
--- 
--- @param filters EquipmentPrototypeFilter[]
--- @return LuaCustomTable<string, LuaEquipmentPrototype>
function game_script.get_filtered_equipment_prototypes(filters)
    filters = {}
    return nil
end


--- Returns a dictionary of all LuaModSettingPrototypes that fit the given filters. The prototypes are indexed by
--- `name`.
--- 
--- @param filters ModSettingPrototypeFilter[]
--- @return LuaCustomTable<string, LuaModSettingPrototype>
function game_script.get_filtered_mod_setting_prototypes(filters)
    filters = {}
    return nil
end


--- Returns a dictionary of all LuaAchievementPrototypes that fit the given filters. The prototypes are indexed by
--- `name`.
--- 
--- @param filters AchievementPrototypeFilter[]
--- @return LuaCustomTable<string, LuaAchievementPrototype>
function game_script.get_filtered_achievement_prototypes(filters)
    filters = {}
    return nil
end


--- Returns a dictionary of all LuaTilePrototypes that fit the given filters. The prototypes are indexed by `name`.
--- 
--- @param filters TilePrototypeFilter[]
--- @return LuaCustomTable<string, LuaTilePrototype>
function game_script.get_filtered_tile_prototypes(filters)
    filters = {}
    return nil
end


--- Returns a dictionary of all LuaDecorativePrototypes that fit the given filters. The prototypes are indexed by
--- `name`.
--- 
--- @param filters DecorativePrototypeFilter[]
--- @return LuaCustomTable<string, LuaDecorativePrototype>
function game_script.get_filtered_decorative_prototypes(filters)
    filters = {}
    return nil
end


--- Returns a dictionary of all LuaFluidPrototypes that fit the given filters. The prototypes are indexed by `name`.
--- 
--- @param filters FluidPrototypeFilter[]
--- @return LuaCustomTable<string, LuaFluidPrototype>
function game_script.get_filtered_fluid_prototypes(filters)
    filters = {}
    return nil
end


--- Returns a dictionary of all LuaRecipePrototypes that fit the given filters. The prototypes are indexed by `name`.
--- 
--- @param filters RecipePrototypeFilter[]
--- @return LuaCustomTable<string, LuaRecipePrototype>
function game_script.get_filtered_recipe_prototypes(filters)
    filters = {}
    return nil
end


--- Returns a dictionary of all LuaTechnologyPrototypes that fit the given filters. The prototypes are indexed by
--- `name`.
--- 
--- @param filters TechnologyPrototypeFilter[]
--- @return LuaCustomTable<string, LuaTechnologyPrototype>
function game_script.get_filtered_technology_prototypes(filters)
    filters = {}
    return nil
end


--- Creates an inventory that is not owned by any game object. It can be resized later with LuaInventory::resize.
--- 
--- @see LuaInventory#resize @
--- 
--- @param size uint16                  
--- @return LuaInventory
function game_script.create_inventory(size)
    size = nil
    return nil
end


--- Gets the inventories created through LuaGameScript::create_inventory
--- 
--- @see LuaGameScript#create_inventory @
--- 
--- @overload fun(): table<string, LuaInventory[]>
--- 
--- @param mod string | nil              (Optional) 
--- @return table<string, LuaInventory[]> A mapping of mod name to array of inventories owned by that mod.
function game_script.get_script_inventories(mod)
    mod = nil
    return nil
end


--- Resets the amount of time played for this map.
--- 
--- @return nil
function game_script.reset_time_played()
    return nil
end


--- Deflates and base64 encodes the given string.
--- 
--- @param string string                
--- @return string                       The encoded string or `nil` if the encode failed.
function game_script.encode_string(string)
    string = nil
    return nil
end


--- Base64 decodes and inflates the given string.
--- 
--- @param string string                
--- @return string                       The decoded string or `nil` if the decode failed.
function game_script.decode_string(string)
    string = nil
    return nil
end

