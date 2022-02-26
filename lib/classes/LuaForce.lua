

--- @class LuaForce
--- `LuaForce` encapsulates data local to each "force" or "faction" of the game. Default forces are player, enemy and
--- neutral. Players and mods can create additional forces (up to 64 total).
local force = {}


--- @type string
---  (R)
--- Name of the force.
force.name = nil

--- @type LuaCustomTable<string, LuaTechnology>
---  (R)
--- Technologies owned by this force, indexed by `name`.
--- Custom table.
--- @see LuaCustomTable
force.technologies = nil

--- @type LuaCustomTable<string, LuaRecipe>
---  (R)
--- Recipes available to this force, indexed by `name`.
--- Custom table.
--- @see LuaCustomTable
force.recipes = nil

--- @type double
---  (RW)
--- Multiplier of the manual mining speed. Default value is `0`. The actual mining speed will be multiplied by `1 +
--- manual_mining_speed_modifier`.
force.manual_mining_speed_modifier = nil

--- @type double
---  (RW)
--- Multiplier of the manual crafting speed. Default value is `0`. The actual crafting speed will be multiplied by `1 +
--- manual_crafting_speed_modifier`.
force.manual_crafting_speed_modifier = nil

--- @type double
---  (RW)
force.laboratory_speed_modifier = nil

--- @type double
---  (RW)
force.laboratory_productivity_bonus = nil

--- @type double
---  (RW)
force.worker_robots_speed_modifier = nil

--- @type double
---  (RW)
force.worker_robots_battery_modifier = nil

--- @type double
---  (RW)
force.worker_robots_storage_bonus = nil

--- @type LuaTechnology
---  (R)
--- The current technology in research, or `nil` if no research is currently ongoing.
force.current_research = nil

--- @type double
---  (RW)
--- Progress of current research, as a number in range [0, 1].
force.research_progress = nil

--- @type LuaTechnology
---  (RW)
--- The previous research if any.
force.previous_research = nil

--- @type double
---  (RW)
--- The inserter stack size bonus for non stack inserters
force.inserter_stack_size_bonus = nil

--- @type uint
---  (RW)
--- Number of items that can be transferred by stack inserters. When writing to this value, it must be >= 0 and <= 254.
force.stack_inserter_capacity_bonus = nil

--- @type double
---  (RW)
--- Number of character trash slots.
force.character_trash_slot_count = nil

--- @type uint
---  (RW)
--- Maximum number of follower robots.
force.maximum_following_robot_count = nil

--- @type double
---  (RW)
--- Additional lifetime for following robots.
force.following_robots_lifetime_modifier = nil

--- @type uint
---  (RW)
--- The time, in ticks, before a placed ghost disappears.
force.ghost_time_to_live = nil

--- @type LuaPlayer[]
---  (R)
--- Players belonging to this force.
force.players = {}

--- @type boolean
---  (RW)
--- Enables some higher-level AI behaviour for this force. When set to `true`, biters belonging to this force will
--- automatically expand into new territories, build new spawners, and form unit groups. By default, this value is
--- `true` for the enemy force and `false` for all others.
force.ai_controllable = nil

--- @type table<string, LuaLogisticNetwork[]>
---  (R)
--- List of logistic networks, grouped by surface.
force.logistic_networks = nil

--- @type LuaFlowStatistics
---  (R)
--- The item production statistics for this force.
force.item_production_statistics = nil

--- @type LuaFlowStatistics
---  (R)
--- The fluid production statistics for this force.
force.fluid_production_statistics = nil

--- @type LuaFlowStatistics
---  (R)
--- The kill counter statistics for this force.
force.kill_count_statistics = nil

--- @type LuaFlowStatistics
---  (R)
--- The entity build statistics for this force (built and mined)
force.entity_build_count_statistics = nil

--- @type double
---  (RW)
--- Modifies the running speed of all characters in this force by the given value as a percentage. Setting the running
--- modifier to `0.5` makes the character run 50% faster. The minimum value of `-1` reduces the movement speed by 100%,
--- resulting in a speed of `0`.
force.character_running_speed_modifier = nil

--- @type double
---  (RW)
force.artillery_range_modifier = nil

--- @type uint
---  (RW)
force.character_build_distance_bonus = nil

--- @type uint
---  (RW)
force.character_item_drop_distance_bonus = nil

--- @type uint
---  (RW)
force.character_reach_distance_bonus = nil

--- @type double
---  (RW)
force.character_resource_reach_distance_bonus = nil

--- @type double
---  (RW)
force.character_item_pickup_distance_bonus = nil

--- @type double
---  (RW)
force.character_loot_pickup_distance_bonus = nil

--- @type uint
---  (RW)
--- the number of additional inventory slots the character main inventory has.
force.character_inventory_slots_bonus = nil

--- @type uint
---  (RW)
--- The time, in ticks, before a deconstruction order is removed.
force.deconstruction_time_to_live = nil

--- @type double
---  (RW)
force.character_health_bonus = nil

--- @type uint
---  (RW)
force.max_successful_attempts_per_tick_per_construction_queue = nil

--- @type uint
---  (RW)
force.max_failed_attempts_per_tick_per_construction_queue = nil

--- @type boolean
---  (RW)
--- Ability to use zoom-to-world on map.
force.zoom_to_world_enabled = nil

--- @type boolean
---  (RW)
--- Ability to build ghosts through blueprint or direct ghost placement, or "mine" ghosts when using zoom-to-world.
force.zoom_to_world_ghost_building_enabled = nil

--- @type boolean
---  (RW)
--- Ability to create new blueprints using empty blueprint item when using zoom-to-world.
force.zoom_to_world_blueprint_enabled = nil

--- @type boolean
---  (RW)
--- Ability to use deconstruction planner when using zoom-to-world.
force.zoom_to_world_deconstruction_planner_enabled = nil

--- @type boolean
---  (RW)
--- Ability to use custom selection tools when using zoom-to-world.
force.zoom_to_world_selection_tool_enabled = nil

--- @type boolean
---  (RW)
--- `true` if character requester logistics is enabled.
force.character_logistic_requests = nil

--- @type uint
---  (RW)
--- The number of rockets launched.
force.rockets_launched = nil

--- @type table<string, uint>
---  (R)
--- All of the items that have been launched in rockets. The attribute is a dictionary mapping the item prototype names
--- to the launched amounts.
force.items_launched = nil

--- @type LuaPlayer[]
---  (R)
--- The connected players belonging to this force.
--- This is primarily useful when you want to do some action against all online players of this force.
force.connected_players = {}

--- @type double
---  (RW)
force.mining_drill_productivity_bonus = nil

--- @type double
---  (RW)
force.train_braking_force_bonus = nil

--- @type double
---  (RW)
--- Evolution factor of this force.
force.evolution_factor = nil

--- @type double
---  (RW)
force.evolution_factor_by_pollution = nil

--- @type double
---  (RW)
force.evolution_factor_by_time = nil

--- @type double
---  (RW)
force.evolution_factor_by_killing_spawners = nil

--- @type boolean
---  (RW)
--- If friendly fire is enabled for this force.
force.friendly_fire = nil

--- @type boolean
---  (RW)
--- If sharing chart data is enabled for this force.
force.share_chart = nil

--- @type boolean
---  (RW)
--- Whether the research queue is available for this force.
force.research_queue_enabled = nil

--- @type uint
---  (R)
--- Unique ID associated with this force.
force.index = nil

--- @type TechnologyIdentification[]
---  (RW)
--- The research queue of this force. The first technology in the array is the currently active one. Reading this
--- attribute gives an array of LuaTechnology.
--- To write to this, the entire table must be written. Providing an empty table or `nil` will empty the research queue
--- and cancel the current research. Writing to this when the research queue is disabled will simply set the last
--- research in the table as the current research.
--- 
--- @see LuaTechnology @
force.research_queue = {}

--- @type boolean
---  (R)
--- Whether research is enabled for this force, see LuaForce::enable_research and LuaForce::disable_research
--- 
--- @see LuaForce#disable_research @
--- @see LuaForce#enable_research @
force.research_enabled = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
force.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
force.object_name = nil



--- Count entities of given type.
--- 
--- @param name string                  
--- @return uint                         Number of entities of given prototype belonging to this force.
function force.get_entity_count(name)
    name = nil
    return nil
end


--- Disable research for this force.
--- 
--- @return nil
function force.disable_research()
    return nil
end


--- Enable research for this force.
--- 
--- @return nil
function force.enable_research()
    return nil
end


--- Disable all recipes and technologies. Only recipes and technologies enabled explicitly will be useable from this
--- point.
--- 
--- @return nil
function force.disable_all_prototypes()
    return nil
end


--- Enables all recipes and technologies. The opposite of LuaForce::disable_all_prototypes
--- 
--- @see LuaForce#disable_all_prototypes @
--- 
--- @return nil
function force.enable_all_prototypes()
    return nil
end


--- Load the original version of all recipes from the prototypes.
--- 
--- @return nil
function force.reset_recipes()
    return nil
end


--- Unlock all recipes.
--- 
--- @return nil
function force.enable_all_recipes()
    return nil
end


--- Unlock all technologies.
--- 
--- @return nil
function force.enable_all_technologies()
    return nil
end


--- Research all technologies.
--- 
--- May raise the following events:
---  - on_research_finished:
---    @see on_research_finished@
---    Raised instantly.
--- 
--- @overload fun()
--- 
--- @param include_disabled_prototypes boolean | nil (Optional) 
function force.research_all_technologies(include_disabled_prototypes)
    include_disabled_prototypes = nil
end


--- Load the original versions of technologies from prototypes. Preserves research state of technologies.
--- 
--- @return nil
function force.reset_technologies()
    return nil
end


--- Reset everything. All technologies are set to not researched, all modifiers are set to default values.
--- 
--- May raise the following events:
---  - on_force_reset:
---    @see on_force_reset@
---    Raised instantly.
--- 
--- @return nil
function force.reset()
    return nil
end


--- Reapplies all possible research effects, including unlocked recipes. Any custom changes are lost. Preserves
--- research state of technologies.
--- 
--- May raise the following events:
---  - on_technology_effects_reset:
---    @see on_technology_effects_reset@
---    Raised instantly.
--- 
--- @return nil
function force.reset_technology_effects()
    return nil
end


--- Chart a portion of the map. The chart for the given area is refreshed; it creates chart for any parts of the given
--- area that haven't been charted yet.
--- 
--- @param surface SurfaceIdentification
--- @param area BoundingBox             
function force.chart(surface, area)
    surface = nil
    area = nil
end


--- Erases chart data for this force.
--- 
--- @overload fun()
--- 
--- @param surface SurfaceIdentification | nil (Optional) 
function force.clear_chart(surface)
    surface = nil
end


--- Force a rechart of the whole chart.
--- 
--- @return nil
function force.rechart()
    return nil
end


--- Chart all generated chunks.
--- 
--- @overload fun()
--- 
--- @param surface SurfaceIdentification | nil (Optional) 
function force.chart_all(surface)
    surface = nil
end


--- Has a chunk been charted?
--- 
--- @param surface SurfaceIdentification
--- @param position ChunkPosition       
--- @return boolean
function force.is_chunk_charted(surface, position)
    surface = nil
    position = nil
    return nil
end


--- Is the given chunk currently charted and visible (not covered by fog of war) on the map.
--- 
--- @param surface SurfaceIdentification
--- @param position ChunkPosition       
--- @return boolean
function force.is_chunk_visible(surface, position)
    surface = nil
    position = nil
    return nil
end


--- Cancels pending chart requests for the given surface or all surfaces.
--- 
--- @overload fun()
--- 
--- @param surface SurfaceIdentification | nil (Optional) 
function force.cancel_charting(surface)
    surface = nil
end


--- @param ammo string                  
--- @return double
function force.get_ammo_damage_modifier(ammo)
    ammo = nil
    return nil
end


--- @param ammo string                  
--- @param modifier double              
function force.set_ammo_damage_modifier(ammo, modifier)
    ammo = nil
    modifier = nil
end


--- @param ammo string                  
--- @return double
function force.get_gun_speed_modifier(ammo)
    ammo = nil
    return nil
end


--- @param ammo string                  
--- @param modifier double              
function force.set_gun_speed_modifier(ammo, modifier)
    ammo = nil
    modifier = nil
end


--- @param turret string                
--- @return double
function force.get_turret_attack_modifier(turret)
    turret = nil
    return nil
end


--- @param turret string                
--- @param modifier double              
function force.set_turret_attack_modifier(turret, modifier)
    turret = nil
    modifier = nil
end


--- Add `other` force to this force's cease fire list. Forces on the cease fire list won't be targeted for attack.
--- 
--- May raise the following events:
---  - on_force_cease_fire_changed:
---    @see on_force_cease_fire_changed@
---    Raised instantly.
--- 
--- @param other ForceIdentification    
--- @param cease_fire boolean           
function force.set_cease_fire(other, cease_fire)
    other = nil
    cease_fire = nil
end


--- Is `other` force in this force's cease fire list?
--- 
--- @param other ForceIdentification    
--- @return boolean
function force.get_cease_fire(other)
    other = nil
    return nil
end


--- Add `other` force to this force's friends list. Friends have unrestricted access to buildings and turrets won't
--- fire at them.
--- 
--- May raise the following events:
---  - on_force_friends_changed:
---    @see on_force_friends_changed@
---    Raised instantly.
--- 
--- @param other ForceIdentification    
--- @param friend boolean               
function force.set_friend(other, friend)
    other = nil
    friend = nil
end


--- Is `other` force in this force's friends list.
--- 
--- @param other ForceIdentification    
--- @return boolean
function force.get_friend(other)
    other = nil
    return nil
end


--- Is pathfinder busy? When the pathfinder is busy, it won't accept any more pathfinding requests.
--- 
--- @return boolean
function force.is_pathfinder_busy()
    return nil
end


--- Kill all units and flush the pathfinder.
--- 
--- @return nil
function force.kill_all_units()
    return nil
end


--- @param position MapPosition         
--- @param surface SurfaceIdentification
--- @return LuaLogisticNetwork           The found network or `nil`.
function force.find_logistic_network_by_position(position, surface)
    position = nil
    surface = nil
    return nil
end


--- @param position MapPosition         
--- @param surface SurfaceIdentification
function force.set_spawn_position(position, surface)
    position = nil
    surface = nil
end


--- @param surface SurfaceIdentification
--- @return MapPosition
function force.get_spawn_position(surface)
    surface = nil
    return nil
end


--- @param position ChunkPosition       
--- @param surface SurfaceIdentification
function force.unchart_chunk(position, surface)
    position = nil
    surface = nil
end


--- Gets the count of a given item launched in rockets.
--- 
--- @param item string                  
--- @return uint                         The count of the item that has been launched.
function force.get_item_launched(item)
    item = nil
    return nil
end


--- Sets the count of a given item launched in rockets.
--- 
--- @param item string                  
--- @param count uint                   
function force.set_item_launched(item, count)
    item = nil
    count = nil
end


--- Print text to the chat console of all players on this force.
--- 
--- @overload fun(message: LocalisedString)
--- 
--- @param message LocalisedString      
--- @param color Color | nil             (Optional) 
function force.print(message, color)
    message = nil
    color = nil
end


--- @overload fun(): LuaTrain[]
--- 
--- @param surface SurfaceIdentification | nil (Optional) 
--- @return LuaTrain[]
function force.get_trains(surface)
    surface = nil
    return {}
end


--- Adds a custom chart tag to the given surface and returns the new tag or `nil` if the given position isn't valid for
--- a chart tag.
--- 
--- May raise the following events:
---  - on_chart_tag_added:
---    @see on_chart_tag_added@
---    Raised instantly, conditionally.
---    Raised if the chart tag was successfully added.
--- 
--- @param surface SurfaceIdentification
--- @param tag ChartTagSpec             
--- @return LuaCustomChartTag
function force.add_chart_tag(surface, tag)
    surface = nil
    tag = nil
    return nil
end


--- Finds all custom chart tags within the given bounding box on the given surface.
--- 
--- @overload fun(surface: SurfaceIdentification): LuaCustomChartTag[]
--- 
--- @param surface SurfaceIdentification
--- @param area BoundingBox | nil        (Optional) 
--- @return LuaCustomChartTag[]
function force.find_chart_tags(surface, area)
    surface = nil
    area = nil
    return {}
end


--- Gets the saved progress for the given technology or `nil` if there is no saved progress.
--- 
--- @param technology TechnologyIdentification
--- @return double                       The progress as a percent.
function force.get_saved_technology_progress(technology)
    technology = nil
    return nil
end


--- Sets the saved progress for the given technology. The technology must not be in progress, must not be completed,
--- and the new progress must be < 100%.
--- 
--- @param technology TechnologyIdentification
--- @param progress double              
function force.set_saved_technology_progress(technology, progress)
    technology = nil
    progress = nil
end


--- Resets evolution for this force to zero.
--- 
--- @return nil
function force.reset_evolution()
    return nil
end


--- @alias LuaForce_play_sound_p
--- @field path SoundPath                The sound to play.
--- @field position MapPosition | nil    (Optional)  Where the sound should be played. If not given, it's played at the current position of each player.
--- @field volume_modifier double | nil  (Optional)  The volume of the sound to play. Must be between 0 and 1 inclusive.
--- @field override_sound_type SoundType | nil (Optional)  The volume mixer to play the sound through. Defaults to the default mixer for the given sound type.

--- Play a sound for every player in this force.
--- 
--- @param params LuaForce_play_sound_p 
function force.play_sound(params)
    params = nil
end


--- @alias LuaForce_get_train_stops_p
--- @field name string | string[] | nil  (Optional)  
--- @field surface SurfaceIdentification | nil (Optional)  

--- Gets train stops matching the given filters.
--- 
--- @overload fun(): LuaEntity[]
--- 
--- @param params LuaForce_get_train_stops_p | nil (Optional) 
--- @return LuaEntity[]
function force.get_train_stops(params)
    params = nil
    return {}
end


--- Gets if the given recipe is explicitly disabled from being hand crafted.
--- 
--- @param recipe string | LuaRecipe    
--- @return boolean
function force.get_hand_crafting_disabled_for_recipe(recipe)
    recipe = nil
    return nil
end


--- Sets if the given recipe can be hand-crafted. This is used to explicitly disable hand crafting a recipe - it won't
--- allow hand-crafting otherwise not hand-craftable recipes.
--- 
--- @param recipe string | LuaRecipe    
--- @param hand_crafting_disabled boolean
function force.set_hand_crafting_disabled_for_recipe(recipe, hand_crafting_disabled)
    recipe = nil
    hand_crafting_disabled = nil
end


--- Add this technology to the back of the research queue if the queue is enabled. Otherwise, set this technology to be
--- researched now.
--- 
--- May raise the following events:
---  - on_research_started:
---    @see on_research_started@
---    Raised instantly, conditionally.
---    Raised if the technology was successfully added.
--- 
--- @param technology TechnologyIdentification
--- @return boolean                      Whether the technology was successfully added.
function force.add_research(technology)
    technology = nil
    return nil
end


--- Stop the research currently in progress. This will remove any dependent technologies from the research queue.
--- 
--- @return nil
function force.cancel_current_research()
    return nil
end


--- Gets the linked inventory for the given prototype and link ID if it exists or `nil`.
--- 
--- @param prototype EntityPrototypeIdentification
--- @param link_id uint                 
--- @return LuaInventory
function force.get_linked_inventory(prototype, link_id)
    prototype = nil
    link_id = nil
    return nil
end


--- Is this force a friend? This differs from `get_friend` in that it is always true for neutral force. This is
--- equivalent to checking the `friend` ForceCondition.
--- 
--- @param other ForceIdentification    
--- @return boolean
function force.is_friend(other)
    other = nil
    return nil
end


--- Is this force an enemy? This differs from `get_cease_fire` in that it is always false for neutral force. This is
--- equivalent to checking the `enemy` ForceCondition.
--- 
--- @param other ForceIdentification    
--- @return boolean
function force.is_enemy(other)
    other = nil
    return nil
end


--- All methods and properties that this object supports.
--- 
--- @return string
function force.help()
    return nil
end

