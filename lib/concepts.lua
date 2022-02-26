
--- @alias LocalisedString string | (LocalisedString | string | number | LuaProfiler)[]
--- Localised strings are a way to support translation of in-game text. It is an array where the first element is the
--- key and the remaining elements are parameters that will be substituted for placeholders in the template designated
--- by the key.
--- The key identifies the string template. For example, `"gui-alert-tooltip.attack"` (for the template `"__1__
---     objects are being damaged"`; see the file `data/core/locale/en.cfg`).
--- The template can contain placeholders such as `__1__` or `__2__`. These will be replaced by the respective
--- parameter in the LocalisedString. The parameters themselves can be other localised strings, which will be processed
--- recursively in the same fashion. Localised strings can not be recursed deeper than 20 levels and can not have more
--- than 20 parameters.
--- As a special case, when the key is just the empty string, all the parameters will be concatenated (after
--- processing, if any are localised strings). If there is only one parameter, it will be used as is.
--- Furthermore, when an API function expects a localised string, it will also accept a regular string (i.e. not a
--- table) which will not be translated, as well as a number or boolean, which will be converted to their textual
--- representation.

--[[
In the English translation, this will print `"No ammo"`; in the Czech translation, it will print `"Bez munice"`:  ```
game.player.print({"description.no-ammo"}) ```  The `description.no-ammo` template contains no placeholders, so no
further parameters are necessary.

In the English translation, this will print `"Durability: 5/9"`; in the Japanese one, it will print `"耐久度: 5/9"`:  ```
game.player.print({"description.durability", 5, 9}) ```

This will print `"hello"` in all translations:  ``` game.player.print({"", "hello"}) ```

This will print `"Iron plate: 60"` in the English translation and `"Eisenplatte: 60"` in the German translation.  ```
game.print({"", {"item-name.iron-plate"}, ": ", 60}) ```
--]]


--- @shape DisplayResolution
--- @field width uint                    
--- @field height uint                   


--- @shape LogisticParameters
--- @field name string | nil             (Optional)  The item. `nil` clears the filter.
--- @field min uint | nil                (Optional)  
--- @field max uint | nil                (Optional)  


--- @shape RealOrientation
--- The smooth orientation. It is a float in the range `[0, 1)` that covers a full circle, starting at the top and
--- going clockwise. This means a value of `0` indicates "north", a value of `0.5` indicates "south".
--- For example then, a value of `0.625` would indicate "south-west", and a value of `0.875` would indicate "north-
--- west".
--- 
--- @see float @


--- @shape MapPosition
--- Coordinates on a surface, for example of an entity. MapPositions may be specified either as a dictionary with `x`,
--- `y` as keys, or simply as an array with two elements.
--- The coordinates are saved as a fixed-size 32 bit integer, with 8 bits reserved for decimal precision, meaning the
--- smallest value step is `1/2^8 = 0.00390625` tiles.
--- 
--- Explicit or implicit parameters:
--- @field x double | nil                (Optional)  
--- @field y double | nil                (Optional)  
--- @field [1] double | nil
--- @field [2] double | nil

--[[
Explicit definition:  ``` {x = 5.5, y = 2} {y = 2.25, x = 5.125} ```

Shorthand:  ``` {1.625, 2.375} ```
--]]


--- @shape ChunkPosition
--- Coordinates of a chunk in a LuaSurface where each integer `x`/`y` represents a different chunk. This uses the same
--- format as MapPosition, meaning it can be specified either with or without explicit keys. A MapPosition can be
--- translated to a ChunkPosition by dividing the `x`/`y` values by 32.
--- 
--- @see MapPosition @
--- @see LuaSurface @
--- 
--- Explicit or implicit parameters:
--- @field x int | nil                   (Optional)  
--- @field y int | nil                   (Optional)  
--- @field [1] int | nil
--- @field [2] int | nil


--- @shape TilePosition
--- Coordinates of a tile on a LuaSurface where each integer `x`/`y` represents a different tile. This uses the same
--- format as MapPosition, except it rounds any non-integer `x`/`y` down to whole numbers. It can be specified either
--- with or without explicit keys.
--- 
--- @see MapPosition @
--- @see LuaSurface @
--- 
--- Explicit or implicit parameters:
--- @field x int | nil                   (Optional)  
--- @field y int | nil                   (Optional)  
--- @field [1] int | nil
--- @field [2] int | nil


--- @shape EquipmentPosition
--- Position inside an equipment grid. This uses the same format as MapPosition, meaning it can be specified either
--- with or without explicit keys.
--- 
--- @see MapPosition @
--- 
--- Explicit or implicit parameters:
--- @field x int | nil                   (Optional)  
--- @field y int | nil                   (Optional)  
--- @field [1] int | nil
--- @field [2] int | nil

--[[
Explicit definition:  ``` {x = 5, y = 2} {y = 2, x = 5} ```

Shorthand:  ``` {1, 2} ```
--]]


--- @shape GuiLocation
--- Screen coordinates of a GUI element in a LuaGui. This uses the same format as TilePosition, meaning it can be
--- specified either with or without explicit keys.
--- 
--- @see TilePosition @
--- @see LuaGui @
--- 
--- Explicit or implicit parameters:
--- @field x int | nil                   (Optional)  
--- @field y int | nil                   (Optional)  
--- @field [1] int | nil
--- @field [2] int | nil


--- @shape ChunkPositionAndArea
--- A ChunkPosition with an added bounding box for the area of the chunk.
--- 
--- @see ChunkPosition @
--- @field x int                         
--- @field y int                         
--- @field area BoundingBox              


--- @shape EquipmentPoint
--- A table used to define a manual shape for a piece of equipment.
--- @field x uint                        
--- @field y uint                        


--- @shape GuiAnchor
--- @field gui defines_relative_gui_type 
--- @field position defines_relative_gui_position 
--- @field type string | nil             (Optional)  If provided, only anchors the GUI element when the opened things type matches the type.
--- @field name string | nil             (Optional)  If provided, only anchors the GUI element when the opened thing matches the name. `name` takes precedence over `names`.
--- @field names string[] | nil          (Optional)  If provided, only anchors the GUI element when the opened thing matches one of the names. When reading an anchor, `names` is always populated.


--- @shape TabAndContent
--- @field tab LuaGuiElement             
--- @field content LuaGuiElement         


--- @shape OldTileAndPosition
--- @field old_tile LuaTilePrototype     
--- @field position TilePosition         


--- @shape Tags
--- A dictionary of string to the four basic Lua types: `string`, `boolean`, `number`, `table`.
--- @field [string] string | boolean | number | table (RW) 

--[[
``` {a = 1, b = true, c = "three", d = {e = "f"}} ```
--]]


--- @shape SmokeSource
--- @field name string                   
--- @field frequency double              
--- @field offset double                 
--- @field position Vector | nil         (Optional)  
--- @field north_position Vector | nil   (Optional)  
--- @field east_position Vector | nil    (Optional)  
--- @field south_position Vector | nil   (Optional)  
--- @field west_position Vector | nil    (Optional)  
--- @field deviation MapPosition | nil   (Optional)  
--- @field starting_frame_speed uint16   
--- @field starting_frame_speed_deviation double 
--- @field starting_frame uint16         
--- @field starting_frame_deviation double 
--- @field slow_down_factor uint8        
--- @field height float                  
--- @field height_deviation float        
--- @field starting_vertical_speed float 
--- @field starting_vertical_speed_deviation float 
--- @field vertical_speed_slowdown float 
--- 
--- The vectors for all 5 position attributes are a table with `x` and `y` keys instead of an array.


--- @shape Vector
--- A vector is a two-element array containing the `x` and `y` components. In some specific cases, the vector is a
--- table with `x` and `y` keys instead, which the documentation will point out.
--- @field [1] number                    (RW) x
--- @field [2] number                    (RW) y

--[[
``` right = {1.0, 0.0} ```
--]]


--- @shape BoundingBox
--- Two positions, specifying the top-left and bottom-right corner of the box respectively. Like with MapPosition, the
--- names of the members may be omitted. When read from the game, the third member `orientation` is present if it is
--- non-zero, however it is ignored when provided to the game.
--- 
--- @see MapPosition @
--- 
--- Explicit or implicit parameters:
--- @field left_top MapPosition | nil    (Optional)  
--- @field right_bottom MapPosition | nil (Optional)  
--- @field orientation RealOrientation | nil (Optional)  
--- @field [1] MapPosition | nil
--- @field [2] MapPosition | nil
--- @field [3] RealOrientation | nil

--[[
Explicit definition:  ``` {left_top = {-2, -3}, right_bottom = {5, 8}} ```

Shorthand:  ``` {{-2, -3}, {5, 8}} ```
--]]


--- @shape ScriptArea
--- An area defined using the map editor.
--- @field area BoundingBox              
--- @field name string                   
--- @field color Color                   
--- @field id uint                       


--- @shape ScriptPosition
--- A position defined using the map editor.
--- @field position MapPosition          
--- @field name string                   
--- @field color Color                   
--- @field id uint                       


--- @shape Color
--- Red, green, blue and alpha values, all in range [0, 1] or all in range [0, 255] if any value is > 1. All values
--- here are optional. Color channels default to `0`, the alpha channel defaults to `1`.
--- Similar to MapPosition, Color allows the short-hand notation of passing an array of exactly 3 or 4 numbers. The
--- game usually expects colors to be in pre-multiplied form (color channels are pre-multiplied by alpha).
--- 
--- @see MapPosition @
--- 
--- Explicit or implicit parameters:
--- @field r float | nil                 (Optional)  
--- @field g float | nil                 (Optional)  
--- @field b float | nil                 (Optional)  
--- @field a float | nil                 (Optional)  
--- @field [1] float | nil
--- @field [2] float | nil
--- @field [3] float | nil
--- @field [4] float | nil

--[[
``` red1 = {r = 0.5, g = 0, b = 0, a = 0.5}  -- Half-opacity red red2 = {r = 0.5, a = 0.5}                -- Same color
as red1 black = {}                               -- All channels omitted: black red1_short = {0.5, 0, 0, 0.5}
-- Same color as red1 in short-hand notation ```
--]]


--- @shape ColorModifier
--- Same as Color, but red, green, blue and alpha values can be any floating point number, without any special handling
--- of the range [1, 255].
--- 
--- @see Color @
--- 
--- Explicit or implicit parameters:
--- @field r float | nil                 (Optional)  
--- @field g float | nil                 (Optional)  
--- @field b float | nil                 (Optional)  
--- @field a float | nil                 (Optional)  
--- @field [1] float | nil
--- @field [2] float | nil
--- @field [3] float | nil
--- @field [4] float | nil


--- @shape CraftingQueueItem
--- @field index uint                    The index of the item in the crafting queue.
--- @field recipe string                 The recipe being crafted.
--- @field count uint                    The amount of items being crafted.


--- @shape Alert
--- @field tick uint                     The tick this alert was created.
--- @field target LuaEntity | nil        (Optional)  
--- @field prototype LuaEntityPrototype | nil (Optional)  
--- @field position MapPosition | nil    (Optional)  
--- @field icon SignalID | nil           (Optional)  The SignalID used for a custom alert. Only present for custom alerts.
--- @field message LocalisedString | nil (Optional)  The message for a custom alert. Only present for custom alerts.


--- @shape ScriptRenderVertexTarget
--- One vertex of a ScriptRenderPolygon.
--- @field target MapPosition | LuaEntity 
--- @field target_offset Vector | nil    (Optional)  Only used if `target` is a LuaEntity.


--- @shape PathfinderWaypoint
--- @field position MapPosition          The position of the waypoint on its surface.
--- @field needs_destroy_to_reach boolean `true` if the path from the previous waypoint to this one goes through an entity that must be destroyed.


--- @shape CutsceneWaypoint
--- @field position MapPosition | nil    (Optional)  Position to pan the camera to.
--- @field target LuaEntity | LuaUnitGroup | nil (Optional)  Entity or unit group to pan the camera to.
--- @field transition_time uint          How many ticks it will take to reach this waypoint from the previous one.
--- @field time_to_wait uint             Time in ticks to wait before moving to the next waypoint.
--- @field zoom double | nil             (Optional)  Zoom level to be set when the waypoint is reached. When not specified, the previous waypoint's zoom is used.


--- @shape Decorative
--- @field name string                   The name of the decorative prototype.
--- @field position TilePosition         
--- @field amount uint8                  


--- @shape DecorativeResult
--- @field position TilePosition         
--- @field decorative LuaDecorativePrototype 
--- @field amount uint                   


--- @shape ChartTagSpec
--- @field position MapPosition          
--- @field icon SignalID | nil           (Optional)  
--- @field text string | nil             (Optional)  
--- @field last_user PlayerIdentification | nil (Optional)  
--- 
--- Either `icon`, `text`, or both must be provided.


--- @shape GameViewSettings
--- Parameters that affect the look and control of the game. Updating any of the member attributes here will
--- immediately take effect in the game engine.
--- @field show_controller_gui boolean   (RW) Show the controller GUI elements. This includes the toolbar, the selected tool slot, the armour slot, and the gun and ammunition slots.
--- @field show_minimap boolean          (RW) Show the chart in the upper right-hand corner of the screen.
--- @field show_research_info boolean    (RW) Show research progress and name in the upper right-hand corner of the screen.
--- @field show_entity_info boolean      (RW) Show overlay icons on entities. Also known as "alt-mode".
--- @field show_alert_gui boolean        (RW) Show the flashing alert icons next to the player's toolbar.
--- @field update_entity_selection boolean (RW) When `true` (the default), mousing over an entity will select it. Otherwise, moving the mouse won't update entity selection.
--- @field show_rail_block_visualisation boolean (RW) When `true` (`false` is default), the rails will always show the rail block visualisation.
--- @field show_side_menu boolean        (RW) Shows or hides the buttons row.
--- @field show_map_view_options boolean (RW) Shows or hides the view options when map is opened.
--- @field show_quickbar boolean         (RW) Shows or hides quickbar of shortcuts.
--- @field show_shortcut_bar boolean     (RW) Shows or hides the shortcut bar.


--- @shape MapViewSettings
--- What is shown in the map view. If a field is not given, that setting will not be changed.
--- @field show-logistic-network boolean | nil (Optional)  
--- @field show-electric-network boolean | nil (Optional)  
--- @field show-turret-range boolean | nil (Optional)  
--- @field show-pollution boolean | nil  (Optional)  
--- @field show-train-station-names boolean | nil (Optional)  
--- @field show-player-names boolean | nil (Optional)  
--- @field show-networkless-logistic-members boolean | nil (Optional)  
--- @field show-non-standard-map-info boolean | nil (Optional)  


--- @shape PollutionMapSettings
--- These values are for the time frame of one second (60 ticks).
--- @field enabled boolean               Whether pollution is enabled at all.
--- @field diffusion_ratio double        The amount that is diffused to a neighboring chunk (possibly repeated for other directions as well). Defaults to `0.02`.
--- @field min_to_diffuse double         The amount of PUs that need to be in a chunk for it to start diffusing. Defaults to `15`.
--- @field aeging double                 The amount of pollution eaten by a chunk's tiles as a percentage of 1. Defaults to `1`.
--- @field expected_max_per_chunk double Any amount of pollution larger than this value is visualized as this value instead. Defaults to `150`.
--- @field min_to_show_per_chunk double  Any amount of pollution smaller than this value (but bigger than zero) is visualized as this value instead. Defaults to `50`.
--- @field min_pollution_to_damage_trees double Defaults to `60`.
--- @field pollution_with_max_forest_damage double Defaults to `150`.
--- @field pollution_per_tree_damage double Defaults to `50`.
--- @field pollution_restored_per_tree_damage double Defaults to `10`.
--- @field max_pollution_to_restore_trees double Defaults to `20`.
--- @field enemy_attack_pollution_consumption_modifier double Defaults to `1`.


--- @shape EnemyEvolutionMapSettings
--- These values represent a percentual increase in evolution. This means a value of `0.1` would increase evolution by
--- 10%.
--- @field enabled boolean               Whether enemy evolution is enabled at all.
--- @field time_factor double            The amount evolution naturally progresses by every second. Defaults to `0.000004`.
--- @field destroy_factor double         The amount evolution progresses for every destroyed spawner. Defaults to `0.002`.
--- @field pollution_factor double       The amount evolution progresses for every unit of pollution. Defaults to `0.0000009`.


--- @shape EnemyExpansionMapSettings
--- Candidate chunks are given scores to determine which one of them should be expanded into. This score takes into
--- account various settings noted below. The iteration is over a square region centered around the chunk for which the
--- calculation is done, and includes the central chunk as well. Distances are calculated as Manhattan distance.
--- The pseudocode algorithm to determine a chunk's score is as follows:
--- ```
--- player = 0
--- for neighbour in all chunks within enemy_building_influence_radius from chunk:
---   player += number of player buildings on neighbour
---           * building_coefficient
---           * neighbouring_chunk_coefficient^distance(chunk, neighbour)
--- base = 0
--- for neighbour in all chunk within friendly_base_influence_radius from chunk:
---   base += num of enemy bases on neighbour
---           * other_base_coefficient
---           * neighbouring_base_chunk_coefficient^distance(chunk, neighbour)
--- score(chunk) = 1 / (1 + player + base)
--- ```
--- @field enabled boolean               Whether enemy expansion is enabled at all.
--- @field max_expansion_distance uint   Distance in chunks from the furthest base around to prevent expansions from reaching too far into the player's territory. Defaults to `7`.
--- @field friendly_base_influence_radius uint Defaults to `2`.
--- @field enemy_building_influence_radius uint Defaults to `2`.
--- @field building_coefficient double   Defaults to `0.1`.
--- @field other_base_coefficient double Defaults to `2.0`.
--- @field neighbouring_chunk_coefficient double Defaults to `0.5`.
--- @field neighbouring_base_chunk_coefficient double Defaults to `0.4`.
--- @field max_colliding_tiles_coefficient double A chunk has to have at most this high of a percentage of unbuildable tiles for it to be considered a candidate to avoid chunks full of water as candidates. Defaults to `0.9`, or 90%.
--- @field settler_group_min_size uint   The minimum size of a biter group that goes to build a new base. This is multiplied by the evolution factor. Defaults to `5`.
--- @field settler_group_max_size uint   The maximum size of a biter group that goes to build a new base. This is multiplied by the evolution factor. Defaults to `20`.
--- @field min_expansion_cooldown uint   The minimum time between expansions in ticks. The actual cooldown is adjusted to the current evolution levels. Defaults to `4*3,600=14,400` ticks.
--- @field max_expansion_cooldown uint   The maximum time between expansions in ticks. The actual cooldown is adjusted to the current evolution levels. Defaults to `60*3,600=216,000` ticks.


--- @shape UnitGroupMapSettings
--- @field min_group_gathering_time uint The minimum amount of time in ticks a group will spend gathering before setting off. The actual time is a random time between the minimum and maximum times. Defaults to `3,600` ticks.
--- @field max_group_gathering_time uint The maximum amount of time in ticks a group will spend gathering before setting off. The actual time is a random time between the minimum and maximum times. Defaults to `10*3,600=36,000` ticks.
--- @field max_wait_time_for_late_members uint After gathering has finished, the group is allowed to wait this long in ticks for delayed members. New members are not accepted anymore however. Defaults to `2*3,600=7,200` ticks.
--- @field min_group_radius double       The minimum group radius in tiles. The actual radius is adjusted based on the number of members. Defaults to `5.0`.
--- @field max_group_radius double       The maximum group radius in tiles. The actual radius is adjusted based on the number of members. Defaults to `30.0`.
--- @field max_member_speedup_when_behind double The maximum speed a percentage of its regular speed that a group member can speed up to when catching up with the group. Defaults to `1.4`, or 140%.
--- @field max_member_slowdown_when_ahead double The minimum speed a percentage of its regular speed that a group member can slow down to when ahead of the group. Defaults to `0.6`, or 60%.
--- @field max_group_slowdown_factor double The minimum speed as a percentage of its maximum speed that a group will slow down to so members that fell behind can catch up. Defaults to `0.3`, or 30%.
--- @field max_group_member_fallback_factor double When a member of a group falls back more than this factor times the group radius, the group will slow down to its `max_group_slowdown_factor` speed to let them catch up. Defaults to `3`.
--- @field member_disown_distance double When a member of a group falls back more than this factor times the group radius, it will be dropped from the group. Defaults to `10`.
--- @field tick_tolerance_when_member_arrives uint 
--- @field max_gathering_unit_groups uint The maximum number of automatically created unit groups gathering for attack at any time. Defaults to `30`.
--- @field max_unit_group_size uint      The maximum number of members for an attack unit group. This only affects automatically created unit groups, manual groups created through the API are unaffected. Defaults to `200`.


--- @shape SteeringMapSetting
--- @field radius double                 Does not include the radius of the unit.
--- @field separation_factor double      
--- @field separation_force double       
--- @field force_unit_fuzzy_goto_behavior boolean Used to make steering look better for aesthetic purposes.


--- @shape SteeringMapSettings
--- @field default SteeringMapSetting    
--- @field moving SteeringMapSetting     


--- @shape PathFinderMapSettings
--- @field fwd2bwd_ratio uint            The pathfinder performs a step of the backward search every `fwd2bwd_ratio`'th step. The minimum allowed value is `2`, which means symmetric search. The default value is `5`.
--- @field goal_pressure_ratio double    When looking at which node to check next, their heuristic value is multiplied by this ratio. The higher it is, the more the search is directed straight at the goal. Defaults to `2`.
--- @field max_steps_worked_per_tick double The maximum number of nodes that are expanded per tick. Defaults to `1,000`.
--- @field max_work_done_per_tick uint   The maximum amount of work each pathfinding job is allowed to do per tick. Defaults to `8,000`.
--- @field use_path_cache boolean        Whether to cache paths at all. Defaults to `true`.
--- @field short_cache_size uint         Number of elements in the short cache. Defaults to `5`.
--- @field long_cache_size uint          Number of elements in the long cache. Defaults to `25`.
--- @field short_cache_min_cacheable_distance double The minimal distance to the goal in tiles required to be searched in the short path cache. Defaults to `10`.
--- @field short_cache_min_algo_steps_to_cache uint The minimal number of nodes required to be searched in the short path cache. Defaults to `50`.
--- @field long_cache_min_cacheable_distance double The minimal distance to the goal in tiles required to be searched in the long path cache. Defaults to `30`.
--- @field cache_max_connect_to_cache_steps_multiplier uint When looking for a connection to a cached path, search at most for this number of steps times the original estimate. Defaults to `100`.
--- @field cache_accept_path_start_distance_ratio double When looking for a path from cache, make sure it doesn't start too far from the requested start in relative terms. Defaults to `0.2`.
--- @field cache_accept_path_end_distance_ratio double When looking for a path from cache, make sure it doesn't end too far from the requested end in relative terms. This is typically more lenient than the start ratio since the end target could be moving. Defaults to `0.15`.
--- @field negative_cache_accept_path_start_distance_ratio double Same principle as `cache_accept_path_start_distance_ratio`, but used for negative cache queries. Defaults to `0.3`.
--- @field negative_cache_accept_path_end_distance_ratio double Same principle as `cache_accept_path_end_distance_ratio`, but used for negative cache queries. Defaults to `0.3`.
--- @field cache_path_start_distance_rating_multiplier double When assigning a rating to the best path, this multiplier times start distances is considered. Defaults to `10`.
--- @field cache_path_end_distance_rating_multiplier double When assigning a rating to the best path, this multiplier times end distances is considered. This value is typically higher than the start multiplier as this results in better end path quality. Defaults to `20`.
--- @field stale_enemy_with_same_destination_collision_penalty double A penalty that is applied for another unit that is on the way to the goal. This is mainly relevant for situations where a group of units has arrived at the target they are supposed to attack, making units further back circle around to reach the target. Defaults to `30`.
--- @field ignore_moving_enemy_collision_distance double The distance in tiles after which other moving units are not considered for pathfinding. Defaults to `5`.
--- @field enemy_with_different_destination_collision_penalty double A penalty that is applied for another unit that is too close and either not moving or has a different goal. Defaults to `30`.
--- @field general_entity_collision_penalty double The general collision penalty with other units. Defaults to `10`.
--- @field general_entity_subsequent_collision_penalty double The collision penalty for positions that require the destruction of an entity to get to. Defaults to `3`.
--- @field extended_collision_penalty double The collision penalty for collisions in the extended bounding box but outside the entity's actual bounding box. Defaults to `3`.
--- @field max_clients_to_accept_any_new_request uint The amount of path finder requests accepted per tick regardless of the requested path's length. Defaults to `10`.
--- @field max_clients_to_accept_short_new_request uint When the `max_clients_to_accept_any_new_request` amount is exhausted, only path finder requests with a short estimate will be accepted until this amount (per tick) is reached. Defaults to `100`.
--- @field direct_distance_to_consider_short_request uint The maximum direct distance in tiles before a request is no longer considered short. Defaults to `100`.
--- @field short_request_max_steps uint  The maximum amount of nodes a short request will traverse before being rescheduled as a long request. Defaults to `1000`.
--- @field short_request_ratio double    The amount of steps that are allocated to short requests each tick, as a percentage of all available steps. Defaults to `0.5`, or 50%.
--- @field min_steps_to_check_path_find_termination uint The minimum amount of steps that are guaranteed to be performed for every request. Defaults to `2000`.
--- @field start_to_goal_cost_multiplier_to_terminate_path_find double If the actual amount of steps is higher than the initial estimate by this factor, pathfinding is terminated. Defaults to `2000.0`.
--- @field overload_levels uint[]        The thresholds of waiting clients after each of which the per-tick work limit will be increased by the corresponding value in `overload_multipliers`. This is to avoid clients having to wait too long. Must have the same number of elements as `overload_multipliers`. Defaults to `{0, 100, 500}`.
--- @field overload_multipliers double[] The multipliers to the amount of per-tick work applied after the corresponding thresholds in `overload_levels` have been reached. Must have the same number of elements as `overload_multipliers`. Defaults to `{2, 3, 4}`.
--- @field negative_path_cache_delay_interval uint The delay in ticks between decrementing the score of all paths in the negative cache by one. Defaults to `20`.


--- @shape MapSettings
--- Various game-related settings. Updating any of the attributes will immediately take effect in the game engine.
--- @field pollution PollutionMapSettings 
--- @field enemy_evolution EnemyEvolutionMapSettings 
--- @field enemy_expansion EnemyExpansionMapSettings 
--- @field unit_group UnitGroupMapSettings 
--- @field steering SteeringMapSettings  
--- @field path_finder PathFinderMapSettings 
--- @field max_failed_behavior_count uint If a behavior fails this many times, the enemy (or enemy group) is destroyed. This solves biters getting stuck within their own base.

--[[
Increase the number of short paths the pathfinder can cache.  ``` game.map_settings.path_finder.short_cache_size = 15
```
--]]


--- @shape DifficultySettings
--- Technology and recipe difficulty settings. Updating any of the attributes will immediately take effect in the game
--- engine.
--- @field recipe_difficulty defines_difficulty_settings_recipe_difficulty 
--- @field technology_difficulty defines_difficulty_settings_technology_difficulty 
--- @field technology_price_multiplier double A value in range [0.001, 1000].
--- @field research_queue_setting string Either `"after-victory"`, `"always"` or `"never"`. Changing this to `"always"` or `"after-victory"` does not automatically unlock the research queue. See [LuaForce](LuaForce) for that.


--- @shape MapAndDifficultySettings
--- All regular MapSettings plus an additional table that contains the DifficultySettings.
--- 
--- @see DifficultySettings @
--- @see MapSettings @
--- @field pollution PollutionMapSettings 
--- @field enemy_evolution EnemyEvolutionMapSettings 
--- @field enemy_expansion EnemyExpansionMapSettings 
--- @field unit_group UnitGroupMapSettings 
--- @field steering SteeringMapSettings  
--- @field path_finder PathFinderMapSettings 
--- @field max_failed_behavior_count uint If a behavior fails this many times, the enemy (or enemy group) is destroyed. This solves biters getting stuck within their own base.
--- @field difficulty_settings DifficultySettings 


--- @shape MapExchangeStringData
--- The data that can be extracted from a map exchange string, as a plain table.
--- @field map_settings MapAndDifficultySettings 
--- @field map_gen_settings MapGenSettings 


--- @shape BlueprintItemIcon
--- @field name string                   Name of the item prototype whose icon should be used.
--- @field index uint                    Index of the icon in the blueprint icons slots. Has to be an integer in the range [1, 4].


--- @shape BlueprintSignalIcon
--- @field signal SignalID               The icon to use. It can be any item icon as well as any virtual signal icon.
--- @field index uint                    Index of the icon in the blueprint icons slots. Has to be an integer in the range [1, 4].


--- @shape BlueprintEntity
--- The representation of an entity inside of a blueprint. It has at least these fields, but can contain additional
--- ones depending on the kind of entity.
--- @field entity_number uint            The entity's unique identifier in the blueprint.
--- @field name string                   The prototype name of the entity.
--- @field position MapPosition          The position of the entity.
--- @field direction defines_direction | nil (Optional)  The direction the entity is facing. Only present for entities that can face in different directions and when the entity is not facing north.
--- @field tags Tags | nil               (Optional)  The entity tags of the entity, if there are any. Only relevant for entity ghosts.
--- @field items table<string, uint> | nil (Optional)  The items that the entity will request when revived, if there are any. It's a mapping of prototype names to amounts. Only relevant for entity ghosts.
--- @field connections BlueprintCircuitConnection | nil (Optional)  The circuit network connections of the entity, if there are any. Only relevant for entities that support circuit connections.
--- @field control_behavior BlueprintControlBehavior | nil (Optional)  The control behavior of the entity, if it has one. The format of the control behavior depends on the entity's type. Only relevant for entities that support control behaviors.
--- @field schedule TrainScheduleRecord[] | nil (Optional)  The schedule of the entity, if it has one. Only relevant for locomotives.


--- @shape Tile
--- @field position TilePosition         The position of the tile.
--- @field name string                   The prototype name of the tile.


--- @shape Fluid
--- @field name string                   Fluid prototype name of the fluid.
--- @field amount double                 Amount of the fluid.
--- @field temperature double | nil      (Optional)  The temperature. When reading from [LuaFluidBox](LuaFluidBox), this field will always be present. It is not necessary to specify it when writing, however. When not specified, the fluid will be set to the fluid's default temperature as specified in the fluid's prototype.


--- @shape Ingredient
--- @field type string                   `"item"` or `"fluid"`.
--- @field name string                   Prototype name of the required item or fluid.
--- @field amount double                 Amount of the item or fluid.
--- @field catalyst_amount uint | double | nil (Optional)  How much of this ingredient is a catalyst.
--- @field minimum_temperature double | nil (Optional)
--- @field maximum_temperature double | nil (Optional)


--- @shape Product
--- @field type string                   `"item"` or `"fluid"`.
--- @field name string                   Prototype name of the result.
--- @field amount double | nil           (Optional)  Amount of the item or fluid to give. If not specified, `amount_min`, `amount_max` and `probability` must all be specified.
--- @field amount_min uint | double | nil (Optional)  Minimal amount of the item or fluid to give. Has no effect when `amount` is specified.
--- @field amount_max uint | double | nil (Optional)  Maximum amount of the item or fluid to give. Has no effect when `amount` is specified.
--- @field probability double | nil      (Optional)  A value in range [0, 1]. Item or fluid is only given with this probability; otherwise no product is produced.
--- @field catalyst_amount uint | double | nil (Optional)  How much of this product is a catalyst.
--- @field temperature double | nil      (Optional)

--[[
Products of the "steel-chest" recipe (an array of Product):  ``` {{type="item", name="steel-chest", amount=1}} ```

Products of the "advanced-oil-processing" recipe:  ``` {{type="fluid", name="heavy-oil", amount=1},  {type="fluid",
name="light-oil", amount=4.5},  {type="fluid", name="petroleum-gas", amount=5.5}} ```

What a custom recipe would look like that had a probability of 0.5 to return a minimum amount of 1 and a maximum amount
of 5:  ``` {{type=0, name="custom-item", probability=0.5, amount_min=1, amount_max=5}} ```
--]]


--- @shape Loot
--- @field item string                   Item prototype name of the result.
--- @field probability double            Probability that any loot at all will drop, as a number in range [0, 1].
--- @field count_min double              Minimum amount of loot to drop.
--- @field count_max double              Maximum amount of loot to drop.


--- @shape TechnologyModifier
--- The effect that is applied when a technology is researched. It is a table that contains at least the field `type`.
--- @field type string                   Modifier type. Specifies which of the other fields will be available. Possible values are: `"inserter-stack-size-bonus"`, `"stack-inserter-capacity-bonus"`, `"laboratory-speed"`, `"character-logistic-trash-slots"`, `"maximum-following-robots-count"`, `"worker-robot-speed"`, `"worker-robot-storage"`, `"ghost-time-to-live"`, `"turret-attack"`, `"ammo-damage"`, `"give-item"`, `"gun-speed"`, `"unlock-recipe"`, `"character-crafting-speed"`, `"character-mining-speed"`, `"character-running-speed"`, `"character-build-distance"`, `"character-item-drop-distance"`, `"character-reach-distance"`, `"character-resource-reach-distance"`, `"character-item-pickup-distance"`, `"character-loot-pickup-distance"`, `"character-inventory-slots-bonus"`, `"deconstruction-time-to-live"`, `"max-failed-attempts-per-tick-per-construction-queue"`, `"max-successful-attempts-per-tick-per-construction-queue"`, `"character-health-bonus"`, `"mining-drill-productivity-bonus"`, `"train-braking-force-bonus"`, `"zoom-to-world-enabled"`, `"zoom-to-world-ghost-building-enabled"`, `"zoom-to-world-blueprint-enabled"`, `"zoom-to-world-deconstruction-planner-enabled"`, `"zoom-to-world-upgrade-planner-enabled"`, `"zoom-to-world-selection-tool-enabled"`, `"worker-robot-battery"`, `"laboratory-productivity"`, `"follower-robot-lifetime"`, `"artillery-range"`, `"nothing"`, `"character-additional-mining-categories"`, `"character-logistic-requests"`.
--- @field ammo_category string | nil    (Optional)
--- @field modifier double | nil         (Optional)
--- @field item string | nil             (Optional)
--- @field count uint | nil              (Optional)
--- @field turret_id string | nil        (Optional)
--- @field recipe string | nil           (Optional)
--- @field effect_description LocalisedString | nil (Optional)


--- @shape Offer
--- A single offer on a market entity.
--- @field price Ingredient[]            List of prices.
--- @field offer TechnologyModifier      The action that will take place when a player accepts the offer. Usually a `"give-item"` modifier.


--- @shape AutoplaceSpecification
--- Specifies how probability and richness are calculated when placing something on the map. Can be specified either
--- using `probability_expression` and `richness_expression` or by using all the other fields.
--- @field probability_expression NoiseExpression 
--- @field richness_expression NoiseExpression 
--- @field coverage double               
--- @field sharpness double              
--- @field max_probability double        
--- @field placement_density uint        
--- @field richness_base double          
--- @field richness_multiplier double    
--- @field richness_multiplier_distance_bonus double 
--- @field starting_area_size uint       
--- @field order string                  
--- @field default_enabled boolean       
--- @field peaks AutoplaceSpecificationPeak[] | nil (Optional)  
--- @field control string | nil          (Optional)  Control prototype name.
--- @field tile_restriction AutoplaceSpecificationRestriction[] | nil (Optional)  
--- @field force string                  
--- @field random_probability_penalty double 


--- @shape NoiseExpression
--- A fragment of a functional program used to generate coherent noise, probably for purposes related to terrain
--- generation. These can only be meaningfully written/modified during the data load phase. More detailed information
--- is found on the wiki.
--- @field type string                   Names the type of the expression and determines what other fields are required.


--- @shape AutoplaceSpecificationPeak
--- @field influence double              
--- @field max_influence double          
--- @field min_influence double          
--- @field richness_influence double     
--- @field noisePersistence double       
--- @field noise_layer string | nil      (Optional)  Prototype name of the noise layer.
--- @field noise_octaves_difference double 
--- @field water_optimal double          
--- @field water_range double            
--- @field water_max_range double        
--- @field water_top_property_limit double 
--- @field elevation_optimal double      
--- @field elevation_range double        
--- @field elevation_max_range double    
--- @field elevation_top_property_limit double 
--- @field temperature_optimal double    
--- @field temperature_range double      
--- @field temperature_max_range double  
--- @field temperature_top_property_limit double 
--- @field starting_area_weight_optimal double 
--- @field starting_area_weight_range double 
--- @field starting_area_weight_max_range double 
--- @field starting_area_weight_top_property_limit double 
--- @field tier_from_start_optimal double 
--- @field tier_from_start_range double  
--- @field tier_from_start_max_range double 
--- @field tier_from_start_top_property_limit double 
--- @field distance_optimal double       
--- @field distance_range double         
--- @field distance_max_range double     
--- @field distance_top_property_limit double 
--- @field aux_optimal double            
--- @field aux_range double              
--- @field aux_max_range double          
--- @field aux_top_property_limit double 


--- @shape AutoplaceSpecificationRestriction
--- @field first string | nil            (Optional)  Tile prototype name
--- @field second string | nil           (Optional)  Second prototype name


--- @shape Resistance
--- @field decrease float                Absolute damage decrease
--- @field percent float                 Percentual damage decrease


--- @shape MapGenSize
--- A floating point number specifying an amount.
--- For backwards compatibility, MapGenSizes can also be specified as one of the following strings, which will be
--- converted to a number (when queried, a number will always be returned):
--- - `"none"` - equivalent to `0`
--- - `"very-low"`, `"very-small"`, `"very-poor"` - equivalent to `1/2`
--- - `"low"`, `"small"`, `"poor"` - equivalent to `1/sqrt(2)`
--- - `"normal"`, `"medium"`, `"regular"` - equivalent to `1`
--- - `"high"`, `"big"`, `"good"` - equivalent to `sqrt(2)`
--- - `"very-high"`, `"very-big"`, `"very-good"` - equivalent to `2`
--- 
--- The map generation algorithm officially supports the range of values the in-game map generation screen shows
--- (specifically `0` and values from `1/6` to `6`). Values outside this range are not guaranteed to work as expected.


--- @shape AutoplaceSetting
--- @field frequency MapGenSize          
--- @field size MapGenSize               
--- @field richness MapGenSize           


--- @shape AutoplaceSettings
--- @field treat_missing_as_default boolean Whether missing autoplace names for this type should be default enabled.
--- @field settings table<string, AutoplaceSetting> 


--- @shape AutoplaceControl
--- @field frequency MapGenSize          For things that are placed as spots such as ores and enemy bases, frequency is generally proportional to number of spots placed per unit area. For continuous features such as forests, frequency is how compressed the probability function is over distance, i.e. the inverse of 'scale' (similar to terrain_segmentation). When the [LuaAutoplaceControlPrototype](LuaAutoplaceControlPrototype) is of the category `"terrain"`, then scale is shown in the map generator GUI instead of frequency.
--- @field size MapGenSize               For things that are placed as spots, size is proportional to the area of each spot. For continuous features, size affects how much of the map is covered with the thing, and is called 'coverage' in the GUI.
--- @field richness MapGenSize           Has different effects for different things, but generally affects the 'health' or density of a thing that is placed without affecting where it is placed. For trees, richness affects tree health. For ores, richness multiplies the amount of ore at any given tile in a patch. Metadata about autoplace controls (such as whether or not 'richness' does anything for them) can be found in the [LuaAutoplaceControlPrototype](LuaAutoplaceControlPrototype) by looking up `game.autoplace_control_prototypes[(control prototype name)]`, e.g. `game.autoplace_control_prototypes["enemy-base"].richness` is false, because enemy base autoplacement doesn't use richness.


--- @shape CliffPlacementSettings
--- @field name string                   Name of the cliff prototype.
--- @field cliff_elevation_0 float       Elevation at which the first row of cliffs is placed. The default is `10`, and this cannot be set from the map generation GUI.
--- @field cliff_elevation_interval float Elevation difference between successive rows of cliffs. This is inversely proportional to 'frequency' in the map generation GUI. Specifically, when set from the GUI the value is `40 / frequency`.
--- @field richness MapGenSize           Corresponds to 'continuity' in the GUI. This value is not used directly, but is used by the 'cliffiness' noise expression, which in combination with elevation and the two cliff elevation properties drives cliff placement (cliffs are placed when elevation crosses the elevation contours defined by `cliff_elevation_0` and `cliff_elevation_interval` when 'cliffiness' is greater than `0.5`). The default 'cliffiness' expression interprets this value such that larger values result in longer unbroken walls of cliffs, and smaller values (between `0` and `1`) result in larger gaps in cliff walls.


--- @shape MapGenSettings
--- The 'map type' dropdown in the map generation GUI is actually a selector for elevation generator. The base game
--- sets `property_expression_names.elevation` to `"0_16-elevation"` to reproduce terrain from 0.16 or to
--- `"0_17-island"` for the island preset. If generators are available for other properties, the 'map type' dropdown in
--- the GUI will be renamed to 'elevation' and shown along with selectors for the other selectable properties.
--- @field terrain_segmentation MapGenSize The inverse of 'water scale' in the map generator GUI. Lower `terrain_segmentation` increases the scale of elevation features (lakes, continents, etc). This behavior can be overridden with alternate elevation generators (see `property_expression_names`, below).
--- @field water MapGenSize              The equivalent to 'water coverage' in the map generator GUI. Specifically, when this value is non-zero, `water_level = 10 * log2` (the value of this field), and the elevation generator subtracts water level from elevation before adding starting lakes. If water is set to 'none', elevation is clamped to a small positive value before adding starting lakes. This behavior can be overridden with alternate elevation generators (see `property_expression_names`, below).
--- @field autoplace_controls table<string, AutoplaceControl> Indexed by autoplace control prototype name.
--- @field default_enable_all_autoplace_controls boolean Whether undefined `autoplace_controls` should fall back to the default controls or not. Defaults to `true`.
--- @field autoplace_settings table<string, AutoplaceSettings> Each setting in this dictionary maps the string type to the settings for that type. Valid types are `"entity"`, `"tile"` and `"decorative"`.
--- @field cliff_settings CliffPlacementSettings Map generation settings for entities of the type "cliff".
--- @field seed uint                     The random seed used to generated this map.
--- @field width uint                    Width in tiles. If `0`, the map has 'infinite' width, with the actual limitation being one million tiles in each direction from the center.
--- @field height uint                   Height in tiles. If `0`, the map has 'infinite' height, with the actual limitation being one million tiles in each direction from the center.
--- @field starting_area MapGenSize      Size of the starting area.
--- @field starting_points MapPosition[] Positions of the starting areas.
--- @field peaceful_mode boolean         Whether peaceful mode is enabled for this map.
--- @field property_expression_names table<string, string> Overrides for tile property value generators. Values either name a NamedNoiseExpression or can be literal numbers, stored as strings (e.g. `"5"`). All other controls can be overridden by a property expression names. Notable properties: 

--[[
Assuming a NamedNoiseExpression with the name "my-alternate-grass1-probability" is defined  ``` local surface =
game.player.surface local mgs = surface.map_gen_settings mgs.property_expression_names["tile:grass1:probability"] =
"my-alternate-grass1-probability" surface.map_gen_settings = mgs ```  would override the probability of grass1 being
placed at any given point on the current surface.

To make there be no deep water on (newly generated chunks) a surface:  ``` local surface = game.player.surface local mgs
= surface.map_gen_settings mgs.property_expression_names["tile:deepwater:probability"] = -1000 surface.map_gen_settings
= mgs ```  This does not require a NamedNoiseExpression to be defined, since literal numbers (and strings naming
literal numbers, e.g. `"123"`) are understood to stand for constant value expressions.
--]]


--- @shape SignalID
--- @field type string                   `"item"`, `"fluid"`, or `"virtual"`.
--- @field name string | nil             (Optional)  Name of the item, fluid or virtual signal.


--- @shape Signal
--- An actual signal transmitted by the network.
--- @field signal SignalID               ID of the signal.
--- @field count int                     Value of the signal.


--- @shape UpgradeFilter
--- @field type string                   `"item"`, or `"entity"`.
--- @field name string | nil             (Optional)  Name of the item, or entity.


--- @shape InfinityInventoryFilter
--- A single filter used by an infinity-filters instance.
--- @field name string                   Name of the item.
--- @field count uint | nil              (Optional)  The count of the filter.
--- @field mode string | nil             (Optional)  `"at-least"`, `"at-most"`, or `"exactly"`. Defaults to `"at-least"`.
--- @field index uint                    The index of this filter in the filters list.


--- @shape InfinityPipeFilter
--- A single filter used by an infinity-pipe type entity.
--- @field name string                   Name of the fluid.
--- @field percentage double | nil       (Optional)  The fill percentage the pipe (e.g. 0.5 for 50%). Can't be negative.
--- @field temperature double | nil      (Optional)  The temperature of the fluid. Defaults to the default/minimum temperature of the fluid.
--- @field mode string | nil             (Optional)  `"at-least"`, `"at-most"`, `"exactly"`, `"add"`, or `"remove"`. Defaults to `"at-least"`.


--- @shape FluidBoxFilter
--- @field name string                   Fluid prototype name of the filtered fluid.
--- @field minimum_temperature double    The minimum temperature allowed into the fluidbox.
--- @field maximum_temperature double    The maximum temperature allowed into the fluidbox.


--- @shape FluidBoxFilterSpec
--- @field name string                   Fluid prototype name of the filtered fluid.
--- @field minimum_temperature double | nil (Optional)  The minimum temperature allowed into the fluidbox.
--- @field maximum_temperature double | nil (Optional)  The maximum temperature allowed into the fluidbox.
--- @field force boolean | nil           (Optional)  Force the filter to be set, regardless of current fluid content.


--- @shape HeatSetting
--- The settings used by a heat-interface type entity.
--- @field temperature double | nil      (Optional)  The target temperature. Defaults to the minimum temperature of the heat buffer.
--- @field mode string | nil             (Optional)  `"at-least"`, `"at-most"`, `"exactly"`, `"add"`, or `"remove"`. Defaults to `"at-least"`.


--- @shape HeatConnection
--- @field position Vector               
--- @field direction defines_direction   


--- @shape FluidBoxConnection
--- A definition of a fluidbox connection point.
--- @field type string                   The connection type: "input", "output", or "input-output".
--- @field positions Vector[]            The 4 cardinal direction connection points for this pipe. This vector is a table with `x` and `y` keys instead of an array.
--- @field max_underground_distance uint | nil (Optional)  The maximum tile distance this underground connection can connect at if this is an underground pipe.


--- @shape ArithmeticCombinatorParameters
--- @field first_signal SignalID | nil   (Optional)  First signal to use in an operation. If not specified, the second argument will be the value of `first_constant`.
--- @field second_signal SignalID | nil  (Optional)  Second signal to use in an operation. If not specified, the second argument will be the value of `second_constant`.
--- @field first_constant int | nil      (Optional)  Constant to use as the first argument of the operation. Has no effect when `first_signal` is set. Defaults to `0`.
--- @field second_constant int | nil     (Optional)  Constant to use as the second argument of the operation. Has no effect when `second_signal` is set. Defaults to `0`.
--- @field operation string | nil        (Optional)  Must be one of `"*"`, `"/"`, `"+"`, `"-"`, `"%"`, `"^"`, `"<<"`, `">>"`, `"AND"`, `"OR"`, `"XOR"`. When not specified, defaults to `"*"`.
--- @field output_signal SignalID | nil  (Optional)  Specifies the signal to output.


--- @shape ConstantCombinatorParameters
--- @field signal SignalID               Signal to emit.
--- @field count int                     Value of the signal to emit.
--- @field index uint                    Index of the constant combinator's slot to set this signal to.


--- @alias ComparatorString "=" | ">" | "<" | "≥" | ">=" | "≤" | "<=" | "≠" | "!="

---  - =                                "equal to"
---  - >                                "greater than"
---  - <                                "lesser than"
---  - ≥                                "greater than or equal to"
---  - >=                               "greater than or equal to"
---  - ≤                                "lesser than or equal to"
---  - <=                               "lesser than or equal to"
---  - ≠                                "not equal to"
---  - !=                               "not equal to"
--- 
--- While the API accepts both versions for `"less/greater than or equal to"` and `"not equal"`, it'll always return
--- `"≥"`, `"≤"` or `"≠"` respectively when reading them back.


--- @shape DeciderCombinatorParameters
--- @field first_signal SignalID | nil   (Optional)  Defaults to blank.
--- @field second_signal SignalID | nil  (Optional)  Second signal to use in an operation, if any. If this is not specified, the second argument to a decider combinator's operation is assumed to be the value of `constant`.
--- @field constant uint | nil           (Optional)  Constant to use as the second argument of operation. Defaults to `0`.
--- @field comparator ComparatorString | nil (Optional)  Specifies how the inputs should be compared. If not specified, defaults to `"<"`.
--- @field output_signal SignalID | nil  (Optional)  Defaults to blank.
--- @field copy_count_from_input boolean | nil (Optional)  Defaults to `true`. When `false`, will output a value of `1` for the given `output_signal`.


--- @shape InserterCircuitConditions
--- @field circuit CircuitCondition | nil (Optional)  
--- @field logistics CircuitCondition | nil (Optional)  


--- @shape CircuitCondition
--- @field comparator ComparatorString | nil (Optional)  Specifies how the inputs should be compared. If not specified, defaults to `"<"`.
--- @field first_signal SignalID | nil   (Optional)  Defaults to blank
--- @field second_signal SignalID | nil  (Optional)  What to compare `first_signal` to. If not specified, `first_signal` will be compared to `constant`.
--- @field constant int | nil            (Optional)  Constant to compare `first_signal` to. Has no effect when `second_signal` is set. When neither `second_signal` nor `constant` are specified, the effect is as though `constant` were specified with the value `0`.


--- @shape CircuitConditionDefinition
--- @field condition CircuitCondition    
--- @field fulfilled boolean | nil       (Optional)  Whether the condition is currently fulfilled


--- @shape CircuitConnectionDefinition
--- @field wire defines_wire_type        Wire color, either [defines.wire_type.red](defines.wire_type.red) or [defines.wire_type.green](defines.wire_type.green).
--- @field target_entity LuaEntity       
--- @field source_circuit_id defines_circuit_connector_id 
--- @field target_circuit_id defines_circuit_connector_id 


--- @shape WireConnectionDefinition
--- @field wire defines_wire_type        Wire color, either [defines.wire_type.red](defines.wire_type.red) or [defines.wire_type.green](defines.wire_type.green).
--- @field target_entity LuaEntity       The entity to (dis)connect the source entity with.
--- @field source_circuit_id defines_circuit_connector_id | nil (Optional)  Mandatory if the source entity has more than one circuit connection using circuit wire.
--- @field target_circuit_id defines_circuit_connector_id | nil (Optional)  Mandatory if the target entity has more than one circuit connection using circuit wire.
--- @field source_wire_id defines_circuit_connector_id | nil (Optional)  Mandatory if the source entity has more than one wire connection using copper wire.
--- @field target_wire_id defines_circuit_connector_id | nil (Optional)  Mandatory if the target entity has more than one wire connection using copper wire.


--- @shape InventoryFilter
--- @field index uint                    Position of the corresponding filter slot.
--- @field name string                   Item prototype name of the item to filter.


--- @shape PlaceAsTileResult
--- @field result LuaTilePrototype       The tile prototype.
--- @field condition_size uint           
--- @field condition CollisionMask       


--- @shape Command
--- Commands can be given to enemies and unit groups.
--- @field type defines_command          Type of command. The remaining fields depend on the value of this field.
--- @field target LuaEntity | nil        (Optional)
--- @field distraction defines_distraction | nil (Optional)
--- @field destination MapPosition | nil (Optional)
--- @field destination_entity LuaEntity | nil (Optional)
--- @field pathfind_flags PathfinderFlags | nil (Optional)
--- @field radius double | nil           (Optional)
--- @field structure_type defines_compound_command | nil (Optional)
--- @field commands Command[] | nil      (Optional)
--- @field group LuaUnitGroup | nil      (Optional)
--- @field use_group_distraction boolean | nil (Optional)
--- @field wander_in_group boolean | nil (Optional)
--- @field ticks_to_wait uint | nil      (Optional)
--- @field from LuaEntity | nil          (Optional)
--- @field ignore_planner boolean | nil  (Optional)


--- @shape PathfinderFlags
--- @field allow_destroy_friendly_entities boolean | nil (Optional)  Allows pathing through friendly entities. Defaults to `false`.
--- @field allow_paths_through_own_entities boolean | nil (Optional)  Allows the pathfinder to path through entities of the same force. Defaults to `false`.
--- @field cache boolean | nil           (Optional)  Enables path caching. This can be more efficient, but might fail to respond to changes in the environment. Defaults to `true`.
--- @field prefer_straight_paths boolean | nil (Optional)  Makes the pathfinder try to path in straight lines. Defaults to `false`.
--- @field low_priority boolean | nil    (Optional)  Sets lower priority on the path request, meaning it might take longer to find a path at the expense of speeding up others. Defaults to `false`.
--- @field no_break boolean | nil        (Optional)  Makes the pathfinder not break in the middle of processing this pathfind, no matter how much work is needed. Defaults to `false`.


--- @shape UnitSpawnDefinition
--- @field unit string                   Prototype name of the unit that would be spawned.
--- @field spawn_points SpawnPointDefinition[] The points at which to spawn the unit.


--- @shape SpawnPointDefinition
--- @field evolution_factor double       Evolution factor for which this weight applies.
--- @field weight double                 Probability of spawning this unit at this evolution factor.


--- @shape ItemStackDefinition
--- @field name string                   Prototype name of the item the stack holds.
--- @field count uint | nil              (Optional)  Number of items the stack holds. If not specified, defaults to `1`.
--- @field health float | nil            (Optional)  Health of the items in the stack. Defaults to `1.0`.
--- @field durability double | nil       (Optional)  Durability of the tool items in the stack.
--- @field ammo double | nil             (Optional)  Amount of ammo in the ammo items in the stack.
--- @field tags string[] | nil           (Optional)  Tags of the items with tags in the stack.


--- @alias SimpleItemStack string | ItemStackDefinition

---  - string:                          The name of the item, which represents a full stack of that item.
---  - ItemStackDefinition:             The detailed definition of an item stack.

--[[
Both of these lines specify an item stack of one iron plate:  ``` {name="iron-plate"} ```   ``` {name="iron-plate",
count=1} ```

This is a stack of 47 copper plates:  ``` {name="copper-plate", count=47} ```

These are both full stacks of iron plates (for iron-plate, a full stack is 100 plates):  ``` "iron-plate" ```   ```
{name="iron-plate", count=100} ```
--]]


--- @alias FluidIdentification string | LuaFluidPrototype | Fluid

---  - string:                          The fluid name.
---  - LuaFluidPrototype:               The fluid prototype.
---  - Fluid:                           The fluid.


--- @alias ForceIdentification string | LuaForce

---  - string:                          The force name.
---  - LuaForce:                        A reference to [LuaForce](LuaForce) may be passed directly.


--- @alias TechnologyIdentification string | LuaTechnology | LuaTechnologyPrototype

---  - string:                          The technology name.
---  - LuaTechnology:                   A reference to [LuaTechnology](LuaTechnology) may be passed directly.
---  - LuaTechnologyPrototype:          A reference to [LuaTechnologyPrototype](LuaTechnologyPrototype) may be passed
---     directly.


--- @alias SurfaceIdentification uint | string | LuaSurface

---  - uint:                            It will be the index of the surface. `nauvis` has index `1`, the first surface-
---     created surface will have index `2` and so on.
---  - string:                          It will be the surface name. E.g. `"nauvis"`.
---  - LuaSurface:                      A reference to [LuaSurface](LuaSurface) may be passed directly.


--- @alias PlayerIdentification uint | string | LuaPlayer

---  - uint:                            The player index.
---  - string:                          The player name.
---  - LuaPlayer:                       A reference to [LuaPlayer](LuaPlayer) may be passed directly.


--- @alias ItemStackIdentification SimpleItemStack | LuaItemStack


--- @alias EntityPrototypeIdentification LuaEntity | LuaEntityPrototype | string

---  - LuaEntity:                       The entity.
---  - LuaEntityPrototype:              The entity prototype.
---  - string:                          The prototype name.


--- @alias ItemPrototypeIdentification LuaItemStack | LuaItemPrototype | string

---  - LuaItemStack:                    The item.
---  - LuaItemPrototype:                The item prototype.
---  - string:                          The prototype name.


--- @shape WaitCondition
--- @field type string                   One of `"time"`, `"inactivity"`, `"full"`, `"empty"`, `"item_count"`, `"circuit"`, `"robots_inactive"`, `"fluid_count"`, `"passenger_present"`, `"passenger_not_present"`.
--- @field compare_type string           Either `"and"`, or `"or"`. Tells how this condition is to be compared with the preceding conditions in the corresponding `wait_conditions` array.
--- @field ticks uint | nil              (Optional)  Number of ticks to wait or of inactivity. Only present when `type` is `"time"` or `"inactivity"`.
--- @field condition CircuitCondition | nil (Optional)  Only present when `type` is `"item_count"`, `"circuit"` or `"fluid_count"`.


--- @shape TrainScheduleRecord
--- @field station string | nil          (Optional)  Name of the station.
--- @field rail LuaEntity | nil          (Optional)  Rail to path to. Ignored if `station` is present.
--- @field rail_direction defines_rail_direction | nil (Optional)  When a train is allowed to reach rail target from any direction it will be `nil`. If rail has to be reached from specific direction, this value allows to choose the direction. This value corresponds to [LuaEntity::connected_rail_direction](LuaEntity::connected_rail_direction) of a TrainStop.
--- @field wait_conditions WaitCondition[] | nil (Optional)  
--- @field temporary boolean | nil       (Optional)  Only present when the station is temporary, the value is then always `true`.


--- @shape TrainSchedule
--- @field current uint                  Index of the currently active record
--- @field records TrainScheduleRecord[] 


--- @shape GuiArrowSpecification
--- Used for specifying where a GUI arrow should point to.
--- @field type string                   This determines which of the following fields will be required. Must be one of `"nowhere"` (will remove the arrow entirely), `"goal"` (will point to the current goal), `"entity_info"`, `"active_window"`, `"entity"`, `"position"`, `"crafting_queue"` or `"item_stack"` (will point to a given item stack in an inventory). Depending on this value, other fields may have to be specified.
--- @field entity LuaEntity | nil        (Optional)
--- @field position MapPosition | nil    (Optional)
--- @field crafting_queueindex uint | nil (Optional)
--- @field inventory_index defines_inventory | nil (Optional)
--- @field item_stack_index uint | nil   (Optional)
--- @field source string | nil           (Optional)


--- @shape AmmoType
--- @field action TriggerItem[] | nil    (Optional)  
--- @field target_type string            One of `"entity"` (fires at an entity), `"position"` (fires directly at a position), or `"direction"` (fires in a direction).
--- @field clamp_position boolean | nil  (Optional)  When `true`, the gun will be able to shoot even when the target is out of range. Only applies when `target_type` is `position`. The gun will fire at the maximum range in the direction of the target position. Defaults to `false`.
--- @field category string               Ammo category of this ammo.
--- @field energy_consumption double | nil (Optional)  Energy consumption of a single shot, if applicable. Defaults to `0`.


--- @shape BeamTarget
--- @field entity LuaEntity | nil        (Optional)  The target entity.
--- @field position MapPosition | nil    (Optional)  The target position.


--- @shape RidingState
--- @field acceleration defines_riding_acceleration 
--- @field direction defines_riding_direction 


--- @alias SpritePath string
--- It is specified by string. It can be either the name of a sprite prototype defined in the data stage or a path in
--- form "type/name".
--- The supported types are:
--- - `"item"` - for example "item/iron-plate" is the icon sprite of iron plate
--- - `"entity"` - for example "entity/small-biter" is the icon sprite of the small biter
--- - `"technology"`
--- - `"recipe"`
--- - `"item-group"`
--- - `"fluid"`
--- - `"tile"`
--- - `"virtual-signal"`
--- - `"achievement"`
--- - `"equipment"`
--- - `"file"` - path to an image file located inside the current scenario. This file is not preloaded so it will be
--- slower; for frequently used sprites, it is better to define sprite prototype and use it instead.
--- - `"utility"` - sprite defined in the utility-sprites object, these are the pictures used by the game internally
--- for the UI.
--- 
--- @see string @


--- @shape SoundPath
--- A sound defined by a string. It can be either the name of a sound prototype defined in the data stage or a path in
--- the form `"type/name"`. The latter option can be sorted into three categories.
--- The utility and ambient types each contain general use sound prototypes defined by the game itself.
--- - `"utility"` - Uses the UtilitySounds prototype. Example: `"utility/wire_connect_pole"`
--- - `"ambient"` - Uses AmbientSound prototypes. Example: `"ambient/resource-deficiency"`
--- The following types can be combined with any tile name as long as its prototype defines the
---     corresponding sound.
--- - `"tile-walking"` - Uses [Tile::walking_sound](https://wiki.factorio.com/Prototype/Tile#walking_sound). Example:
--- `"tile-walking/concrete"`
--- - `"tile-mined"` - Uses [Tile::mined_sound](https://wiki.factorio.com/Prototype/Tile#mined_sound)
--- - `"tile-build-small"` - Uses [Tile::build_sound](https://wiki.factorio.com/Prototype/Tile#build_sound). Example:
--- `"tile-build-small/concrete"`
--- - `"tile-build-medium"` - Uses [Tile::build_sound](https://wiki.factorio.com/Prototype/Tile#build_sound)
--- - `"tile-build-large"` - Uses [Tile::build_sound](https://wiki.factorio.com/Prototype/Tile#build_sound)
--- The following types can be combined with any entity name as long as its prototype defines the
---     corresponding sound.
--- - `"entity-build"` - Uses [Entity::build_sound](https://wiki.factorio.com/Prototype/Entity#build_sound). Example:
--- `"entity-build/wooden-chest"`
--- - `"entity-mined"` - Uses [Entity::mined_sound](https://wiki.factorio.com/Prototype/Entity#mined_sound)
--- - `"entity-mining"` - Uses [Entity::mining_sound](https://wiki.factorio.com/Prototype/Entity#mining_sound)
--- - `"entity-vehicle_impact"` - Uses
--- [Entity::vehicle_impact_sound](https://wiki.factorio.com/Prototype/Entity#vehicle_impact_sound)
--- - `"entity-rotated"` - Uses [Entity::rotated_sound](https://wiki.factorio.com/Prototype/Entity#rotated_sound)
--- - `"entity-open"` - Uses [Entity::open_sound](https://wiki.factorio.com/Prototype/Entity#open_sound)
--- - `"entity-close"` - Uses [Entity::close_sound](https://wiki.factorio.com/Prototype/Entity#close_sound)
--- 
--- @see string @


--- @shape ModuleEffectValue
--- @field bonus float                   The percentual increase of the attribute. A value of `0.6` means a 60% increase.


--- @shape ModuleEffects
--- @field consumption ModuleEffectValue | nil (Optional)  
--- @field speed ModuleEffectValue | nil (Optional)  
--- @field productivity ModuleEffectValue | nil (Optional)  
--- @field pollution ModuleEffectValue | nil (Optional)  

--[[
These are the effects of the vanilla Productivity Module 3 (up to floating point imprecisions):  ```
{consumption={bonus=0.6},  speed={bonus=-0.15},  productivity={bonus=0.06},  pollution={bonus=0.075}} ```
--]]


--- @alias EntityPrototypeFlags table<EntityPrototypeFlags_val, boolean>
--- This is a set of flags given as a dictionary[string &rarr; boolean]. When a flag is set, it is present in the
--- dictionary with the value `true`. Unset flags aren't present in the dictionary at all. So, the boolean value is
--- meaningless and exists just for easy table lookup if a flag is set.
--- 
--- @see boolean @
--- @see string @
--- @alias EntityPrototypeFlags_val string | '"not-rotatable"' | '"placeable-neutral"' | '"placeable-player"' | '"placeable-enemy"' | '"placeable-off-grid"' | '"player-creation"' | '"building-direction-8-way"' | '"filter-directions"' | '"fast-replaceable-no-build-while-moving"' | '"breaths-air"' | '"not-repairable"' | '"not-on-map"' | '"not-deconstructable"' | '"not-blueprintable"' | '"hidden"' | '"hide-alt-info"' | '"fast-replaceable-no-cross-type-while-moving"' | '"no-gap-fill-while-building"' | '"not-flammable"' | '"no-automated-item-removal"' | '"no-automated-item-insertion"' | '"no-copy-paste"' | '"not-selectable-in-game"' | '"not-upgradable"' | '"not-in-kill-statistics"'


--- @alias ItemPrototypeFlags table<ItemPrototypeFlags_val, boolean>
--- This is a set of flags given as dictionary[string &rarr; boolean]. When a flag is set, it is present in the
--- dictionary with the value `true`. Unset flags aren't present in the dictionary at all. So, the boolean value is
--- meaningless and exists just for easy table lookup if a flag is set.
--- 
--- @see boolean @
--- @see string @
--- @alias ItemPrototypeFlags_val string | '"draw-logistic-overlay"' | '"hidden"' | '"always-show"' | '"hide-from-bonus-gui"' | '"hide-from-fuel-tooltip"' | '"not-stackable"' | '"can-extend-inventory"' | '"primary-place-result"' | '"mod-openable"' | '"only-in-cursor"' | '"spawnable"'


--- @shape CollisionMaskLayer
--- A string specifying a collision mask layer.
--- Possible values for the string are:
--- - `"ground-tile"`
--- - `"water-tile"`
--- - `"resource-layer"`
--- - `"doodad-layer"`
--- - `"floor-layer"`
--- - `"item-layer"`
--- - `"ghost-layer"`
--- - `"object-layer"`
--- - `"player-layer"`
--- - `"train-layer"`
--- - `"rail-layer"`
--- - `"transport-belt-layer"`
--- - `"not-setup"`
--- Additionally the values `"layer-13"` through `"layer-55"`. These layers are currently unused by the game but may
--- change. If a mod is going to use one of the unused layers it's recommended to start at the higher layers because
--- the base game will take from the lower ones.
--- 
--- @see string @


--- @shape CollisionMask
--- This is a set of masks given as a dictionary[CollisionMaskLayer &rarr; boolean]. Only set masks are present in the
--- dictionary and they have the value `true`. Unset flags aren't present at all.
--- 
--- @see boolean @
--- @see CollisionMaskLayer @


--- @shape CollisionMaskWithFlags
--- A CollisionMask which also includes any flags this mask has.
--- Flags such as:
--- - `"not-colliding-with-itself"`: Any two entities that both have this option enabled on their prototype and have an
--- identical collision mask layers list will not collide. Other collision mask options are not included in the
--- identical layer list check. This does mean that two different prototypes with the same collision mask layers and
--- this option enabled will not collide.
--- - `"consider-tile-transitions"`: Uses the prototypes position rather than its collision box when doing collision
--- checks with tile prototypes. Allows the prototype to overlap colliding tiles up until its center point. This is
--- only respected for character movement and cars driven by players.
--- - `"colliding-with-tiles-only"`: Any prototype with this collision option will only be checked for collision with
--- other prototype's collision masks if they are a tile.
--- 
--- @see CollisionMask @


--- @shape TriggerTargetMask
--- This is a set of trigger target masks given as a dictionary[string &rarr; boolean].
--- 
--- @see boolean @
--- @see string @


--- @shape TriggerEffectItem
--- @field type string                   One of`"damage"`, `"create-entity"`, `"create-explosion"`, `"create-fire"`, `"create-smoke"`, `"create-trivial-smoke"`, `"create-particle"`, `"create-sticker"`, `"nested-result"`, `"play-sound"`, `"push-back"`, `"destroy-cliffs"`, `"show-explosion-on-chart"`, `"insert-item"`, `"script"`.
--- @field repeat_count uint             
--- @field affects_target boolean        
--- @field show_in_tooltip boolean       


--- @shape TriggerDelivery
--- @field type string                   One of `"instant"`, `"projectile"`, `"flame-thrower"`, `"beam"`, `"stream"`, `"artillery"`.
--- @field source_effects TriggerEffectItem[] 
--- @field target_effects TriggerEffectItem[] 


--- @shape TriggerItem
--- @field type string                   One of `"direct"`, `"area"`, `"line"`, `"cluster"`.
--- @field action_delivery TriggerDelivery[] | nil (Optional)  
--- @field entity_flags EntityPrototypeFlags | nil (Optional)  The trigger will only affect entities that contain any of these flags.
--- @field ignore_collision_condition boolean 
--- @field collision_mask CollisionMask  The trigger will only affect entities that would collide with given collision mask.
--- @field trigger_target_mask TriggerTargetMask 
--- @field force ForceCondition          If `"enemy"`, the trigger will only affect entities whose force is different from the attacker's and for which there is no cease-fire set. `"ally"` is the opposite of `"enemy"`.
--- @field repeat_count uint             


--- @shape CircularParticleCreationSpecification
--- @field name string                   Name of the [LuaEntityPrototype](LuaEntityPrototype)
--- @field direction float               
--- @field direction_deviation float     
--- @field speed float                   
--- @field speed_deviation float         
--- @field starting_frame_speed float    
--- @field starting_frame_speed_deviation float 
--- @field height float                  
--- @field height_deviation float        
--- @field vertical_speed float          
--- @field vertical_speed_deviation float 
--- @field center Vector                 This vector is a table with `x` and `y` keys instead of an array.
--- @field creation_distance double      
--- @field creation_distance_orientation double 
--- @field use_source_position boolean   


--- @shape CircularProjectileCreationSpecification
--- An array with the following members:
--- - A RealOrientation
--- - A Vector
--- 
--- @see Vector @
--- @see RealOrientation @


--- @shape AttackParameterFluid
--- @field type string                   Name of the [LuaFluidPrototype](LuaFluidPrototype).
--- @field damage_modifier double        Multiplier applied to the damage of an attack.


--- @shape AttackParameters
--- @field type string                   The type of AttackParameter. One of `'projectile'`, `'stream'` or `'beam'`.
--- @field range float                   Maximum range of attack.
--- @field min_range float               Minimum range of attack. Used with flamethrower turrets to prevent self-immolation.
--- @field range_mode string             Defines how the range is determined. Either `'center-to-center'` or `'bounding-box-to-bounding-box'`.
--- @field fire_penalty float            When searching for the nearest enemy to attack, `fire_penalty` is added to the enemy's distance if they are on fire.
--- @field rotate_penalty float          When searching for an enemy to attack, a higher `rotate_penalty` will discourage targeting enemies that would take longer to turn to face.
--- @field health_penalty float          When searching for an enemy to attack, a higher `health_penalty` will discourage targeting enemies with high health. A negative penalty will do the opposite.
--- @field min_attack_distance float     If less than `range`, the entity will choose a random distance between `range` and `min_attack_distance` and attack from that distance. Used for spitters.
--- @field turn_range float              The arc that the entity can attack in as a fraction of a circle. A value of `1` means the full 360 degrees.
--- @field damage_modifier float         Multiplier applied to the damage of an attack.
--- @field ammo_consumption_modifier float Multiplier applied to the ammo consumption of an attack.
--- @field cooldown float                Minimum amount of ticks between shots. If this is less than `1`, multiple shots can be performed per tick.
--- @field warmup uint                   Number of ticks it takes for the weapon to actually shoot after it has been ordered to do so.
--- @field movement_slow_down_factor double 
--- @field movement_slow_down_cooldown float 
--- @field ammo_type AmmoType | nil      (Optional)  
--- @field ammo_categories string[] | nil (Optional)  List of the names of compatible [LuaAmmoCategoryPrototypes](LuaAmmoCategoryPrototype).
--- @field projectile_center Vector | nil (Optional)
--- @field projectile_creation_distance float | nil (Optional)
--- @field projectile_orientation_offset float | nil (Optional)
--- @field shell_particle CircularParticleCreationSpecification | nil (Optional)
--- @field projectile_creation_parameters CircularProjectileCreationSpecification[] | nil (Optional)
--- @field gun_barrel_length float | nil (Optional)
--- @field gun_center_shift table<string, Vector> | nil (Optional)
--- @field fluid_consumption float | nil (Optional)
--- @field fluids AttackParameterFluid[] | nil (Optional)


--- @shape CapsuleAction
--- @field type string                   One of `"throw"`, `"equipment-remote"`, `"use-on-self"`.
--- @field attack_parameters AttackParameters | nil (Optional)  Only present when `type` is `"throw"` or `"use-on-self"`.
--- @field equipment string | nil        (Optional)  Only present when `type` is `"equipment-remote"`. It is the equipment prototype name.


--- @alias SelectionModeFlags table<SelectionModeFlags_val, boolean>
--- This is a set of flags given as a dictionary[string &rarr; boolean]. Set flags are present in the dictionary with
--- the value `true`; unset flags aren't present at all.
--- 
--- @see boolean @
--- @see string @
--- @alias SelectionModeFlags_val string | '"blueprint"' | '"deconstruct"' | '"cancel-deconstruct"' | '"items"' | '"trees"' | '"buildable-type"' | '"nothing"' | '"items-to-place"' | '"any-entity"' | '"any-tile"' | '"same-force"' | '"not-same-force"' | '"friend"' | '"enemy"' | '"upgrade"' | '"cancel-upgrade"' | '"entity-with-health"' | '"entity-with-force"' | '"entity-with-owner"'

---  - "blueprint":                     Entities that can be selected for blueprint.
---  - "deconstruct":                   Entities that can be marked for deconstruction.
---  - "cancel-deconstruct":            Entities that can be marked for deconstruction cancelling.
---  - "buildable-type":                Buildable entities.
---  - "nothing":                       Only select an area.
---  - "items-to-place":                Entities that can be placed using an item.
---  - "same-force":                    Entities with the same force as the selector.


--- @shape LogisticFilter
--- @field index uint                    The index this filter applies to.
--- @field name string                   The item name for this filter.
--- @field count uint                    The count for this filter.


--- @shape ModSetting
--- @field value uint | double | boolean | string The value of the mod setting. The type depends on the setting.
--- 
--- Runtime settings can be changed through console commands and by the mod that owns the settings by writing a new
--- table to the ModSetting.


--- @shape AnyBasic
--- Any basic type (string, number, boolean) or table.


--- @shape Any
--- Any basic type (string, number, boolean), table, or LuaObject.


--- @shape ProgrammableSpeakerParameters
--- @field playback_volume double        
--- @field playback_globally boolean     
--- @field allow_polyphony boolean       


--- @shape ProgrammableSpeakerAlertParameters
--- @field show_alert boolean            
--- @field show_on_map boolean           
--- @field icon_signal_id SignalID       
--- @field alert_message string          


--- @shape ProgrammableSpeakerCircuitParameters
--- @field signal_value_is_pitch boolean 
--- @field instrument_id uint            
--- @field note_id uint                  


--- @shape ProgrammableSpeakerInstrument
--- @field name string                   
--- @field notes string[]                


--- @alias Alignment "top-left" | "middle-left" | "left" | "bottom-left" | "top-center" | "middle-center" | "center" | "bottom-center" | "top-right" | "right" | "bottom-right"
--- A string that specifies where a gui element should be.
--- 
--- @see string @
---  - top-left                         
---  - middle-left                      
---  - left                             The same as `"middle-left"`
---  - bottom-left                      
---  - top-center                       
---  - middle-center                    
---  - center                           The same as `"middle-center"`
---  - bottom-center                    
---  - top-right                        
---  - right                            The same as `"middle-right"`
---  - bottom-right                     


--- @shape EventData
--- Information about the event that has been raised. The table can also contain other fields depending on the type of
--- event. See the list of Factorio events for more information on these.
--- @field name defines_events           The identifier of the event this handler was registered to.
--- @field tick uint                     The tick during which the event happened.
--- @field mod_name string | nil         (Optional)  The name of the mod that raised the event if it was raised using [LuaBootstrap::raise_event](LuaBootstrap::raise_event).


--- @shape NthTickEventData
--- @field tick uint                     The tick during which the event happened.
--- @field nth_tick uint                 The nth tick this handler was registered to.


--- @shape ModChangeData
--- @field old_version string            Old version of the mod. May be `nil` if the mod wasn't previously present (i.e. it was just added).
--- @field new_version string            New version of the mod. May be `nil` if the mod is no longer present (i.e. it was just removed).


--- @shape ConfigurationChangedData
--- @field old_version string | nil      (Optional)  Old version of the map. Present only when loading map version other than the current version.
--- @field new_version string | nil      (Optional)  New version of the map. Present only when loading map version other than the current version.
--- @field mod_changes table<string, ModChangeData> Dictionary of mod changes. It is indexed by mod name.
--- @field mod_startup_settings_changed boolean `true` when mod startup settings have changed since the last time this save was loaded.
--- @field migration_applied boolean     `true` when mod prototype migrations have been applied since the last time this save was loaded.


--- @shape CustomCommandData
--- @field name string                   The name of the command.
--- @field tick uint                     The tick the command was used in.
--- @field player_index uint | nil       (Optional)  The player who issued the command, or `nil` if it was issued from the server console.
--- @field parameter string | nil        (Optional)  The parameter passed after the command, if there is one.


--- @shape SelectedPrototypeData
--- @field base_type string              E.g. `"entity"`.
--- @field derived_type string           E.g. `"tree"`.
--- @field name string                   E.g. `"tree-05"`.


--- @shape ScriptRenderTarget
--- @field entity LuaEntity | nil        (Optional)  
--- @field entity_offset Vector | nil    (Optional)  
--- @field position MapPosition | nil    (Optional)  


--- @shape MouseButtonFlags
--- This is a set of flags given as a dictionary[string &rarr; boolean]. When a flag is set, it is present in the
--- dictionary with the value `true`. Unset flags aren't present in the dictionary at all.
--- To write to this, use an array[string] of the mouse buttons that should be possible to use with on button.
--- When setting flags, the flag `"left-and-right"` can also be set which will set `"left"` and `"right"` true.
--- Possible flags when reading are:
--- - `"left"`
--- - `"right"`
--- - `"middle"`
--- - `"button-4"`
--- - `"button-5"`
--- - `"button-6"`
--- - `"button-7"`
--- - `"button-8"`
--- - `"button-9"`
--- 
--- @see string @
--- @see boolean @


--- @alias CursorBoxRenderType "entity" | "not-allowed" | "electricity" | "pair" | "copy" | "train-visualization" | "logistics" | "blueprint-snap-rectangle"

---  - entity                           Yellow box.
---  - not-allowed                      Red box.
---  - electricity                      Light blue box.
---  - pair                             Light blue box.
---  - copy                             Green box.
---  - train-visualization              White box.
---  - logistics                        Light blue box.
---  - blueprint-snap-rectangle         Green box.


--- @alias ForceCondition "all" | "enemy" | "ally" | "friend" | "not-friend" | "same" | "not-same"

---  - all                              All forces pass.
---  - enemy                            Forces which will attack pass.
---  - ally                             Forces which won't attack pass.
---  - friend                           Forces which are friends pass.
---  - not-friend                       Forces which are not friends pass.
---  - same                             The same force pass.
---  - not-same                         The non-same forces pass.


--- @alias RenderLayer string | number
--- A value between 0 and 255 inclusive represented by one of the following named string or string version of the value
--- (for example `"27"` and `"decals"` are both valid). Higher values are rendered on top of lower values.
--- - `"water-tile"`: 15
--- - `"ground-tile"`: 25
--- - `"tile-transition"`: 26
--- - `"decals"`: 27
--- - `"lower-radius-visualization"`: 29
--- - `"radius-visualization"`: 30
--- - `"transport-belt-integration"`: 65
--- - `"resource"`:66
--- - `"building-smoke"`:67
--- - `"decorative"`: 92
--- - `"ground-patch"`: 93
--- - `"ground-patch-higher"`: 94
--- - `"ground-patch-higher2"`: 95
--- - `"remnants"`: 112
--- - `"floor"`: 113
--- - `"transport-belt"`: 114
--- - `"transport-belt-endings"`: 115
--- - `"floor-mechanics-under-corpse"`: 120
--- - `"corpse"`: 121
--- - `"floor-mechanics"`: 122
--- - `"item"`: 123
--- - `"lower-object"`: 124
--- - `"transport-belt-circuit-connector"`: 126
--- - `"lower-object-above-shadow"`: 127
--- - `"object"`: 129
--- - `"higher-object-under"`: 131
--- - `"higher-object-above"`: 132
--- - `"item-in-inserter-hand"`: 134
--- - `"wires"`: 135
--- - `"wires-above"`: 136
--- - `"entity-info-icon"`: 138
--- - `"entity-info-icon-above"`: 139
--- - `"explosion"`: 142
--- - `"projectile"`: 143
--- - `"smoke"`: 144
--- - `"air-object"`: 145
--- - `"air-entity-info-icon"`: 147
--- - `"light-effect"`: 148
--- - `"selection-box"`: 187
--- - `"higher-selection-box"`: 188
--- - `"collision-selection-box"`: 189
--- - `"arrow"`: 190
--- - `"cursor"`: 210
--- 
--- @see string @


--- @alias CliffOrientation "west-to-east" | "north-to-south" | "east-to-west" | "south-to-north" | "west-to-north" | "north-to-east" | "east-to-south" | "south-to-west" | "west-to-south" | "north-to-west" | "east-to-north" | "south-to-east" | "west-to-none" | "none-to-east" | "east-to-none" | "none-to-west" | "north-to-none" | "none-to-south" | "south-to-none" | "none-to-north"

---  - west-to-east                     
---  - north-to-south                   
---  - east-to-west                     
---  - south-to-north                   
---  - west-to-north                    
---  - north-to-east                    
---  - east-to-south                    
---  - south-to-west                    
---  - west-to-south                    
---  - north-to-west                    
---  - east-to-north                    
---  - south-to-east                    
---  - west-to-none                     
---  - none-to-east                     
---  - east-to-none                     
---  - none-to-west                     
---  - north-to-none                    
---  - none-to-south                    
---  - south-to-none                    
---  - none-to-north                    


--- @shape ItemStackLocation
--- @field inventory defines_inventory   
--- @field slot uint                     


--- @shape VehicleAutomaticTargetingParameters
--- @field auto_target_without_gunner boolean 
--- @field auto_target_with_gunner boolean 


--- @alias SoundType "game-effect" | "gui-effect" | "ambient" | "environment" | "walking" | "alert" | "wind"
--- Defines which slider in the game's sound settings affects the volume of this sound. Furthermore, some sound types
--- are mixed differently than others, e.g. zoom level effects are applied.
---  - game-effect                      
---  - gui-effect                       
---  - ambient                          
---  - environment                      
---  - walking                          
---  - alert                            
---  - wind                             


--- @shape ItemPrototypeFilter
--- @field filter string                 The condition to filter on. One of `"tool"`, `"mergeable"`, `"item-with-inventory"`, `"selection-tool"`, `"item-with-label"`, `"has-rocket-launch-products"`, `"fuel"`, `"place-result"`, `"burnt-result"`, `"place-as-tile"`, `"placed-as-equipment-result"`, `"name"`, `"type"`, `"flag"`, `"subgroup"`, `"fuel-category"`, `"stack-size"`, `"default-request-amount"`, `"wire-count"`, `"fuel-value"`, `"fuel-acceleration-multiplier"`, `"fuel-top-speed-multiplier"`, `"fuel-emissions-multiplier"`.
--- @field mode string | nil             (Optional)  How to combine this with the previous filter. Must be `"or"` or `"and"`. Defaults to `"or"`. When evaluating the filters, `"and"` has higher precedence than `"or"`.
--- @field invert boolean | nil          (Optional)  Inverts the condition. Default is `false`.
--- @field elem_filters EntityPrototypeFilter[] | ItemPrototypeFilter[] | TilePrototypeFilter[] | EquipmentPrototypeFilter[] | nil (Optional)
--- @field name string | string[] | nil  (Optional)
--- @field type string | nil             (Optional)
--- @field flag string | nil             (Optional)
--- @field subgroup string | nil         (Optional)
--- @field fuel-category string | nil    (Optional)
--- @field comparison ComparatorString | nil (Optional)
--- @field value uint | double | nil     (Optional)


--- @shape ModSettingPrototypeFilter
--- @field filter string                 The condition to filter on. One of `"type"`, `"mod"`, `"setting-type"`.
--- @field mode string | nil             (Optional)  How to combine this with the previous filter. Must be `"or"` or `"and"`. Defaults to `"or"`. When evaluating the filters, `"and"` has higher precedence than `"or"`.
--- @field invert boolean | nil          (Optional)  Inverts the condition. Default is `false`.
--- @field type string | nil             (Optional)
--- @field mod string | nil              (Optional)


--- @shape TechnologyPrototypeFilter
--- @field filter string                 The condition to filter on. One of `"enabled"`, `"hidden"`, `"upgrade"`, `"visible-when-disabled"`, `"has-effects"`, `"has-prerequisites"`, `"research-unit-ingredient"`, `"level"`, `"max-level"`, `"time"`.
--- @field mode string | nil             (Optional)  How to combine this with the previous filter. Must be `"or"` or `"and"`. Defaults to `"or"`. When evaluating the filters, `"and"` has higher precedence than `"or"`.
--- @field invert boolean | nil          (Optional)  Inverts the condition. Default is `false`.
--- @field ingredient string | nil       (Optional)
--- @field comparison ComparatorString | nil (Optional)
--- @field value uint | nil              (Optional)


--- @shape DecorativePrototypeFilter
--- @field filter string                 The condition to filter on. One of `"decal"`, `"autoplace"`, `"collision-mask"`.
--- @field mode string | nil             (Optional)  How to combine this with the previous filter. Must be `"or"` or `"and"`. Defaults to `"or"`. When evaluating the filters, `"and"` has higher precedence than `"or"`.
--- @field invert boolean | nil          (Optional)  Inverts the condition. Default is `false`.
--- @field mask CollisionMask | CollisionMaskWithFlags | nil (Optional)
--- @field mask_mode string | nil        (Optional)


--- @shape AchievementPrototypeFilter
--- @field filter string                 The condition to filter on. One of `"allowed-without-fight"`, `"type"`.
--- @field mode string | nil             (Optional)  How to combine this with the previous filter. Must be `"or"` or `"and"`. Defaults to `"or"`. When evaluating the filters, `"and"` has higher precedence than `"or"`.
--- @field invert boolean | nil          (Optional)  Inverts the condition. Default is `false`.
--- @field type string | nil             (Optional)


--- @shape FluidPrototypeFilter
--- @field filter string                 The condition to filter on. One of `"hidden"`, `"name"`, `"subgroup"`, `"default-temperature"`, `"max-temperature"`, `"heat-capacity"`, `"fuel-value"`, `"emissions-multiplier"`, `"gas-temperature"`.
--- @field mode string | nil             (Optional)  How to combine this with the previous filter. Must be `"or"` or `"and"`. Defaults to `"or"`. When evaluating the filters, `"and"` has higher precedence than `"or"`.
--- @field invert boolean | nil          (Optional)  Inverts the condition. Default is `false`.
--- @field name string | string[] | nil  (Optional)
--- @field subgroup string | nil         (Optional)
--- @field comparison ComparatorString | nil (Optional)
--- @field value double | nil            (Optional)


--- @shape EquipmentPrototypeFilter
--- @field filter string                 The condition to filter on. One of `"item-to-place"`, `"type"`.
--- @field mode string | nil             (Optional)  How to combine this with the previous filter. Must be `"or"` or `"and"`. Defaults to `"or"`. When evaluating the filters, `"and"` has higher precedence than `"or"`.
--- @field invert boolean | nil          (Optional)  Inverts the condition. Default is `false`.
--- @field type string | nil             (Optional)


--- @shape TilePrototypeFilter
--- @field filter string                 The condition to filter on. One of `"minable"`, `"autoplace"`, `"blueprintable"`, `"item-to-place"`, `"collision-mask"`, `"walking-speed-modifier"`, `"vehicle-friction-modifier"`, `"decorative-removal-probability"`, `"emissions"`.
--- @field mode string | nil             (Optional)  How to combine this with the previous filter. Must be `"or"` or `"and"`. Defaults to `"or"`. When evaluating the filters, `"and"` has higher precedence than `"or"`.
--- @field invert boolean | nil          (Optional)  Inverts the condition. Default is `false`.
--- @field mask CollisionMask | CollisionMaskWithFlags | nil (Optional)
--- @field mask_mode string | nil        (Optional)
--- @field comparison ComparatorString | nil (Optional)
--- @field value double | float | nil    (Optional)


--- @shape RecipePrototypeFilter
--- @field filter string                 The condition to filter on. One of `"enabled"`, `"hidden"`, `"hidden-from-flow-stats"`, `"hidden-from-player-crafting"`, `"allow-as-intermediate"`, `"allow-intermediates"`, `"allow-decomposition"`, `"always-show-made-in"`, `"always-show-products"`, `"show-amount-in-title"`, `"has-ingredients"`, `"has-products"`, `"has-ingredient-item"`, `"has-ingredient-fluid"`, `"has-product-item"`, `"has-product-fluid"`, `"subgroup"`, `"category"`, `"energy"`, `"emissions-multiplier"`, `"request-paste-multiplier"`, `"overload-multiplier"`.
--- @field mode string | nil             (Optional)  How to combine this with the previous filter. Must be `"or"` or `"and"`. Defaults to `"or"`. When evaluating the filters, `"and"` has higher precedence than `"or"`.
--- @field invert boolean | nil          (Optional)  Inverts the condition. Default is `false`.
--- @field elem_filters ItemPrototypeFilter[] | FluidPrototypeFilter[] | nil (Optional)
--- @field subgroup string | nil         (Optional)
--- @field category string | nil         (Optional)
--- @field comparison ComparatorString | nil (Optional)
--- @field value double | uint | nil     (Optional)


--- @shape EntityPrototypeFilter
--- @field filter string                 The condition to filter on. One of `"flying-robot"`, `"robot-with-logistics-interface"`, `"rail"`, `"ghost"`, `"explosion"`, `"vehicle"`, `"crafting-machine"`, `"rolling-stock"`, `"turret"`, `"transport-belt-connectable"`, `"wall-connectable"`, `"buildable"`, `"placable-in-editor"`, `"clonable"`, `"selectable"`, `"hidden"`, `"entity-with-health"`, `"building"`, `"fast-replaceable"`, `"uses-direction"`, `"minable"`, `"circuit-connectable"`, `"autoplace"`, `"blueprintable"`, `"item-to-place"`, `"name"`, `"type"`, `"collision-mask"`, `"flag"`, `"build-base-evolution-requirement"`, `"selection-priority"`, `"emissions"`, `"crafting-category"`.
--- @field mode string | nil             (Optional)  How to combine this with the previous filter. Must be `"or"` or `"and"`. Defaults to `"or"`. When evaluating the filters, `"and"` has higher precedence than `"or"`.
--- @field invert boolean | nil          (Optional)  Inverts the condition. Default is `false`.
--- @field name string | string[] | nil  (Optional)
--- @field type string | nil             (Optional)
--- @field mask CollisionMask | CollisionMaskWithFlags | nil (Optional)
--- @field mask_mode string | nil        (Optional)
--- @field flag string | nil             (Optional)
--- @field comparison ComparatorString | nil (Optional)
--- @field value double | uint8 | nil    (Optional)
--- @field crafting_category string | nil (Optional)


--- @shape EventFilter
--- Used to filter out irrelevant event callbacks in a performant way.
--- Available filters:
--- - LuaEntityClonedEventFilter
--- - LuaEntityDamagedEventFilter
--- - LuaPlayerMinedEntityEventFilter
--- - LuaPreRobotMinedEntityEventFilter
--- - LuaRobotBuiltEntityEventFilter
--- - LuaPostEntityDiedEventFilter
--- - LuaEntityDiedEventFilter
--- - LuaScriptRaisedReviveEventFilter
--- - LuaPrePlayerMinedEntityEventFilter
--- - LuaEntityMarkedForDeconstructionEventFilter
--- - LuaPreGhostDeconstructedEventFilter
--- - LuaEntityDeconstructionCancelledEventFilter
--- - LuaEntityMarkedForUpgradeEventFilter
--- - LuaSectorScannedEventFilter
--- - LuaRobotMinedEntityEventFilter
--- - LuaScriptRaisedDestroyEventFilter
--- - LuaUpgradeCancelledEventFilter
--- - LuaScriptRaisedBuiltEventFilter
--- - LuaPlayerBuiltEntityEventFilter
--- - LuaPlayerRepairedEntityEventFilter
--- 
--- @see LuaPlayerRepairedEntityEventFilter @
--- @see LuaPlayerBuiltEntityEventFilter @
--- @see LuaScriptRaisedBuiltEventFilter @
--- @see LuaUpgradeCancelledEventFilter @
--- @see LuaScriptRaisedDestroyEventFilter @
--- @see LuaRobotMinedEntityEventFilter @
--- @see LuaSectorScannedEventFilter @
--- @see LuaEntityMarkedForUpgradeEventFilter @
--- @see LuaEntityDeconstructionCancelledEventFilter @
--- @see LuaPreGhostDeconstructedEventFilter @
--- @see LuaEntityMarkedForDeconstructionEventFilter @
--- @see LuaPrePlayerMinedEntityEventFilter @
--- @see LuaScriptRaisedReviveEventFilter @
--- @see LuaEntityDiedEventFilter @
--- @see LuaPostEntityDiedEventFilter @
--- @see LuaRobotBuiltEntityEventFilter @
--- @see LuaPreRobotMinedEntityEventFilter @
--- @see LuaPlayerMinedEntityEventFilter @
--- @see LuaEntityDamagedEventFilter @
--- @see LuaEntityClonedEventFilter @
--- 
--- Filters are always used as an array of filters of a specific type. Every filter can only be used with its
--- corresponding event, and different types of event filters can not be mixed.


--- @shape LuaScriptRaisedReviveEventFilter
--- @field filter string                 The condition to filter on. One of `"ghost"`, `"rail"`, `"rail-signal"`, `"rolling-stock"`, `"robot-with-logistics-interface"`, `"vehicle"`, `"turret"`, `"crafting-machine"`, `"wall-connectable"`, `"transport-belt-connectable"`, `"circuit-network-connectable"`, `"type"`, `"name"`, `"ghost_type"`, `"ghost_name"`.
--- @field mode string | nil             (Optional)  How to combine this with the previous filter. Must be `"or"` or `"and"`. Defaults to `"or"`. When evaluating the filters, `"and"` has higher precedence than `"or"`.
--- @field invert boolean | nil          (Optional)  Inverts the condition. Default is `false`.
--- @field type string | nil             (Optional)
--- @field name string | nil             (Optional)


--- @shape LuaEntityDiedEventFilter
--- @field filter string                 The condition to filter on. One of `"ghost"`, `"rail"`, `"rail-signal"`, `"rolling-stock"`, `"robot-with-logistics-interface"`, `"vehicle"`, `"turret"`, `"crafting-machine"`, `"wall-connectable"`, `"transport-belt-connectable"`, `"circuit-network-connectable"`, `"type"`, `"name"`, `"ghost_type"`, `"ghost_name"`.
--- @field mode string | nil             (Optional)  How to combine this with the previous filter. Must be `"or"` or `"and"`. Defaults to `"or"`. When evaluating the filters, `"and"` has higher precedence than `"or"`.
--- @field invert boolean | nil          (Optional)  Inverts the condition. Default is `false`.
--- @field type string | nil             (Optional)
--- @field name string | nil             (Optional)


--- @shape LuaEntityMarkedForDeconstructionEventFilter
--- @field filter string                 The condition to filter on. One of `"ghost"`, `"rail"`, `"rail-signal"`, `"rolling-stock"`, `"robot-with-logistics-interface"`, `"vehicle"`, `"turret"`, `"crafting-machine"`, `"wall-connectable"`, `"transport-belt-connectable"`, `"circuit-network-connectable"`, `"type"`, `"name"`, `"ghost_type"`, `"ghost_name"`.
--- @field mode string | nil             (Optional)  How to combine this with the previous filter. Must be `"or"` or `"and"`. Defaults to `"or"`. When evaluating the filters, `"and"` has higher precedence than `"or"`.
--- @field invert boolean | nil          (Optional)  Inverts the condition. Default is `false`.
--- @field type string | nil             (Optional)
--- @field name string | nil             (Optional)


--- @shape LuaPreGhostDeconstructedEventFilter
--- @field filter string                 The condition to filter on. One of `"ghost"`, `"rail"`, `"rail-signal"`, `"rolling-stock"`, `"robot-with-logistics-interface"`, `"vehicle"`, `"turret"`, `"crafting-machine"`, `"wall-connectable"`, `"transport-belt-connectable"`, `"circuit-network-connectable"`, `"type"`, `"name"`, `"ghost_type"`, `"ghost_name"`.
--- @field mode string | nil             (Optional)  How to combine this with the previous filter. Must be `"or"` or `"and"`. Defaults to `"or"`. When evaluating the filters, `"and"` has higher precedence than `"or"`.
--- @field invert boolean | nil          (Optional)  Inverts the condition. Default is `false`.
--- @field type string | nil             (Optional)
--- @field name string | nil             (Optional)


--- @shape LuaScriptRaisedDestroyEventFilter
--- @field filter string                 The condition to filter on. One of `"ghost"`, `"rail"`, `"rail-signal"`, `"rolling-stock"`, `"robot-with-logistics-interface"`, `"vehicle"`, `"turret"`, `"crafting-machine"`, `"wall-connectable"`, `"transport-belt-connectable"`, `"circuit-network-connectable"`, `"type"`, `"name"`, `"ghost_type"`, `"ghost_name"`.
--- @field mode string | nil             (Optional)  How to combine this with the previous filter. Must be `"or"` or `"and"`. Defaults to `"or"`. When evaluating the filters, `"and"` has higher precedence than `"or"`.
--- @field invert boolean | nil          (Optional)  Inverts the condition. Default is `false`.
--- @field type string | nil             (Optional)
--- @field name string | nil             (Optional)


--- @shape LuaUpgradeCancelledEventFilter
--- @field filter string                 The condition to filter on. One of `"ghost"`, `"rail"`, `"rail-signal"`, `"rolling-stock"`, `"robot-with-logistics-interface"`, `"vehicle"`, `"turret"`, `"crafting-machine"`, `"wall-connectable"`, `"transport-belt-connectable"`, `"circuit-network-connectable"`, `"type"`, `"name"`, `"ghost_type"`, `"ghost_name"`.
--- @field mode string | nil             (Optional)  How to combine this with the previous filter. Must be `"or"` or `"and"`. Defaults to `"or"`. When evaluating the filters, `"and"` has higher precedence than `"or"`.
--- @field invert boolean | nil          (Optional)  Inverts the condition. Default is `false`.
--- @field type string | nil             (Optional)
--- @field name string | nil             (Optional)


--- @shape LuaPlayerRepairedEntityEventFilter
--- @field filter string                 The condition to filter on. One of `"ghost"`, `"rail"`, `"rail-signal"`, `"rolling-stock"`, `"robot-with-logistics-interface"`, `"vehicle"`, `"turret"`, `"crafting-machine"`, `"wall-connectable"`, `"transport-belt-connectable"`, `"circuit-network-connectable"`, `"type"`, `"name"`, `"ghost_type"`, `"ghost_name"`.
--- @field mode string | nil             (Optional)  How to combine this with the previous filter. Must be `"or"` or `"and"`. Defaults to `"or"`. When evaluating the filters, `"and"` has higher precedence than `"or"`.
--- @field invert boolean | nil          (Optional)  Inverts the condition. Default is `false`.
--- @field type string | nil             (Optional)
--- @field name string | nil             (Optional)


--- @shape LuaEntityMarkedForUpgradeEventFilter
--- @field filter string                 The condition to filter on. One of `"ghost"`, `"rail"`, `"rail-signal"`, `"rolling-stock"`, `"robot-with-logistics-interface"`, `"vehicle"`, `"turret"`, `"crafting-machine"`, `"wall-connectable"`, `"transport-belt-connectable"`, `"circuit-network-connectable"`, `"type"`, `"name"`, `"ghost_type"`, `"ghost_name"`.
--- @field mode string | nil             (Optional)  How to combine this with the previous filter. Must be `"or"` or `"and"`. Defaults to `"or"`. When evaluating the filters, `"and"` has higher precedence than `"or"`.
--- @field invert boolean | nil          (Optional)  Inverts the condition. Default is `false`.
--- @field type string | nil             (Optional)
--- @field name string | nil             (Optional)


--- @shape LuaPostEntityDiedEventFilter
--- @field filter string                 The condition to filter on. Can only be `"type"`.
--- @field mode string | nil             (Optional)  How to combine this with the previous filter. Must be `"or"` or `"and"`. Defaults to `"or"`. When evaluating the filters, `"and"` has higher precedence than `"or"`.
--- @field invert boolean | nil          (Optional)  Inverts the condition. Default is `false`.
--- @field type string | nil             (Optional)


--- @shape LuaPreRobotMinedEntityEventFilter
--- @field filter string                 The condition to filter on. One of `"ghost"`, `"rail"`, `"rail-signal"`, `"rolling-stock"`, `"robot-with-logistics-interface"`, `"vehicle"`, `"turret"`, `"crafting-machine"`, `"wall-connectable"`, `"transport-belt-connectable"`, `"circuit-network-connectable"`, `"type"`, `"name"`, `"ghost_type"`, `"ghost_name"`.
--- @field mode string | nil             (Optional)  How to combine this with the previous filter. Must be `"or"` or `"and"`. Defaults to `"or"`. When evaluating the filters, `"and"` has higher precedence than `"or"`.
--- @field invert boolean | nil          (Optional)  Inverts the condition. Default is `false`.
--- @field type string | nil             (Optional)
--- @field name string | nil             (Optional)


--- @shape LuaEntityClonedEventFilter
--- @field filter string                 The condition to filter on. One of `"ghost"`, `"rail"`, `"rail-signal"`, `"rolling-stock"`, `"robot-with-logistics-interface"`, `"vehicle"`, `"turret"`, `"crafting-machine"`, `"wall-connectable"`, `"transport-belt-connectable"`, `"circuit-network-connectable"`, `"type"`, `"name"`, `"ghost_type"`, `"ghost_name"`.
--- @field mode string | nil             (Optional)  How to combine this with the previous filter. Must be `"or"` or `"and"`. Defaults to `"or"`. When evaluating the filters, `"and"` has higher precedence than `"or"`.
--- @field invert boolean | nil          (Optional)  Inverts the condition. Default is `false`.
--- @field type string | nil             (Optional)
--- @field name string | nil             (Optional)


--- @shape LuaScriptRaisedBuiltEventFilter
--- @field filter string                 The condition to filter on. One of `"ghost"`, `"rail"`, `"rail-signal"`, `"rolling-stock"`, `"robot-with-logistics-interface"`, `"vehicle"`, `"turret"`, `"crafting-machine"`, `"wall-connectable"`, `"transport-belt-connectable"`, `"circuit-network-connectable"`, `"type"`, `"name"`, `"ghost_type"`, `"ghost_name"`.
--- @field mode string | nil             (Optional)  How to combine this with the previous filter. Must be `"or"` or `"and"`. Defaults to `"or"`. When evaluating the filters, `"and"` has higher precedence than `"or"`.
--- @field invert boolean | nil          (Optional)  Inverts the condition. Default is `false`.
--- @field type string | nil             (Optional)
--- @field name string | nil             (Optional)


--- @shape LuaRobotMinedEntityEventFilter
--- @field filter string                 The condition to filter on. One of `"ghost"`, `"rail"`, `"rail-signal"`, `"rolling-stock"`, `"robot-with-logistics-interface"`, `"vehicle"`, `"turret"`, `"crafting-machine"`, `"wall-connectable"`, `"transport-belt-connectable"`, `"circuit-network-connectable"`, `"type"`, `"name"`, `"ghost_type"`, `"ghost_name"`.
--- @field mode string | nil             (Optional)  How to combine this with the previous filter. Must be `"or"` or `"and"`. Defaults to `"or"`. When evaluating the filters, `"and"` has higher precedence than `"or"`.
--- @field invert boolean | nil          (Optional)  Inverts the condition. Default is `false`.
--- @field type string | nil             (Optional)
--- @field name string | nil             (Optional)


--- @shape LuaPrePlayerMinedEntityEventFilter
--- @field filter string                 The condition to filter on. One of `"ghost"`, `"rail"`, `"rail-signal"`, `"rolling-stock"`, `"robot-with-logistics-interface"`, `"vehicle"`, `"turret"`, `"crafting-machine"`, `"wall-connectable"`, `"transport-belt-connectable"`, `"circuit-network-connectable"`, `"type"`, `"name"`, `"ghost_type"`, `"ghost_name"`.
--- @field mode string | nil             (Optional)  How to combine this with the previous filter. Must be `"or"` or `"and"`. Defaults to `"or"`. When evaluating the filters, `"and"` has higher precedence than `"or"`.
--- @field invert boolean | nil          (Optional)  Inverts the condition. Default is `false`.
--- @field type string | nil             (Optional)
--- @field name string | nil             (Optional)


--- @shape LuaRobotBuiltEntityEventFilter
--- @field filter string                 The condition to filter on. One of `"ghost"`, `"rail"`, `"rail-signal"`, `"rolling-stock"`, `"robot-with-logistics-interface"`, `"vehicle"`, `"turret"`, `"crafting-machine"`, `"wall-connectable"`, `"transport-belt-connectable"`, `"circuit-network-connectable"`, `"type"`, `"name"`, `"ghost_type"`, `"ghost_name"`, `"force"`.
--- @field mode string | nil             (Optional)  How to combine this with the previous filter. Must be `"or"` or `"and"`. Defaults to `"or"`. When evaluating the filters, `"and"` has higher precedence than `"or"`.
--- @field invert boolean | nil          (Optional)  Inverts the condition. Default is `false`.
--- @field type string | nil             (Optional)
--- @field name string | nil             (Optional)
--- @field force string | nil            (Optional)


--- @shape LuaEntityDeconstructionCancelledEventFilter
--- @field filter string                 The condition to filter on. One of `"ghost"`, `"rail"`, `"rail-signal"`, `"rolling-stock"`, `"robot-with-logistics-interface"`, `"vehicle"`, `"turret"`, `"crafting-machine"`, `"wall-connectable"`, `"transport-belt-connectable"`, `"circuit-network-connectable"`, `"type"`, `"name"`, `"ghost_type"`, `"ghost_name"`.
--- @field mode string | nil             (Optional)  How to combine this with the previous filter. Must be `"or"` or `"and"`. Defaults to `"or"`. When evaluating the filters, `"and"` has higher precedence than `"or"`.
--- @field invert boolean | nil          (Optional)  Inverts the condition. Default is `false`.
--- @field type string | nil             (Optional)
--- @field name string | nil             (Optional)


--- @shape LuaPlayerBuiltEntityEventFilter
--- @field filter string                 The condition to filter on. One of `"ghost"`, `"rail"`, `"rail-signal"`, `"rolling-stock"`, `"robot-with-logistics-interface"`, `"vehicle"`, `"turret"`, `"crafting-machine"`, `"wall-connectable"`, `"transport-belt-connectable"`, `"circuit-network-connectable"`, `"type"`, `"name"`, `"ghost_type"`, `"ghost_name"`, `"force"`.
--- @field mode string | nil             (Optional)  How to combine this with the previous filter. Must be `"or"` or `"and"`. Defaults to `"or"`. When evaluating the filters, `"and"` has higher precedence than `"or"`.
--- @field invert boolean | nil          (Optional)  Inverts the condition. Default is `false`.
--- @field type string | nil             (Optional)
--- @field name string | nil             (Optional)
--- @field force string | nil            (Optional)


--- @shape LuaPlayerMinedEntityEventFilter
--- @field filter string                 The condition to filter on. One of `"ghost"`, `"rail"`, `"rail-signal"`, `"rolling-stock"`, `"robot-with-logistics-interface"`, `"vehicle"`, `"turret"`, `"crafting-machine"`, `"wall-connectable"`, `"transport-belt-connectable"`, `"circuit-network-connectable"`, `"type"`, `"name"`, `"ghost_type"`, `"ghost_name"`.
--- @field mode string | nil             (Optional)  How to combine this with the previous filter. Must be `"or"` or `"and"`. Defaults to `"or"`. When evaluating the filters, `"and"` has higher precedence than `"or"`.
--- @field invert boolean | nil          (Optional)  Inverts the condition. Default is `false`.
--- @field type string | nil             (Optional)
--- @field name string | nil             (Optional)


--- @shape LuaEntityDamagedEventFilter
--- @field filter string                 The condition to filter on. One of `"ghost"`, `"rail"`, `"rail-signal"`, `"rolling-stock"`, `"robot-with-logistics-interface"`, `"vehicle"`, `"turret"`, `"crafting-machine"`, `"wall-connectable"`, `"transport-belt-connectable"`, `"circuit-network-connectable"`, `"type"`, `"name"`, `"ghost_type"`, `"ghost_name"`, `"original-damage-amount"`, `"final-damage-amount"`, `"damage-type"`, `"final-health"`.
--- @field mode string | nil             (Optional)  How to combine this with the previous filter. Must be `"or"` or `"and"`. Defaults to `"or"`. When evaluating the filters, `"and"` has higher precedence than `"or"`.
--- @field invert boolean | nil          (Optional)  Inverts the condition. Default is `false`.
--- @field type string | nil             (Optional)
--- @field name string | nil             (Optional)
--- @field comparison ComparatorString | nil (Optional)
--- @field value float | nil             (Optional)


--- @shape LuaSectorScannedEventFilter
--- @field filter string                 The condition to filter on. One of `"ghost"`, `"rail"`, `"rail-signal"`, `"rolling-stock"`, `"robot-with-logistics-interface"`, `"vehicle"`, `"turret"`, `"crafting-machine"`, `"wall-connectable"`, `"transport-belt-connectable"`, `"circuit-network-connectable"`, `"type"`, `"name"`, `"ghost_type"`, `"ghost_name"`.
--- @field mode string | nil             (Optional)  How to combine this with the previous filter. Must be `"or"` or `"and"`. Defaults to `"or"`. When evaluating the filters, `"and"` has higher precedence than `"or"`.
--- @field invert boolean | nil          (Optional)  Inverts the condition. Default is `false`.
--- @field type string | nil             (Optional)
--- @field name string | nil             (Optional)


-- Fixes for the Factorio API:


--- @alias PrototypeFilter TechnologyPrototypeFilter | EquipmentPrototypeFilter | AchievementPrototypeFilter | DecorativePrototypeFilter | RecipePrototypeFilter | FluidPrototypeFilter | EntityPrototypeFilter | TilePrototypeFilter | ItemPrototypeFilter


--- @alias Position MapPosition


--- @alias BlueprintCircuitConnection table


--- @alias BlueprintControlBehavior table


