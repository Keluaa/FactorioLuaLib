

--- @class LuaSurface
--- A "domain" of the world. Surfaces can only be created and deleted through the API. Surfaces are uniquely identified
--- by their name. Every game contains at least the surface "nauvis".
local surface = {}


--- @type string
---  (RW)
--- The name of this surface. Names are unique among surfaces.
surface.name = nil

--- @type uint
---  (R)
--- Unique ID associated with this surface.
surface.index = nil

--- @type MapGenSettings
---  (RW)
--- The generation settings for this surface. These can be modified to after surface generation, but note that this
--- will not retroactively update the surface. To manually adjust it, LuaSurface::regenerate_entity,
--- LuaSurface::regenerate_decorative and LuaSurface::delete_chunk can be used.
--- 
--- @see LuaSurface#delete_chunk @
--- @see LuaSurface#regenerate_decorative @
--- @see LuaSurface#regenerate_entity @
surface.map_gen_settings = nil

--- @type boolean
---  (RW)
--- When set to true, new chunks will be generated with lab tiles, instead of using the surface's map generation
--- settings.
surface.generate_with_lab_tiles = nil

--- @type boolean
---  (RW)
--- When set to true, the sun will always shine.
surface.always_day = nil

--- @type double
---  (RW)
--- Current time of day, as a number in range [0, 1).
surface.daytime = nil

--- @type float
---  (R)
--- Amount of darkness at the current time, as a number in range [0, 1].
surface.darkness = nil

--- @type double
---  (RW)
--- Current wind speed.
surface.wind_speed = nil

--- @type RealOrientation
---  (RW)
--- Current wind direction.
surface.wind_orientation = nil

--- @type double
---  (RW)
--- Change in wind orientation per tick.
surface.wind_orientation_change = nil

--- @type boolean
---  (RW)
--- Is peaceful mode enabled on this surface?
surface.peaceful_mode = nil

--- @type boolean
---  (RW)
--- True if daytime is currently frozen.
surface.freeze_daytime = nil

--- @type uint
---  (RW)
--- The number of ticks per day for this surface.
surface.ticks_per_day = nil

--- @type double
---  (RW)
--- The daytime when dusk starts.
surface.dusk = nil

--- @type double
---  (RW)
--- The daytime when dawn starts.
surface.dawn = nil

--- @type double
---  (RW)
--- The daytime when evening starts.
surface.evening = nil

--- @type double
---  (RW)
--- The daytime when morning starts.
surface.morning = nil

--- @type double
---  (RW)
--- The multiplier of solar power on this surface. Cannot be less than 0.
surface.solar_power_multiplier = nil

--- @type double
---  (RW)
--- The minimal brightness during the night. Default is `0.15`. The value has an effect on the game simalution only, it
--- doesn't have any effect on rendering.
surface.min_brightness = nil

--- @type ColorModifier
---  (RW)
--- Defines how surface daytime brightness influences each color channel of the current color lookup table (LUT).
--- The LUT is multiplied by `((1 - weight) + brightness * weight)` and result is clamped to range [0, 1].
--- Default is `{0, 0, 0}`, which means no influence.
surface.brightness_visual_weights = nil

--- @type boolean
---  (RW)
--- If clouds are shown on this surface.
surface.show_clouds = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
surface.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
surface.object_name = nil



--- Get the pollution for a given position.
--- 
--- @param position MapPosition         
function surface.get_pollution(position)
    position = nil
end


--- @alias LuaSurface_can_place_entity_p
--- @field name string                   Name of the entity prototype to check.
--- @field position MapPosition          Where the entity would be placed.
--- @field direction defines_direction | nil (Optional)  Direction of the placed entity.
--- @field force ForceIdentification | nil (Optional)  The force that would place the entity. If not specified, the enemy force is assumed.
--- @field build_check_type defines_build_check_type | nil (Optional)  Which type of check should be carried out.
--- @field forced boolean | nil          (Optional)  If `true`, entities that can be marked for deconstruction are ignored. Only used if `build_check_type` is either `manual_ghost`, `script_ghost` or `blueprint_ghost`.
--- @field inner_name string | nil       (Optional)  The prototype name of the entity contained in the ghost. Only used if `name` is `entity-ghost`.

--- Check for collisions with terrain or other entities.
--- 
--- @param params LuaSurface_can_place_entity_p
function surface.can_place_entity(params)
    params = nil
end


--- @alias LuaSurface_can_fast_replace_p
--- @field name string                   Name of the entity to check
--- @field position MapPosition          Where the entity would be placed
--- @field direction defines_direction | nil (Optional)  Direction the entity would be placed
--- @field force ForceIdentification | nil (Optional)  The force that would place the entity. If not specified, the enemy force is assumed.

--- If there exists an entity at the given location that can be fast-replaced with the given entity parameters.
--- 
--- @param params LuaSurface_can_fast_replace_p
function surface.can_fast_replace(params)
    params = nil
end


--- Find a specific entity at a specific position.
--- 
--- @param entity string                
--- @param position MapPosition         
function surface.find_entity(entity, position)
    entity = nil
    position = nil
end


--- Find entities in a given area.
--- If no area is given all entities on the surface are returned.
--- 
--- @overload fun()
--- @param area BoundingBox | nil        (Optional) 
function surface.find_entities(area)
    area = nil
end


--- @alias LuaSurface_find_entities_filtered_p
--- @field area BoundingBox | nil        (Optional)  
--- @field position MapPosition | nil    (Optional)  Has precedence over area field.
--- @field radius double | nil           (Optional)  If given with position, will return all entities within the radius of the position.
--- @field name string | string[] | nil  (Optional)  
--- @field type string | string[] | nil  (Optional)  
--- @field ghost_name string | string[] | nil (Optional)  
--- @field ghost_type string | string[] | nil (Optional)  
--- @field direction defines_direction | defines_direction[] | nil (Optional)  
--- @field collision_mask CollisionMaskLayer | CollisionMaskLayer[] | nil (Optional)  
--- @field force ForceIdentification | ForceIdentification[] | nil (Optional)  
--- @field to_be_deconstructed boolean | nil (Optional)  
--- @field to_be_upgraded boolean | nil  (Optional)  
--- @field limit uint | nil              (Optional)  
--- @field is_military_target boolean | nil (Optional)  
--- @field invert boolean | nil          (Optional)  If the filters should be inverted.

--- Find all entities of the given type or name in the given area.
--- If no filters (`name`, `type`, `force`, etc.) are given, this returns all entities in the search area. If multiple
--- filters are specified, only entities matching all given filters are returned.
--- If no `area` or `position` are given, the entire surface is searched. If `position` is given, this returns the
--- entities colliding with that position (i.e the given position is within the entity's collision box). If `position`
--- and `radius` are given, this returns the entities within the radius of the position. If `area` is specified, this
--- returns the entities colliding with that area.
--- 
--- @param params LuaSurface_find_entities_filtered_p
function surface.find_entities_filtered(params)
    params = nil
end


--- @alias LuaSurface_find_tiles_filtered_p
--- @field area BoundingBox | nil        (Optional)  
--- @field position MapPosition | nil    (Optional)  Ignored if not given with radius.
--- @field radius double | nil           (Optional)  If given with position, will return all entities within the radius of the position.
--- @field name string | string[] | nil  (Optional)  
--- @field limit uint | nil              (Optional)  
--- @field has_hidden_tile boolean | nil (Optional)  
--- @field collision_mask CollisionMaskLayer | CollisionMaskLayer[] | nil (Optional)  

--- Find all tiles of the given name in the given area.
--- If no filters are given, this returns all tiles in the search area.
--- If no `area` or `position` and `radius` is given, the entire surface is searched. If `position` and `radius` are
--- given, only tiles within the radius of the position are included.
--- 
--- @param params LuaSurface_find_tiles_filtered_p
function surface.find_tiles_filtered(params)
    params = nil
end


--- @alias LuaSurface_count_entities_filtered_p
--- @field area BoundingBox | nil        (Optional)  
--- @field position MapPosition | nil    (Optional)  
--- @field radius double | nil           (Optional)  If given with position, will count all entities within the radius of the position.
--- @field name string | string[] | nil  (Optional)  
--- @field type string | string[] | nil  (Optional)  
--- @field ghost_name string | string[] | nil (Optional)  
--- @field ghost_type string | string[] | nil (Optional)  
--- @field direction defines_direction | defines_direction[] | nil (Optional)  
--- @field collision_mask CollisionMaskLayer | CollisionMaskLayer[] | nil (Optional)  
--- @field force ForceIdentification | ForceIdentification[] | nil (Optional)  
--- @field to_be_deconstructed boolean | nil (Optional)  
--- @field to_be_upgraded boolean | nil  (Optional)  
--- @field limit uint | nil              (Optional)  
--- @field is_military_target boolean | nil (Optional)  
--- @field invert boolean | nil          (Optional)  If the filters should be inverted.

--- Count entities of given type or name in a given area. Works just like LuaSurface::find_entities_filtered, except
--- this only returns the count. As it doesn't construct all the wrapper objects, this is more efficient if one is only
--- interested in the number of entities.
--- If no `area` or `position` are given, the entire surface is searched. If `position` is given, this returns the
--- entities colliding with that position (i.e the given position is within the entity's collision box). If `position`
--- and `radius` are given, this returns entities in the radius of the position. If `area` is specified, this returns
--- entities colliding with that area.
--- 
--- @see LuaSurface#find_entities_filtered @
--- 
--- @param params LuaSurface_count_entities_filtered_p
function surface.count_entities_filtered(params)
    params = nil
end


--- @alias LuaSurface_count_tiles_filtered_p
--- @field area BoundingBox | nil        (Optional)  
--- @field position MapPosition | nil    (Optional)  Ignored if not given with radius.
--- @field radius double | nil           (Optional)  If given with position, will return all entities within the radius of the position.
--- @field name string | string[] | nil  (Optional)  
--- @field limit uint | nil              (Optional)  
--- @field has_hidden_tile boolean | nil (Optional)  
--- @field collision_mask CollisionMaskLayer | CollisionMaskLayer[] | nil (Optional)  

--- Count tiles of a given name in a given area. Works just like LuaSurface::find_tiles_filtered, except this only
--- returns the count. As it doesn't construct all the wrapper objects, this is more efficient if one is only
--- interested in the number of tiles.
--- If no `area` or `position` and `radius` is given, the entire surface is searched. If `position` and `radius` are
--- given, only tiles within the radius of the position are included.
--- 
--- @see LuaSurface#find_tiles_filtered @
--- 
--- @param params LuaSurface_count_tiles_filtered_p
function surface.count_tiles_filtered(params)
    params = nil
end


--- Find a non-colliding position within a given radius.
--- 
--- @overload fun(name: string, center: MapPosition, radius: double, precision: double)
--- @param name string                  
--- @param center MapPosition           
--- @param radius double                
--- @param precision double             
--- @param force_to_tile_center boolean | nil (Optional) 
function surface.find_non_colliding_position(name, center, radius, precision, force_to_tile_center)
    name = nil
    center = nil
    radius = nil
    precision = nil
    force_to_tile_center = nil
end


--- Find a non-colliding position within a given rectangle.
--- 
--- @overload fun(name: string, search_space: BoundingBox, precision: double)
--- @param name string                  
--- @param search_space BoundingBox     
--- @param precision double             
--- @param force_to_tile_center boolean | nil (Optional) 
function surface.find_non_colliding_position_in_box(name, search_space, precision, force_to_tile_center)
    name = nil
    search_space = nil
    precision = nil
    force_to_tile_center = nil
end


--- Spill items on the ground centered at a given location.
--- 
--- @overload fun(position: MapPosition, items: ItemStackIdentification)
--- @overload fun(position: MapPosition, items: ItemStackIdentification, enable_looted: boolean)
--- @overload fun(position: MapPosition, items: ItemStackIdentification, enable_looted: boolean, force: LuaForce | string)
--- @param position MapPosition         
--- @param items ItemStackIdentification
--- @param enable_looted boolean | nil   (Optional) 
--- @param force LuaForce | string | nil (Optional) 
--- @param allow_belts boolean | nil     (Optional) 
function surface.spill_item_stack(position, items, enable_looted, force, allow_belts)
    position = nil
    items = nil
    enable_looted = nil
    force = nil
    allow_belts = nil
end


--- Find enemy units (entities with type "unit") of a given force within an area.
--- 
--- @overload fun(center: MapPosition, radius: double)
--- @param center MapPosition           
--- @param radius double                
--- @param force LuaForce | string | nil (Optional) 
function surface.find_enemy_units(center, radius, force)
    center = nil
    radius = nil
    force = nil
end


--- @alias LuaSurface_find_units_p
--- @field area BoundingBox              Box to find units within.
--- @field force LuaForce | string       Force performing the search.
--- @field condition ForceCondition      Only forces which meet the condition will be included in the search.

--- Find units (entities with type "unit") of a given force and force condition within a given area.
--- 
--- @param params LuaSurface_find_units_p
function surface.find_units(params)
    params = nil
end


--- @alias LuaSurface_find_nearest_enemy_p
--- @field position MapPosition          Center of the search area.
--- @field max_distance double           Radius of the circular search area.
--- @field force ForceIdentification | nil (Optional)  The force the result will be an enemy of. Uses the player force if not specified.

--- Find the enemy military target (military entity) closest to the given position.
--- 
--- @param params LuaSurface_find_nearest_enemy_p
function surface.find_nearest_enemy(params)
    params = nil
end


--- @alias LuaSurface_find_nearest_enemy_entity_with_owner_p
--- @field position MapPosition          Center of the search area.
--- @field max_distance double           Radius of the circular search area.
--- @field force ForceIdentification | nil (Optional)  The force the result will be an enemy of. Uses the player force if not specified.

--- Find the enemy entity-with-owner closest to the given position.
--- 
--- @param params LuaSurface_find_nearest_enemy_entity_with_owner_p
function surface.find_nearest_enemy_entity_with_owner(params)
    params = nil
end


--- @alias LuaSurface_set_multi_command_p
--- @field command Command               
--- @field unit_count uint               Number of units to give the command to.
--- @field force ForceIdentification | nil (Optional)  Force of the units this command is to be given to. If not specified, uses the enemy force.
--- @field unit_search_distance uint | nil (Optional)  Radius to search for units. The search area is centered on the destination of the command.

--- Give a command to multiple units. This will automatically select suitable units for the task.
--- 
--- @param params LuaSurface_set_multi_command_p
function surface.set_multi_command(params)
    params = nil
end


--- @alias LuaSurface_create_entity_p
--- @field name string                   The entity prototype name to create.
--- @field position MapPosition          Where to create the entity.
--- @field direction defines_direction | nil (Optional)  Desired orientation of the entity after creation.
--- @field force ForceIdentification | nil (Optional)  Force of the entity, default is enemy.
--- @field target LuaEntity | nil        (Optional)  Entity with health for the new entity to target.
--- @field source LuaEntity | nil        (Optional)  Source entity. Used for beams and highlight-boxes.
--- @field fast_replace boolean | nil    (Optional)  If true, building will attempt to simulate fast-replace building.
--- @field player PlayerIdentification | nil (Optional)  If given set the last_user to this player. If fast_replace is true simulate fast replace using this player.
--- @field spill boolean | nil           (Optional)  If false while fast_replace is true and player is nil any items from fast-replacing will be deleted instead of dropped on the ground.
--- @field raise_built boolean | nil     (Optional)  If true; [defines.events.script_raised_built](defines.events.script_raised_built) will be fired on successful entity creation.
--- @field create_build_effect_smoke boolean | nil (Optional)  If false, the building effect smoke will not be shown around the new entity.
--- @field spawn_decorations boolean | nil (Optional)  If true, entity types that have spawn_decorations property will apply triggers defined in the property.
--- @field move_stuck_players boolean | nil (Optional)  If true, any characters that are in the way of the entity are teleported out of the way.
--- @field item LuaItemStack | nil       (Optional)  If provided, the entity will attempt to pull stored values from this item (for example; creating a spidertron from a previously named and mined spidertron)
--- @field recipe string | nil           (Optional)
--- @field target_position MapPosition | nil (Optional)
--- @field source_position MapPosition | nil (Optional)
--- @field max_length uint | nil         (Optional)
--- @field duration uint | nil           (Optional)
--- @field source_offset Vector | nil    (Optional)
--- @field bar uint | nil                (Optional)
--- @field cliff_orientation CliffOrientation | nil (Optional)
--- @field text LocalisedString | nil    (Optional)
--- @field color Color | nil             (Optional)
--- @field render_player_index uint | nil (Optional)
--- @field inner_name string | nil       (Optional)
--- @field expires boolean | nil         (Optional)
--- @field initial_ground_flame_count uint8 | nil (Optional)
--- @field conditions InserterCircuitConditions | nil (Optional)
--- @field filters InventoryFilter[] | nil (Optional)
--- @field stack SimpleItemStack | nil   (Optional)
--- @field target LuaEntity | nil        (Optional)
--- @field modules table<string, uint> | nil (Optional)
--- @field orientation RealOrientation | nil (Optional)
--- @field snap_to_train_stop boolean | nil (Optional)
--- @field request_filters InventoryFilter[] | nil (Optional)
--- @field movement Vector | nil         (Optional)
--- @field height float | nil            (Optional)
--- @field vertical_speed float | nil    (Optional)
--- @field frame_speed float | nil       (Optional)
--- @field speed double | nil            (Optional)
--- @field max_range double | nil        (Optional)
--- @field amount uint | nil             (Optional)
--- @field enable_tree_removal boolean | nil (Optional)
--- @field enable_cliff_removal boolean | nil (Optional)
--- @field snap_to_tile_center boolean | nil (Optional)
--- @field type string | nil             (Optional)
--- @field parameters ProgrammableSpeakerParameters | nil (Optional)
--- @field alert_parameters ProgrammableSpeakerAlertParameters | nil (Optional)
--- @field inventory_size uint | nil     (Optional)
--- @field player_index uint | nil       (Optional)
--- @field bounding_box BoundingBox | nil (Optional)
--- @field box_type CursorBoxRenderType | nil (Optional)
--- @field blink_interval uint | nil     (Optional)
--- @field time_to_live uint | nil       (Optional)
--- @field lifetime uint | nil           (Optional)

--- Create an entity on this surface.
--- 
--- @param params LuaSurface_create_entity_p
function surface.create_entity(params)
    params = nil
end


--- @alias LuaSurface_create_trivial_smoke_p
--- @field name string                   The smoke prototype name to create.
--- @field position MapPosition          Where to create the smoke.

--- @param params LuaSurface_create_trivial_smoke_p
function surface.create_trivial_smoke(params)
    params = nil
end


--- @alias LuaSurface_create_particle_p
--- @field name string                   The particle name.
--- @field position MapPosition          Where to create the particle.
--- @field movement Vector               
--- @field height float                  
--- @field vertical_speed float          
--- @field frame_speed float             

--- Creates a particle at the given location
--- 
--- @param params LuaSurface_create_particle_p
function surface.create_particle(params)
    params = nil
end


--- @alias LuaSurface_create_unit_group_p
--- @field position MapPosition          Initial position of the new unit group.
--- @field force ForceIdentification | nil (Optional)  Force of the new unit group. Defaults to `"enemy"`.

--- Create a new unit group at a given position.
--- 
--- @param params LuaSurface_create_unit_group_p
function surface.create_unit_group(params)
    params = nil
end


--- Send a group to build a new base.
--- 
--- @overload fun(position: MapPosition, unit_count: uint)
--- @param position MapPosition         
--- @param unit_count uint              
--- @param force ForceIdentification | nil (Optional) 
function surface.build_enemy_base(position, unit_count, force)
    position = nil
    unit_count = nil
    force = nil
end


--- Get the tile at a given position.
--- 
--- @param x int                        
--- @param y int                        
function surface.get_tile(x, y)
    x = nil
    y = nil
end


--- Set tiles at specified locations. Can automatically correct the edges around modified tiles.
--- Placing a mineable tile on top of a non-mineable one will turn the latter into the LuaTile::hidden_tile for that
--- tile. Placing a mineable tile on a mineable one or a non-mineable tile on a non-mineable one will not modify the
--- hidden tile. This restriction can however be circumvented by using LuaSurface::set_hidden_tile.
--- 
--- @see LuaSurface#set_hidden_tile @
--- @see LuaTile#hidden_tile @
--- @see LuaTilePrototype#mineable_properties @
--- 
--- @overload fun(tiles: Tile[])
--- @overload fun(tiles: Tile[], correct_tiles: boolean)
--- @overload fun(tiles: Tile[], correct_tiles: boolean, remove_colliding_entities: boolean | string)
--- @overload fun(tiles: Tile[], correct_tiles: boolean, remove_colliding_entities: boolean | string, remove_colliding_decoratives: boolean)
--- @param tiles Tile[]                 
--- @param correct_tiles boolean | nil   (Optional) 
--- @param remove_colliding_entities boolean | string | nil (Optional) 
--- @param remove_colliding_decoratives boolean | nil (Optional) 
--- @param raise_event boolean | nil     (Optional) 
function surface.set_tiles(tiles, correct_tiles, remove_colliding_entities, remove_colliding_decoratives, raise_event)
    tiles = {}
    correct_tiles = nil
    remove_colliding_entities = nil
    remove_colliding_decoratives = nil
    raise_event = nil
end


--- Spawn pollution at the given position.
--- 
--- @param source MapPosition           
--- @param amount double                
function surface.pollute(source, amount)
    source = nil
    amount = nil
end


--- Get an iterator going over every chunk on this surface.
--- @return nil                         
function surface.get_chunks()
    return nil
end


--- Is a given chunk generated?
--- 
--- @param position ChunkPosition       
function surface.is_chunk_generated(position)
    position = nil
end


--- Request that the game's map generator generate chunks at the given position for the given radius on this surface.
--- 
--- @param position MapPosition         
--- @param radius uint                  
function surface.request_to_generate_chunks(position, radius)
    position = nil
    radius = nil
end


--- Blocks and generates all chunks that have been requested using all available threads.
--- @return nil                         
function surface.force_generate_chunk_requests()
    return nil
end


--- Set generated status of a chunk. Useful when copying chunks.
--- 
--- @param position ChunkPosition       
--- @param status defines_chunk_generated_status
function surface.set_chunk_generated_status(position, status)
    position = nil
    status = nil
end


--- Find the logistic network that covers a given position.
--- 
--- @param position MapPosition         
--- @param force ForceIdentification    
function surface.find_logistic_network_by_position(position, force)
    position = nil
    force = nil
end


--- Finds all of the logistics networks whose construction area intersects with the given position.
--- 
--- @param position MapPosition         
--- @param force ForceIdentification    
function surface.find_logistic_networks_by_construction_area(position, force)
    position = nil
    force = nil
end


--- @alias LuaSurface_deconstruct_area_p
--- @field area BoundingBox              The area to mark for deconstruction.
--- @field force ForceIdentification     The force whose bots should perform the deconstruction.
--- @field player PlayerIdentification | nil (Optional)  The player to set the last_user to if any.
--- @field skip_fog_of_war boolean | nil (Optional)  If chunks covered by fog-of-war are skipped.
--- @field item LuaItemStack | nil       (Optional)  The deconstruction item to use if any.

--- Place a deconstruction request.
--- 
--- @param params LuaSurface_deconstruct_area_p
function surface.deconstruct_area(params)
    params = nil
end


--- @alias LuaSurface_cancel_deconstruct_area_p
--- @field area BoundingBox              The area to cancel deconstruction orders in.
--- @field force ForceIdentification     The force whose deconstruction orders to cancel.
--- @field player PlayerIdentification | nil (Optional)  The player to set the last_user to if any.
--- @field skip_fog_of_war boolean | nil (Optional)  If chunks covered by fog-of-war are skipped.
--- @field item LuaItemStack | nil       (Optional)  The deconstruction item to use if any.

--- Cancel a deconstruction order.
--- 
--- @param params LuaSurface_cancel_deconstruct_area_p
function surface.cancel_deconstruct_area(params)
    params = nil
end


--- @alias LuaSurface_upgrade_area_p
--- @field area BoundingBox              The area to mark for upgrade.
--- @field force ForceIdentification     The force whose bots should perform the upgrade.
--- @field player PlayerIdentification | nil (Optional)  The player to set the last_user to if any.
--- @field skip_fog_of_war boolean | nil (Optional)  If chunks covered by fog-of-war are skipped.
--- @field item LuaItemStack             The upgrade item to use.

--- Place an upgrade request.
--- 
--- @param params LuaSurface_upgrade_area_p
function surface.upgrade_area(params)
    params = nil
end


--- @alias LuaSurface_cancel_upgrade_area_p
--- @field area BoundingBox              The area to cancel upgrade orders in.
--- @field force ForceIdentification     The force whose upgrade orders to cancel.
--- @field player PlayerIdentification | nil (Optional)  The player to set the last_user to if any.
--- @field skip_fog_of_war boolean | nil (Optional)  If chunks covered by fog-of-war are skipped.
--- @field item LuaItemStack | nil       (Optional)  The upgrade item to use if any.

--- Cancel a upgrade order.
--- 
--- @param params LuaSurface_cancel_upgrade_area_p
function surface.cancel_upgrade_area(params)
    params = nil
end


--- The hidden tile name.
--- 
--- @param position TilePosition        
function surface.get_hidden_tile(position)
    position = nil
end


--- Set the hidden tile for the specified position. While during normal gameplay only non-mineable tiles can become
--- hidden, this method allows any kind of tile to be set as the hidden one.
--- 
--- @see LuaTilePrototype#mineable_properties @
--- 
--- @param position TilePosition        
--- @param tile string | LuaTilePrototype
function surface.set_hidden_tile(position, tile)
    position = nil
    tile = nil
end


--- Gets all tiles of the given types that are connected horizontally or vertically to the given tile position
--- including the given tile position.
--- 
--- @param position TilePosition        
--- @param tiles string[]               
function surface.get_connected_tiles(position, tiles)
    position = nil
    tiles = {}
end


--- @param position ChunkPosition       
function surface.delete_chunk(position)
    position = nil
end


--- Regenerate autoplacement of some entities on this surface. This can be used to autoplace newly-added entities.
--- 
--- @overload fun()
--- @overload fun(entities: string | string[])
--- @param entities string | string[] | nil (Optional) 
--- @param chunks ChunkPosition[] | nil  (Optional) 
function surface.regenerate_entity(entities, chunks)
    entities = nil
    chunks = {}
end


--- Regenerate autoplacement of some decoratives on this surface. This can be used to autoplace newly-added
--- decoratives.
--- 
--- @overload fun()
--- @overload fun(decoratives: string | string[])
--- @param decoratives string | string[] | nil (Optional) 
--- @param chunks ChunkPosition[] | nil  (Optional) 
function surface.regenerate_decorative(decoratives, chunks)
    decoratives = nil
    chunks = {}
end


--- Print text to the chat console of all players on this surface.
--- 
--- @overload fun(message: LocalisedString)
--- @param message LocalisedString      
--- @param color Color | nil             (Optional) 
function surface.print(message, color)
    message = nil
    color = nil
end


--- @alias LuaSurface_destroy_decoratives_p
--- @field area BoundingBox | nil        (Optional)  
--- @field position TilePosition | nil   (Optional)  
--- @field name string | string[] | LuaDecorativePrototype | LuaDecorativePrototype[] | nil (Optional)  
--- @field limit uint | nil              (Optional)  
--- @field invert boolean | nil          (Optional)  If the filters should be inverted.

--- Removes all decoratives from the given area. If no area and no position are given, then the entire surface is
--- searched.
--- 
--- @param params LuaSurface_destroy_decoratives_p
function surface.destroy_decoratives(params)
    params = nil
end


--- @alias LuaSurface_create_decoratives_p
--- @field check_collision boolean | nil (Optional)  If collision should be checked against entities/tiles.
--- @field decoratives Decorative[]      

--- Adds the given decoratives to the surface.
--- 
--- @param params LuaSurface_create_decoratives_p
function surface.create_decoratives(params)
    params = nil
end


--- @alias LuaSurface_find_decoratives_filtered_p
--- @field area BoundingBox | nil        (Optional)  
--- @field position TilePosition | nil   (Optional)  
--- @field name string | string[] | LuaDecorativePrototype | LuaDecorativePrototype[] | nil (Optional)  
--- @field limit uint | nil              (Optional)  
--- @field invert boolean | nil          (Optional)  If the filters should be inverted.

--- Find decoratives of a given name in a given area.
--- If no filters are given, returns all decoratives in the search area. If multiple filters are specified, returns
--- only decoratives matching every given filter. If no area and no position are given, the entire surface is searched.
--- 
--- @param params LuaSurface_find_decoratives_filtered_p
function surface.find_decoratives_filtered(params)
    params = nil
end


--- @overload fun()
--- @param force ForceIdentification | nil (Optional) 
function surface.get_trains(force)
    force = nil
end


--- Clears all pollution on this surface.
--- @return nil                         
function surface.clear_pollution()
    return nil
end


--- @alias LuaSurface_play_sound_p
--- @field path SoundPath                The sound to play.
--- @field position MapPosition | nil    (Optional)  Where the sound should be played. If not given, it's played at the current position of each player.
--- @field volume_modifier double | nil  (Optional)  The volume of the sound to play. Must be between 0 and 1 inclusive.
--- @field override_sound_type SoundType | nil (Optional)  The volume mixer to play the sound through. Defaults to the default mixer for the given sound type.

--- Play a sound for every player on this surface.
--- 
--- @param params LuaSurface_play_sound_p
function surface.play_sound(params)
    params = nil
end


--- Gets the resource amount of all resources on this surface
--- @return nil                         
function surface.get_resource_counts()
    return nil
end


--- Gets a random generated chunk position or 0,0 if no chunks have been generated on this surface.
--- @return nil                         
function surface.get_random_chunk()
    return nil
end


--- @alias LuaSurface_clone_area_p
--- @field source_area BoundingBox       
--- @field destination_area BoundingBox  
--- @field destination_surface SurfaceIdentification | nil (Optional)  
--- @field destination_force LuaForce | string | nil (Optional)  
--- @field clone_tiles boolean | nil     (Optional)  If tiles should be cloned
--- @field clone_entities boolean | nil  (Optional)  If entities should be cloned
--- @field clone_decoratives boolean | nil (Optional)  If decoratives should be cloned
--- @field clear_destination_entities boolean | nil (Optional)  If the destination entities should be cleared
--- @field clear_destination_decoratives boolean | nil (Optional)  If the destination decoratives should be cleared
--- @field expand_map boolean | nil      (Optional)  If the destination surface should be expanded when destination_area is outside current bounds. Default false.
--- @field create_build_effect_smoke boolean | nil (Optional)  If true, the building effect smoke will be shown around the new entities.

--- Clones the given area.
--- 
--- @param params LuaSurface_clone_area_p
function surface.clone_area(params)
    params = nil
end


--- @alias LuaSurface_clone_brush_p
--- @field source_offset TilePosition    
--- @field destination_offset TilePosition 
--- @field source_positions TilePosition[] 
--- @field destination_surface SurfaceIdentification | nil (Optional)  
--- @field destination_force LuaForce | string | nil (Optional)  
--- @field clone_tiles boolean | nil     (Optional)  If tiles should be cloned
--- @field clone_entities boolean | nil  (Optional)  If entities should be cloned
--- @field clone_decoratives boolean | nil (Optional)  If decoratives should be cloned
--- @field clear_destination_entities boolean | nil (Optional)  If the destination entities should be cleared
--- @field clear_destination_decoratives boolean | nil (Optional)  If the destination decoratives should be cleared
--- @field expand_map boolean | nil      (Optional)  If the destination surface should be expanded when destination_area is outside current bounds. Default false.
--- @field manual_collision_mode boolean | nil (Optional)  If manual-style collision checks should be done.
--- @field create_build_effect_smoke boolean | nil (Optional)  If true, the building effect smoke will be shown around the new entities.

--- Clones the given area.
--- 
--- @param params LuaSurface_clone_brush_p
function surface.clone_brush(params)
    params = nil
end


--- @alias LuaSurface_clone_entities_p
--- @field entities LuaEntity[]          
--- @field destination_offset Vector     
--- @field destination_surface SurfaceIdentification | nil (Optional)  
--- @field destination_force ForceIdentification | nil (Optional)  
--- @field snap_to_grid boolean | nil    (Optional)  
--- @field create_build_effect_smoke boolean | nil (Optional)  If true, the building effect smoke will be shown around the new entities.

--- Clones the given entities.
--- 
--- @param params LuaSurface_clone_entities_p
function surface.clone_entities(params)
    params = nil
end


--- Clears this surface deleting all entities and chunks on it.
--- 
--- @overload fun()
--- @param ignore_characters boolean | nil (Optional) 
function surface.clear(ignore_characters)
    ignore_characters = nil
end


--- @alias LuaSurface_request_path_p
--- @field bounding_box BoundingBox      The dimensions of the object that's supposed to travel the path.
--- @field collision_mask CollisionMaskWithFlags | string[] The list of masks the `bounding_box` collides with.
--- @field start MapPosition             The position from which to start pathfinding.
--- @field goal MapPosition              The position to find a path to.
--- @field force ForceIdentification     The force for which to generate the path, determining which gates can be opened for example.
--- @field radius double | nil           (Optional)  How close the pathfinder needs to get to its `goal` (in tiles). Defaults to `1`.
--- @field pathfind_flags PathfinderFlags | nil (Optional)  Flags that affect pathfinder behavior.
--- @field can_open_gates boolean | nil  (Optional)  Whether the path request can open gates. Defaults to `false`.
--- @field path_resolution_modifier int | nil (Optional)  Defines how coarse the pathfinder's grid is. Smaller values mean a coarser grid (negative numbers allowed). Defaults to `0`.
--- @field entity_to_ignore LuaEntity | nil (Optional)  Makes the pathfinder ignore collisions with this entity if it is given.

--- Generates a path with the specified constraints (as an array of PathfinderWaypoints) using the unit pathfinding
--- algorithm. This path can be used to emulate pathing behavior by script for non-unit entities. If you want to
--- command actual units to move, use the LuaEntity::set_command functionality instead.
--- The resulting path is ultimately returned asynchronously via on_script_path_request_finished.
--- 
--- @see LuaEntity#set_command @
--- @see on_script_path_request_finished @
--- @see PathfinderWaypoint @
--- 
--- @param params LuaSurface_request_path_p
function surface.request_path(params)
    params = nil
end


--- Gets the script areas that match the given name or if no name is given all areas are returned.
--- 
--- @overload fun()
--- @param name string | nil             (Optional) 
function surface.get_script_areas(name)
    name = nil
end


--- Gets the first script area by name or id.
--- 
--- @overload fun()
--- @param key string | uint | nil       (Optional) 
function surface.get_script_area(key)
    key = nil
end


--- Sets the given script area to the new values.
--- 
--- @param id uint                      
--- @param area ScriptArea              
function surface.edit_script_area(id, area)
    id = nil
    area = nil
end


--- Adds the given script area.
--- 
--- @param area ScriptArea              
function surface.add_script_area(area)
    area = nil
end


--- Removes the given script area.
--- 
--- @param id uint                      
function surface.remove_script_area(id)
    id = nil
end


--- Gets the script positions that match the given name or if no name is given all positions are returned.
--- 
--- @overload fun()
--- @param name string | nil             (Optional) 
function surface.get_script_positions(name)
    name = nil
end


--- Gets the first script position by name or id.
--- 
--- @overload fun()
--- @param key string | uint | nil       (Optional) 
function surface.get_script_position(key)
    key = nil
end


--- Sets the given script position to the new values.
--- 
--- @param id uint                      
--- @param area ScriptPosition          
function surface.edit_script_position(id, area)
    id = nil
    area = nil
end


--- Adds the given script position.
--- 
--- @param area ScriptPosition          
function surface.add_script_position(area)
    area = nil
end


--- Removes the given script position.
--- 
--- @param id uint                      
function surface.remove_script_position(id)
    id = nil
end


--- Gets the map exchange string for the current map generation settings of this surface.
--- @return nil                         
function surface.get_map_exchange_string()
    return nil
end


--- Gets the starting area radius of this surface.
--- @return nil                         
function surface.get_starting_area_radius()
    return nil
end


--- Gets the closest entity in the list to this position.
--- 
--- @param position MapPosition         
--- @param entities LuaEntity[]         
function surface.get_closest(position, entities)
    position = nil
    entities = {}
end


--- @alias LuaSurface_get_train_stops_p
--- @field name string | string[] | nil  (Optional)  
--- @field force ForceIdentification | nil (Optional)  

--- Gets train stops matching the given filters.
--- 
--- @overload fun()
--- @param params LuaSurface_get_train_stops_p | nil (Optional) 
function surface.get_train_stops(params)
    params = nil
end


--- Gets the total amount of pollution on the surface by iterating over all of the chunks containing pollution.
--- @return nil                         
function surface.get_total_pollution()
    return nil
end


--- @overload fun(prototype: EntityPrototypeIdentification, position: MapPosition, use_map_generation_bounding_box: boolean)
--- @param prototype EntityPrototypeIdentification
--- @param position MapPosition         
--- @param use_map_generation_bounding_box boolean
--- @param direction defines_direction | nil (Optional) 
function surface.entity_prototype_collides(prototype, position, use_map_generation_bounding_box, direction)
    prototype = nil
    position = nil
    use_map_generation_bounding_box = nil
    direction = nil
end


--- @param prototype string             
--- @param position MapPosition         
function surface.decorative_prototype_collides(prototype, position)
    prototype = nil
    position = nil
end


--- @param property_names string[]      
--- @param positions MapPosition[]      
function surface.calculate_tile_properties(property_names, positions)
    property_names = {}
    positions = {}
end


--- Returns all the military targets (entities with force) on this chunk for the given force.
--- 
--- @param position ChunkPosition       
--- @param force LuaForce | string      
function surface.get_entities_with_force(position, force)
    position = nil
    force = nil
end


--- Sets the given area to the checkerboard lab tiles.
--- 
--- @param area BoundingBox             
function surface.build_checkerboard(area)
    area = nil
end


--- All methods and properties that this object supports.
--- @return nil                         
function surface.help()
    return nil
end

