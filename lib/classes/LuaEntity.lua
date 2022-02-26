

--- @class LuaEntity : LuaControl
--- The primary interface for interacting with entities through the Lua API. Entities are everything that exists on the
--- map except for tiles (see LuaTile).
--- Most functions on LuaEntity also work when the entity is contained in a ghost.
--- 
--- @see LuaTile @
local entity = {}


--- @type string
---  (R)
--- Name of the entity prototype. E.g. "inserter" or "filter-inserter".
entity.name = nil

--- @type string
---  (R)
--- Name of the entity or tile contained in this ghost
entity.ghost_name = nil

--- @type LocalisedString
---  (R)
--- Localised name of the entity.
entity.localised_name = nil

--- @type LocalisedString
---  (R)
entity.localised_description = nil

--- @type LocalisedString
---  (R)
--- Localised name of the entity or tile contained in this ghost.
entity.ghost_localised_name = nil

--- @type LocalisedString
---  (R)
entity.ghost_localised_description = nil

--- @type string
---  (R)
--- The entity prototype type of this entity.
entity.type = nil

--- @type string
---  (R)
--- The prototype type of the entity or tile contained in this ghost.
entity.ghost_type = nil

--- @type boolean
---  (RW)
--- Deactivating an entity will stop all its operations (car will stop moving, inserters will stop working, fish will
--- stop moving etc).
entity.active = nil

--- @type boolean
---  (RW)
--- If set to `false`, this entity can't be damaged and won't be attacked automatically. It can however still be mined.
entity.destructible = nil

--- @type boolean
---  (RW)
entity.minable = nil

--- @type boolean
---  (RW)
--- When entity is not to be rotatable (inserter, transport belt etc), it can't be rotated by player using the R key.
entity.rotatable = nil

--- @type boolean
---  (RW)
--- Player can't open gui of this entity and he can't quick insert/input stuff in to the entity when it is not
--- operable.
entity.operable = nil

--- @type float
---  (RW)
--- The current health of the entity, or `nil` if it doesn't have health. Health is automatically clamped to be between
--- `0` and max health (inclusive). Entities with a health of `0` can not be attacked.
entity.health = nil

--- @type defines_direction
---  (RW)
--- The current direction this entity is facing.
entity.direction = nil

--- @type boolean
---  (R)
--- Whether the entity has direction. When it is false for this entity, it will always return north direction when
--- asked for.
entity.supports_direction = nil

--- @type RealOrientation
---  (RW)
--- The smooth orientation of this entity, if it supports orientation.
entity.orientation = nil

--- @type CliffOrientation
---  (R)
--- The orientation of this cliff.
entity.cliff_orientation = nil

--- @type RealOrientation
---  (RW)
--- The relative orientation of the vehicle turret, artillery turret, artillery wagon or `nil` if this entity isn't a
--- vehicle with a vehicle turret or artillery turret/wagon.
entity.relative_turret_orientation = nil

--- @type RealOrientation
---  (RW)
--- The torso orientation of this spider vehicle.
entity.torso_orientation = nil

--- @type uint
---  (RW)
--- Count of resource units contained.
entity.amount = nil

--- @type uint
---  (RW)
--- Count of initial resource units contained.
entity.initial_amount = nil

--- @type float
---  (RW)
--- Multiplies the acceleration the vehicle can create for one unit of energy. By default is `1`.
entity.effectivity_modifier = nil

--- @type float
---  (RW)
--- Multiplies the energy consumption.
entity.consumption_modifier = nil

--- @type float
---  (RW)
--- Multiplies the car friction rate.
entity.friction_modifier = nil

--- @type boolean
---  (RW)
--- Whether the driver of this car or spidertron is the gunner, if false, the passenger is the gunner.
entity.driver_is_gunner = nil

--- @type VehicleAutomaticTargetingParameters
---  (RW)
--- Read when this spidertron auto-targets enemies
entity.vehicle_automatic_targeting_parameters = nil

--- @type float
---  (RW)
--- The current speed of this car in tiles per tick, rolling stock, projectile or spider vehicle, or current max speed
--- of the unit. Only the speed of units, cars, and projectiles are writable.
entity.speed = nil

--- @type float
---  (R)
--- The current speed of this unit in tiles per tick, taking into account any walking speed modifier given by the tile
--- the unit is standing on.
entity.effective_speed = nil

--- @type LuaItemStack
---  (R)
entity.stack = nil

--- @type LuaEntityPrototype
---  (R)
--- The entity prototype of this entity.
entity.prototype = nil

--- @type LuaEntityPrototype | LuaTilePrototype
---  (R)
--- The prototype of the entity or tile contained in this ghost.
entity.ghost_prototype = nil

--- @type MapPosition
---  (RW)
--- Position where the entity puts its stuff.
entity.drop_position = nil

--- @type MapPosition
---  (RW)
--- Where the inserter will pick up items from.
entity.pickup_position = nil

--- @type LuaEntity
---  (RW)
--- The entity this entity is putting its items to, or `nil` if there is no such entity. If there are multiple possible
--- entities at the drop-off point, writing to this attribute allows a mod to choose which one to drop off items to.
--- The entity needs to collide with the tile box under the drop-off position.
entity.drop_target = nil

--- @type LuaEntity
---  (RW)
--- The entity this inserter will attempt to pick up items from, or `nil` if there is no such entity. If there are
--- multiple possible entities at the pick-up point, writing to this attribute allows a mod to choose which one to pick
--- up items from. The entity needs to collide with the tile box under the pick-up position.
entity.pickup_target = nil

--- @type uint
---  (RW)
--- Index of the currently selected weapon slot of this character, car, or spidertron, or `nil` if the car/spidertron
--- doesn't have guns.
entity.selected_gun_index = nil

--- @type double
---  (RW)
--- Energy stored in the entity (heat in furnace, energy stored in electrical devices etc.). always 0 for entities that
--- don't have the concept of energy stored inside.
entity.energy = nil

--- @type double
---  (RW)
--- The temperature of this entities heat energy source if this entity uses a heat energy source or `nil`.
entity.temperature = nil

--- @type LuaRecipe
---  (R)
--- The previous recipe this furnace was using or nil if the furnace had no previous recipe.
entity.previous_recipe = nil

--- @type LuaItemStack
---  (R)
--- The item stack currently held in an inserter's hand.
entity.held_stack = nil

--- @type MapPosition
---  (R)
--- Current position of the inserter's "hand".
entity.held_stack_position = nil

--- @type LuaTrain
---  (R)
--- The train this rolling stock belongs to or nil if not rolling stock.
entity.train = nil

--- @type table<string, LuaEntity[]> | LuaEntity[] | LuaEntity
---  (R)
--- A list of neighbours for certain types of entities. Applies to electric poles, power switches, underground belts,
--- walls, gates, reactors, cliffs, and pipe-connectable entities.
--- - When called on an electric pole, this is a dictionary of all connections, indexed by the strings `"copper"`,
--- `"red"`, and `"green"`.
--- - When called on a pipe-connectable entity, this is an array of entity arrays of all entities a given fluidbox is
--- connected to.
--- - When called on an underground transport belt, this is the other end of the underground belt connection, or `nil`
--- if none.
--- - When called on a wall-connectable entity or reactor, this is a dictionary of all connections indexed by the
--- connection direction "north", "south", "east", and "west".
--- - When called on a cliff entity, this is a dictionary of all connections indexed by the connection direction
--- "north", "south", "east", and "west".
entity.neighbours = nil

--- @type table<string, LuaEntity[]>
---  (R)
--- The belt connectable neighbours of this belt connectable entity. Only entities that input to or are outputs of this
--- entity. Does not contain the other end of an underground belt, see LuaEntity::neighbours for that. This is a
--- dictionary with `"inputs"`, `"outputs"` entries that are arrays of transport belt connectable entities, or empty
--- tables if no entities.
--- 
--- @see LuaEntity#neighbours @
entity.belt_neighbours = nil

--- @type LuaFluidBox
---  (RW)
--- Fluidboxes of this entity.
entity.fluidbox = nil

--- @type string
---  (RW)
--- The backer name assigned to this entity, or `nil` if this entity doesn't support backer names. Entities that
--- support backer names are labs, locomotives, radars, roboports, and train stops.
entity.backer_name = nil

--- @type string
---  (RW)
--- The label of this entity if it has one or `nil`. Changing the value will trigger on_entity_renamed event
entity.entity_label = nil

--- @type uint
---  (RW)
--- The ticks left before a ghost, combat robot, highlight box or smoke with trigger is destroyed.
--- - for ghosts set to uint32 max (4,294,967,295) to never expire.
--- - for ghosts Cannot be set higher than LuaForce::ghost_time_to_live of the entity's force.
--- 
--- @see LuaForce#ghost_time_to_live @
entity.time_to_live = nil

--- @type Color
---  (RW)
--- The character, rolling stock, train stop, car, spider-vehicle, flying text, corpse or simple-entity-with-owner
--- color. Returns `nil` if this entity doesn't use custom colors.
entity.color = nil

--- @type LocalisedString
---  (RW)
--- The text of this flying-text entity.
entity.text = nil

--- @type defines_signal_state
---  (R)
--- The state of this rail signal.
entity.signal_state = nil

--- @type defines_chain_signal_state
---  (R)
--- The state of this chain signal.
entity.chain_signal_state = nil

--- @type boolean
---  (RW)
--- Will this entity be picked up automatically when the player walks over it?
entity.to_be_looted = nil

--- @type double
---  (R)
--- The current crafting speed, including speed bonuses from modules and beacons.
entity.crafting_speed = nil

--- @type float
---  (RW)
--- The current crafting progress, as a number in range [0, 1].
entity.crafting_progress = nil

--- @type double
---  (RW)
--- The current productivity bonus progress, as a number in range [0, 1].
entity.bonus_progress = nil

--- @type double
---  (R)
--- The productivity bonus of this entity.
entity.productivity_bonus = nil

--- @type double
---  (R)
--- The pollution bonus of this entity.
entity.pollution_bonus = nil

--- @type double
---  (R)
--- The speed bonus of this entity.
entity.speed_bonus = nil

--- @type double
---  (R)
--- The consumption bonus of this entity.
entity.consumption_bonus = nil

--- @type string
---  (R)
--- `"input"` or `"output"`, depending on whether this underground belt goes down or up.
entity.belt_to_ground_type = nil

--- @type string
---  (RW)
--- `"input"` or `"output"`, depending on whether this loader puts to or gets from a container.
entity.loader_type = nil

--- @type uint
---  (RW)
--- Number of rocket parts in the silo.
entity.rocket_parts = nil

--- @type LuaLogisticNetwork
---  (RW)
--- The logistic network this entity is a part of, or `nil` if this entity is not a part of any logistic network.
entity.logistic_network = nil

--- @type LuaLogisticCell
---  (R)
--- The logistic cell this entity is a part of. Will be `nil` if this entity is not a part of any logistic cell.
entity.logistic_cell = nil

--- @type table<string, uint>
---  (RW)
--- Items this ghost will request when revived or items this item request proxy is requesting. Result is a dictionary
--- mapping each item prototype name to the required count.
entity.item_requests = nil

--- @type LuaPlayer
---  (R)
--- The player connected to this character or `nil` if none.
entity.player = nil

--- @type LuaUnitGroup
---  (R)
--- The unit group this unit is a member of, or `nil` if none.
entity.unit_group = nil

--- @type double
---  (RW)
--- The damage dealt by this turret, artillery turret, or artillery wagon.
entity.damage_dealt = nil

--- @type uint
---  (RW)
--- The number of units killed by this turret, artillery turret, or artillery wagon.
entity.kills = nil

--- @type LuaPlayer
---  (RW)
--- The last player that changed any setting on this entity. This includes building the entity, changing its color, or
--- configuring its circuit network. Can be `nil` if the last user is not part of the save anymore. Mods can overwrite
--- it if desired.
entity.last_user = nil

--- @type double
---  (RW)
--- The buffer size for the electric energy source or nil if the entity doesn't have an electric energy source.
entity.electric_buffer_size = nil

--- @type double
---  (R)
--- The input flow limit for the electric energy source or nil if the entity doesn't have an electric energy source.
entity.electric_input_flow_limit = nil

--- @type double
---  (R)
--- The output flow limit for the electric energy source or nil if the entity doesn't have an electric energy source.
entity.electric_output_flow_limit = nil

--- @type double
---  (R)
--- The electric drain for the electric energy source or nil if the entity doesn't have an electric energy source.
entity.electric_drain = nil

--- @type double
---  (R)
--- The emissions for the electric energy source or nil if the entity doesn't have an electric energy source.
entity.electric_emissions = nil

--- @type uint
---  (R)
--- A universally unique number identifying this entity for the lifetime of the save. Only entities inheriting from
--- EntityWithOwner, as well as ItemRequestProxy and EntityGhost entities, are assigned a unit number. This property is
--- `nil` for entities without unit number.
entity.unit_number = nil

--- @type uint
---  (R)
--- The unit_number of the entity contained in this ghost. It is the same as the unit number of the EntityWithOwner
--- that was destroyed to create this ghost. If it was created by other means, or if the inner entity doesn not support
--- unit numbers, this property is `nil`.
--- 
--- @see LuaEntity#unit_number @
entity.ghost_unit_number = nil

--- @type double
---  (RW)
--- The mining progress for this mining drill or `nil` if this isn't a mining drill. Is a number in range [0,
--- mining_target.prototype.mineable_properties.mining_time]
entity.mining_progress = nil

--- @type double
---  (RW)
--- The bonus mining progress for this mining drill or `nil` if this isn't a mining drill. Read yields a number in
--- range [0, mining_target.prototype.mineable_properties.mining_time]
entity.bonus_mining_progress = nil

--- @type double
---  (RW)
--- The power production specific to the ElectricEnergyInterface entity type.
entity.power_production = nil

--- @type double
---  (RW)
--- The power usage specific to the ElectricEnergyInterface entity type.
entity.power_usage = nil

--- @type BoundingBox
---  (R)
--- LuaEntityPrototype::collision_box around entity's given position and respecting the current entity orientation.
--- 
--- @see LuaEntityPrototype#collision_box @
entity.bounding_box = nil

--- @type BoundingBox
---  (R)
--- The secondary bounding box of this entity or `nil` if it doesn't have one.
entity.secondary_bounding_box = nil

--- @type BoundingBox
---  (R)
--- LuaEntityPrototype::selection_box around entity's given position and respecting the current entity orientation.
--- 
--- @see LuaEntityPrototype#selection_box @
entity.selection_box = nil

--- @type BoundingBox
---  (R)
--- The secondary selection box of this entity or `nil` if it doesn't have one.
entity.secondary_selection_box = nil

--- @type LuaEntity
---  (R)
--- The mining target or `nil` if none
entity.mining_target = nil

--- @type table
---  (R)
--- Entities that are directly connected to this entity via the circuit network.
entity.circuit_connected_entities = nil

--- @type CircuitConnectionDefinition[]
---  (R)
--- The connection definition for entities that are directly connected to this entity via the circuit network.
entity.circuit_connection_definitions = {}

--- @type uint
---  (R)
--- The index of the configured request with the highest index for this entity. This means 0 if no requests are set and
--- e.g. 20 if the 20th request slot is configured.
entity.request_slot_count = nil

--- @type uint
---  (R)
--- The number of filter slots this inserter, loader, or logistic storage container has. 0 if not one of those
--- entities.
entity.filter_slot_count = nil

--- @type LuaEntity
---  (R)
--- The container entity this loader is pointing at/pulling from depending on the LuaEntity::loader_type.
--- 
--- @see LuaEntity#loader_type @
entity.loader_container = nil

--- @type LuaEquipmentGrid
---  (R)
--- The equipment grid or `nil` if this entity doesn't have an equipment grid.
entity.grid = nil

--- @type uint8
---  (RW)
--- The graphics variation for this entity or `nil` if this entity doesn't use graphics variations.
entity.graphics_variation = nil

--- @type uint8
---  (RW)
--- Index of the tree color.
entity.tree_color_index = nil

--- @type uint8
---  (R)
--- Maximum index of the tree colors.
entity.tree_color_index_max = nil

--- @type uint8
---  (RW)
--- Index of the tree stage.
entity.tree_stage_index = nil

--- @type uint8
---  (R)
--- Maximum index of the tree stages.
entity.tree_stage_index_max = nil

--- @type uint8
---  (RW)
--- Index of the tree gray stage
entity.tree_gray_stage_index = nil

--- @type uint8
---  (R)
--- Maximum index of the tree gray stages.
entity.tree_gray_stage_index_max = nil

--- @type LuaBurner
---  (R)
--- The burner energy source for this entity or `nil` if there isn't one.
entity.burner = nil

--- @type LuaEntity
---  (RW)
--- The shooting target for this turret or `nil`.
entity.shooting_target = nil

--- @type LuaEntity
---  (R)
--- The target entity for this item-request-proxy or `nil`
entity.proxy_target = nil

--- @type LuaEntity[]
---  (R)
--- The sticker entities attached to this entity or `nil` if none.
entity.stickers = {}

--- @type LuaEntity
---  (R)
--- The entity this sticker is sticked to.
entity.sticked_to = nil

--- @type ProgrammableSpeakerParameters
---  (RW)
entity.parameters = nil

--- @type ProgrammableSpeakerAlertParameters
---  (RW)
entity.alert_parameters = nil

--- @type LuaFlowStatistics
---  (R)
--- The electric network statistics for this electric pole.
entity.electric_network_statistics = nil

--- @type uint
---  (RW)
--- Sets the stack size limit on this inserter. If the stack size is > than the force stack size limit the value is
--- ignored.
entity.inserter_stack_size_override = nil

--- @type uint
---  (RW)
--- The number of products this machine finished crafting in its lifetime.
entity.products_finished = nil

--- @type LuaEntity
---  (R)
--- The spawner associated with this unit entity or `nil` if the unit has no associated spawner.
entity.spawner = nil

--- @type LuaEntity[]
---  (R)
--- The units associated with this spawner entity.
entity.units = {}

--- @type boolean
---  (RW)
--- The state of this power switch.
entity.power_switch_state = nil

--- @type ModuleEffects
---  (R)
--- The effects being applied to this entity or `nil`. For beacons this is the effect the beacon is broadcasting.
entity.effects = nil

--- @type InfinityInventoryFilter[]
---  (RW)
--- The filters for this infinity container.
entity.infinity_container_filters = {}

--- @type boolean
---  (RW)
--- If items not included in this infinity container filters should be removed from the container.
entity.remove_unfiltered_items = nil

--- @type uint
---  (RW)
--- The player index associated with this character corpse.
entity.character_corpse_player_index = nil

--- @type uint
---  (RW)
--- The tick this character corpse died at.
entity.character_corpse_tick_of_death = nil

--- @type LocalisedString
---  (RW)
--- The reason this character corpse character died (if any).
entity.character_corpse_death_cause = nil

--- @type LuaPlayer
---  (RW)
--- The player this character is associated with or `nil` if none. When the player logs off in multiplayer all of the
--- associated characters will be logged off with him.
entity.associated_player = nil

--- @type uint
---  (RW)
--- The last tick this character entity was attacked.
entity.tick_of_last_attack = nil

--- @type uint
---  (RW)
--- The last tick this character entity was damaged.
entity.tick_of_last_damage = nil

--- @type LuaItemPrototype
---  (RW)
--- The filter for this splitter or `nil` if no filter is set.
entity.splitter_filter = nil

--- @type string
---  (RW)
--- The filter mode for this filter inserter: "whitelist", "blacklist", or `nil` if this inserter doesn't use filters.
entity.inserter_filter_mode = nil

--- @type string
---  (RW)
--- The input priority for this splitter : "left", "none", or "right".
entity.splitter_input_priority = nil

--- @type string
---  (RW)
--- The output priority for this splitter : "left", "none", or "right".
entity.splitter_output_priority = nil

--- @type boolean
---  (R)
--- If this land mine is armed.
entity.armed = nil

--- @type boolean
---  (RW)
--- When locked; the recipe in this assembling machine can't be changed by the player.
entity.recipe_locked = nil

--- @type LuaEntity
---  (R)
--- The rail entity this train stop is connected to or `nil` if there is none.
entity.connected_rail = nil

--- @type defines_rail_direction
---  (R)
--- Rail direction to which this train stop is binding. This returns a value even when no rails are present.
entity.connected_rail_direction = nil

--- @type uint
---  (R)
--- The number of trains in this rail block for this rail entity.
entity.trains_in_block = nil

--- @type uint
---  (RW)
--- The timeout that's left on this landmine in ticks. It describes the time between the landmine being placed and it
--- being armed.
entity.timeout = nil

--- @type double
---  (R)
--- The current total neighbour bonus of this reactor.
entity.neighbour_bonus = nil

--- @type LuaAISettings
---  (R)
--- The ai settings of this unit.
entity.ai_settings = nil

--- @type string
---  (RW)
--- The hightlight box type of this highlight box entity.
entity.highlight_box_type = nil

--- @type uint
---  (RW)
--- The blink interval of this highlight box entity. 0 indicates no blink.
entity.highlight_box_blink_interval = nil

--- @type defines_entity_status
---  (R)
--- The status of this entity or `nil` if no status.
entity.status = nil

--- @type boolean
---  (RW)
--- If equipment grid logistics are enabled while this vehicle is moving.
entity.enable_logistics_while_moving = nil

--- @type LuaPlayer
---  (RW)
--- The player that this `simple-entity-with-owner`, `simple-entity-with-force`, `flying-text`, or `highlight-box` is
--- visible to. `nil` means it is rendered for every player.
entity.render_player = nil

--- @type ForceIdentification[]
---  (RW)
--- The forces that this `simple-entity-with-owner`, `simple-entity-with-force`, or `flying-text` is visible to. `nil`
--- or an empty array means it is rendered for every force.
entity.render_to_forces = {}

--- @type LuaEntity
---  (R)
--- The rail target of this pump or `nil`.
entity.pump_rail_target = nil

--- @type boolean
---  (R)
--- Returns true if this unit is moving.
entity.moving = nil

--- @type uint
---  (R)
--- Returns the id of the electric network that this entity is connected to or `nil`.
entity.electric_network_id = nil

--- @type boolean
---  (RW)
--- Whether this character's personal roboports are allowed to dispatch robots.
entity.allow_dispatching_robots = nil

--- @type boolean
---  (RW)
--- Whether this rocket silo automatically launches the rocket when cargo is inserted.
entity.auto_launch = nil

--- @type double
---  (R)
--- How much energy this generator generated in the last tick.
entity.energy_generated_last_tick = nil

--- @type LuaItemPrototype
---  (RW)
--- The storage filter for this logistic storage container.
entity.storage_filter = nil

--- @type boolean
---  (RW)
--- Whether this requester chest is set to also request from buffer chests.
entity.request_from_buffers = nil

--- @type boolean
---  (RW)
--- Whether this corpse will ever fade away.
entity.corpse_expires = nil

--- @type boolean
---  (RW)
--- If true, corpse won't be destroyed when entities are placed over it. If false, whether corpse will be removed or
--- not depends on value of CorpsePrototype::remove_on_entity_placement.
entity.corpse_immune_to_entity_placement = nil

--- @type Tags
---  (RW)
--- The tags associated with this entity ghost or `nil` if not an entity ghost.
entity.tags = nil

--- @type Command
---  (R)
--- The command given to this unit or `nil` is the unit has no command.
entity.command = nil

--- @type Command
---  (R)
--- The distraction command given to this unit or `nil` is the unit currently isn't distracted.
entity.distraction_command = nil

--- @type uint
---  (RW)
--- The ticks until the next trigger effect of this smoke-with-trigger.
entity.time_to_next_effect = nil

--- @type MapPosition
---  (RW)
--- Destination position of spidertron's autopilot. Returns `nil` if autopilot doesn't have destination set.
entity.autopilot_destination = nil

--- @type MapPosition[]
---  (R)
--- The queued destination positions of spidertron's autopilot.
entity.autopilot_destinations = {}

--- @type uint
---  (R)
--- Amount of trains related to this particular train stop. Includes train stopped at this train stop (until it finds a
--- path to next target) and trains having this train stop as goal or waypoint. Writing nil will disable the limit
--- (will set a maximum possible value).
entity.trains_count = nil

--- @type uint
---  (RW)
--- Amount of trains above which no new trains will be sent to this train stop.
entity.trains_limit = nil

--- @type boolean
---  (R)
--- (deprecated by 1.1.51) If this entity is a MilitaryTarget. Returns same value as LuaEntity::is_military_target
entity.is_entity_with_force = nil

--- @type boolean
---  (RW)
--- If this entity is a MilitaryTarget. Can be written to if
--- LuaEntityPrototype::allow_run_time_change_of_is_military_target returns true
entity.is_military_target = nil

--- @type boolean
---  (R)
--- If this entity is EntityWithOwner
entity.is_entity_with_owner = nil

--- @type boolean
---  (R)
--- If this entity is EntityWithHealth
entity.is_entity_with_health = nil

--- @type LuaEntity
---  (RW)
--- The owner of this combat robot if any.
entity.combat_robot_owner = nil

--- @type uint
---  (RW)
--- The link ID this linked container is using.
entity.link_id = nil

--- @type LuaEntity
---  (RW)
--- The follow target of this spidertron if any.
entity.follow_target = nil

--- @type Vector
---  (RW)
--- The follow offset of this spidertron if any. If it is not following an entity this will be nil. This is randomized
--- each time the follow entity is set.
entity.follow_offset = nil

--- @type string
---  (RW)
--- Type of linked belt: it is either `"input"` or `"output"`. Changing type will also flip direction so the belt is
--- out of the same side
entity.linked_belt_type = nil

--- @type LuaEntity
---  (R)
--- Neighbour to which this linked belt is connected to. Returns nil if not connected.
entity.linked_belt_neighbour = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
entity.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
entity.object_name = nil



--- Gets the entities output inventory if it has one.
--- @return nil                         
function entity.get_output_inventory()
    return nil
end


--- Inventory for storing modules of this entity; `nil` if this entity has no module inventory.
--- @return nil                         
function entity.get_module_inventory()
    return nil
end


--- The fuel inventory for this entity or `nil` if this entity doesn't have a fuel inventory.
--- @return nil                         
function entity.get_fuel_inventory()
    return nil
end


--- The burnt result inventory for this entity or `nil` if this entity doesn't have a burnt result inventory.
--- @return nil                         
function entity.get_burnt_result_inventory()
    return nil
end


--- Damages the entity.
--- 
--- @overload fun(damage: float, force: ForceIdentification)
--- @overload fun(damage: float, force: ForceIdentification, type: string)
--- @param damage float                 
--- @param force ForceIdentification    
--- @param type string | nil             (Optional) 
--- @param dealer LuaEntity | nil        (Optional) 
function entity.damage(damage, force, type, dealer)
    damage = nil
    force = nil
    type = nil
    dealer = nil
end


--- Checks if the entity can be destroyed
--- @return nil                         
function entity.can_be_destroyed()
    return nil
end


--- @alias LuaEntity_destroy_p
--- @field do_cliff_correction boolean | nil (Optional)  Whether neighbouring cliffs should be corrected. Defaults to `false`.
--- @field raise_destroy boolean | nil   (Optional)  If `true`, [script_raised_destroy](script_raised_destroy) will be called. Defaults to `false`.

--- Destroys the entity.
--- 
--- @overload fun()
--- @param params LuaEntity_destroy_p | nil (Optional) 
function entity.destroy(params)
    params = nil
end


--- Give the entity a command.
--- 
--- @param command Command              
function entity.set_command(command)
    command = nil
end


--- Give the entity a distraction command.
--- 
--- @param command Command              
function entity.set_distraction_command(command)
    command = nil
end


--- Has this unit been assigned a command?
--- @return nil                         
function entity.has_command()
    return nil
end


--- Immediately kills the entity. Does nothing if the entity doesn't have health.
--- Unlike LuaEntity::destroy, `die` will trigger the on_entity_died event and the entity will produce a corpse and
--- drop loot if it has any.
--- 
--- @see LuaEntity#destroy @
--- @see on_entity_died @
--- 
--- @overload fun()
--- @overload fun(force: ForceIdentification)
--- @param force ForceIdentification | nil (Optional) 
--- @param cause LuaEntity | nil         (Optional) 
function entity.die(force, cause)
    force = nil
    cause = nil
end


--- Test whether this entity's prototype has a certain flag set.
--- 
--- @param flag string                  
function entity.has_flag(flag)
    flag = nil
end


--- Same as LuaEntity::has_flag, but targets the inner entity on a entity ghost.
--- 
--- @see LuaEntity#has_flag @
--- 
--- @param flag string                  
function entity.ghost_has_flag(flag)
    flag = nil
end


--- Offer a thing on the market.
--- 
--- @param offer Offer                  
function entity.add_market_item(offer)
    offer = nil
end


--- Remove an offer from a market.
--- 
--- @param offer uint                   
function entity.remove_market_item(offer)
    offer = nil
end


--- Get all offers in a market as an array.
--- @return nil                         
function entity.get_market_items()
    return nil
end


--- Removes all offers from a market.
--- @return nil                         
function entity.clear_market_items()
    return nil
end


--- Connect two devices with a circuit wire or copper cable. Depending on which type of connection should be made,
--- there are different procedures:
--- - To connect two electric poles, `target` must be a LuaEntity that specifies another electric pole. This will
--- connect them with copper cable.
--- - To connect two devices with circuit wire, `target` must be a table of type WireConnectionDefinition.
--- 
--- @see WireConnectionDefinition @
--- @see LuaEntity @
--- 
--- @param target LuaEntity | WireConnectionDefinition
function entity.connect_neighbour(target)
    target = nil
end


--- Disconnect circuit wires or copper cables between devices. Depending on which type of connection should be cut,
--- there are different procedures:
--- - To remove all copper cables, leave the `target` parameter blank: `pole.disconnect_neighbour()`.
--- - To remove all wires of a specific color, set `target` to defines.wire_type.red or defines.wire_type.green.
--- - To remove a specific copper cable between two electric poles, `target` must be a LuaEntity that specifies the
--- other pole: `pole1.disconnect_neighbour(pole2)`.
--- - To remove a specific circuit wire, `target` must be a table of type WireConnectionDefinition.
--- 
--- @see WireConnectionDefinition @
--- @see LuaEntity @
--- @see defines.wire_type#green @
--- @see defines.wire_type#red @
--- 
--- @overload fun()
--- @param target defines_wire_type | LuaEntity | WireConnectionDefinition | nil (Optional) 
function entity.disconnect_neighbour(target)
    target = nil
end


--- Sets the entity to be deconstructed by construction robots.
--- 
--- @overload fun(force: ForceIdentification)
--- @param force ForceIdentification    
--- @param player PlayerIdentification | nil (Optional) 
function entity.order_deconstruction(force, player)
    force = nil
    player = nil
end


--- Cancels deconstruction if it is scheduled, does nothing otherwise.
--- 
--- @overload fun(force: ForceIdentification)
--- @param force ForceIdentification    
--- @param player PlayerIdentification | nil (Optional) 
function entity.cancel_deconstruction(force, player)
    force = nil
    player = nil
end


--- Is this entity marked for deconstruction?
--- @return nil                         
function entity.to_be_deconstructed()
    return nil
end


--- @alias LuaEntity_order_upgrade_p
--- @field force ForceIdentification     The force whose robots are supposed to do the upgrade.
--- @field target EntityPrototypeIdentification The prototype of the entity to upgrade to.
--- @field player PlayerIdentification | nil (Optional)  
--- @field direction defines_direction | nil (Optional)  The new direction if any.

--- Sets the entity to be upgraded by construction robots.
--- 
--- @param params LuaEntity_order_upgrade_p
function entity.order_upgrade(params)
    params = nil
end


--- Cancels upgrade if it is scheduled, does nothing otherwise.
--- 
--- @overload fun(force: ForceIdentification)
--- @param force ForceIdentification    
--- @param player PlayerIdentification | nil (Optional) 
function entity.cancel_upgrade(force, player)
    force = nil
    player = nil
end


--- Is this entity marked for upgrade?
--- @return nil                         
function entity.to_be_upgraded()
    return nil
end


--- Get a logistic requester slot.
--- 
--- @param slot uint                    
function entity.get_request_slot(slot)
    slot = nil
end


--- Set a logistic requester slot.
--- 
--- @param request ItemStackIdentification
--- @param slot uint                    
function entity.set_request_slot(request, slot)
    request = nil
    slot = nil
end


--- Clear a logistic requester slot.
--- 
--- @param slot uint                    
function entity.clear_request_slot(slot)
    slot = nil
end


--- Returns whether a craft is currently in process. It does not indicate whether progress is currently being made, but
--- whether any crafting action has made progress in this machine.
--- @return nil                         
function entity.is_crafting()
    return nil
end


--- @return nil                         
function entity.is_opened()
    return nil
end


--- @return nil                         
function entity.is_opening()
    return nil
end


--- @return nil                         
function entity.is_closed()
    return nil
end


--- @return nil                         
function entity.is_closing()
    return nil
end


--- @overload fun(force: ForceIdentification)
--- @param force ForceIdentification    
--- @param extra_time uint | nil         (Optional) 
function entity.request_to_open(force, extra_time)
    force = nil
    extra_time = nil
end


--- @param force ForceIdentification    
function entity.request_to_close(force)
    force = nil
end


--- Get a transport line of a belt or belt connectable entity.
--- 
--- @param index uint                   
function entity.get_transport_line(index)
    index = nil
end


--- Get the maximum transport line index of a belt or belt connectable entity.
--- @return nil                         
function entity.get_max_transport_line_index()
    return nil
end


--- @return nil                         
function entity.launch_rocket()
    return nil
end


--- @alias LuaEntity_revive_p
--- @field return_item_request_proxy boolean | nil (Optional)  If `true` the function will return item request proxy as the third return value.
--- @field raise_revive boolean | nil    (Optional)  If true, and an entity ghost; [script_raised_revive](script_raised_revive) will be called. Else if true, and a tile ghost; [script_raised_set_tiles](script_raised_set_tiles) will be called.

--- Revive a ghost. I.e. turn it from a ghost to a real entity or tile.
--- 
--- @overload fun()
--- @param params LuaEntity_revive_p | nil (Optional) 
function entity.revive(params)
    params = nil
end


--- @alias LuaEntity_silent_revive_p
--- @field return_item_request_proxy boolean | nil (Optional)  If `true` the function will return item request proxy as the third parameter.
--- @field raise_revive boolean | nil    (Optional)  If true, and an entity ghost; [script_raised_revive](script_raised_revive) will be called. Else if true, and a tile ghost; [script_raised_set_tiles](script_raised_set_tiles) will be called.

--- Revives a ghost silently.
--- 
--- @overload fun()
--- @param params LuaEntity_silent_revive_p | nil (Optional) 
function entity.silent_revive(params)
    params = nil
end


--- @alias LuaEntity_get_connected_rail_p
--- @field rail_direction defines_rail_direction 
--- @field rail_connection_direction defines_rail_connection_direction 

--- @param params LuaEntity_get_connected_rail_p
function entity.get_connected_rail(params)
    params = nil
end


--- Get the rails that this signal is connected to.
--- @return nil                         
function entity.get_connected_rails()
    return nil
end


--- Get the rail signal or train stop at the start/end of the rail segment this rail is in.
--- 
--- @param direction defines_rail_direction
--- @param in_else_out boolean          
function entity.get_rail_segment_entity(direction, in_else_out)
    direction = nil
    in_else_out = nil
end


--- Get the rail at the end of the rail segment this rail is in.
--- 
--- @param direction defines_rail_direction
--- @return LuaEntity, defines_rail_direction
function entity.get_rail_segment_end(direction)
    direction = nil
    return nil, nil
end


--- Get the length of the rail segment this rail is in.
--- @return nil                         
function entity.get_rail_segment_length()
    return nil
end


--- Get a rail from each rail segment that overlaps with this rail's rail segment.
--- @return nil                         
function entity.get_rail_segment_overlaps()
    return nil
end


--- Get the filter for a slot in an inserter, loader, or logistic storage container.
--- 
--- @param slot_index uint              
function entity.get_filter(slot_index)
    slot_index = nil
end


--- Set the filter for a slot in an inserter, loader, or logistic storage container.
--- 
--- @param slot_index uint              
--- @param item string                  
function entity.set_filter(slot_index, item)
    slot_index = nil
    item = nil
end


--- Gets the filter for this infinity container at the given index or `nil` if the filter index doesn't exist or is
--- empty.
--- 
--- @param index uint                   
function entity.get_infinity_container_filter(index)
    index = nil
end


--- Sets the filter for this infinity container at the given index.
--- 
--- @param index uint                   
--- @param filter InfinityInventoryFilter
function entity.set_infinity_container_filter(index, filter)
    index = nil
    filter = nil
end


--- Gets the filter for this infinity pipe or `nil` if the filter is empty.
--- @return nil                         
function entity.get_infinity_pipe_filter()
    return nil
end


--- Sets the filter for this infinity pipe.
--- 
--- @param filter InfinityPipeFilter    
function entity.set_infinity_pipe_filter(filter)
    filter = nil
end


--- Gets the heat setting for this heat interface.
--- @return nil                         
function entity.get_heat_setting()
    return nil
end


--- Sets the heat setting for this heat interface.
--- 
--- @param filter HeatSetting           
function entity.set_heat_setting(filter)
    filter = nil
end


--- Gets the control behavior of the entity (if any).
--- @return nil                         
function entity.get_control_behavior()
    return nil
end


--- Gets (and or creates if needed) the control behavior of the entity.
--- @return nil                         
function entity.get_or_create_control_behavior()
    return nil
end


--- @overload fun(wire: defines_wire_type)
--- @param wire defines_wire_type       
--- @param circuit_connector defines_circuit_connector_id | nil (Optional) 
function entity.get_circuit_network(wire, circuit_connector)
    wire = nil
    circuit_connector = nil
end


--- Read a single signal from the combined circuit networks.
--- 
--- @overload fun(signal: SignalID)
--- @param signal SignalID              
--- @param circuit_connector defines_circuit_connector_id | nil (Optional) 
function entity.get_merged_signal(signal, circuit_connector)
    signal = nil
    circuit_connector = nil
end


--- The merged circuit network signals or `nil` if there are no signals.
--- 
--- @overload fun()
--- @param circuit_connector defines_circuit_connector_id | nil (Optional) 
function entity.get_merged_signals(circuit_connector)
    circuit_connector = nil
end


--- Whether this entity supports a backer name.
--- @return nil                         
function entity.supports_backer_name()
    return nil
end


--- Copies settings from the given entity onto this entity.
--- 
--- @overload fun(entity_: LuaEntity)
--- @param entity_ LuaEntity            
--- @param by_player PlayerIdentification | nil (Optional) 
function entity.copy_settings(entity_, by_player)
    entity_ = nil
    by_player = nil
end


--- Gets all the `LuaLogisticPoint`s that this entity owns. Optionally returns only the point specified by the index
--- parameter.
--- 
--- @overload fun()
--- @param index defines_logistic_member_index | nil (Optional) 
function entity.get_logistic_point(index)
    index = nil
end


--- Plays a note with the given instrument and note.
--- 
--- @param instrument uint              
--- @param note uint                    
function entity.play_note(instrument, note)
    instrument = nil
    note = nil
end


--- Connects the rolling stock in the given direction.
--- 
--- @param direction defines_rail_direction
function entity.connect_rolling_stock(direction)
    direction = nil
end


--- Tries to disconnect this rolling stock in the given direction.
--- 
--- @param direction defines_rail_direction
function entity.disconnect_rolling_stock(direction)
    direction = nil
end


--- Reconnect loader, beacon, cliff and mining drill connections to entities that might have been teleported out or in
--- by the script. The game doesn't do this automatically as we don't want to loose performance by checking this in
--- normal games.
--- @return nil                         
function entity.update_connections()
    return nil
end


--- Current recipe being assembled by this machine or `nil` if no recipe is set.
--- @return nil                         
function entity.get_recipe()
    return nil
end


--- Sets the current recipe in this assembly machine.
--- 
--- @param recipe string | LuaRecipe    
function entity.set_recipe(recipe)
    recipe = nil
end


--- @alias LuaEntity_rotate_p
--- @field reverse boolean | nil         (Optional)  If `true`, rotate the entity in the counter-clockwise direction.
--- @field by_player PlayerIdentification | nil (Optional)  If not specified, the [on_player_rotated_entity](on_player_rotated_entity) event will not be fired.
--- @field spill_items boolean | nil     (Optional)  If the player is not given should extra items be spilled or returned as a second return value from this.
--- @field enable_looted boolean | nil   (Optional)  When true, each spilled item will be flagged with the [LuaEntity::to_be_looted](LuaEntity::to_be_looted) flag.
--- @field force LuaForce | string | nil (Optional)  When provided the spilled items will be marked for deconstruction by this force.

--- Rotates this entity as if the player rotated it.
--- 
--- @overload fun()
--- @param params LuaEntity_rotate_p | nil (Optional) 
function entity.rotate(params)
    params = nil
end


--- Gets the driver of this vehicle if any.
--- @return nil                         
function entity.get_driver()
    return nil
end


--- Sets the driver of this vehicle.
--- 
--- @param driver LuaEntity | PlayerIdentification
function entity.set_driver(driver)
    driver = nil
end


--- Gets the passenger of this car or spidertron if any.
--- @return nil                         
function entity.get_passenger()
    return nil
end


--- Sets the passenger of this car or spidertron.
--- 
--- @param passenger LuaEntity | PlayerIdentification
function entity.set_passenger(passenger)
    passenger = nil
end


--- Returns true if this entity is connected to an electric network.
--- @return nil                         
function entity.is_connected_to_electric_network()
    return nil
end


--- The trains scheduled to stop at this train stop.
--- @return nil                         
function entity.get_train_stop_trains()
    return nil
end


--- The train currently stopped at this train stop or `nil` if none.
--- @return nil                         
function entity.get_stopped_train()
    return nil
end


--- @alias LuaEntity_clone_p
--- @field position MapPosition          The destination position
--- @field surface LuaSurface | nil      (Optional)  The destination surface
--- @field force ForceIdentification | nil (Optional)  
--- @field create_build_effect_smoke boolean | nil (Optional)  If false, the building effect smoke will not be shown around the new entity.

--- Clones this entity.
--- 
--- @param params LuaEntity_clone_p     
function entity.clone(params)
    params = nil
end


--- Get the amount of all or some fluid in this entity.
--- 
--- @overload fun()
--- @param fluid string | nil            (Optional) 
function entity.get_fluid_count(fluid)
    fluid = nil
end


--- Get amounts of all fluids in this entity.
--- @return nil                         
function entity.get_fluid_contents()
    return nil
end


--- @alias LuaEntity_remove_fluid_p
--- @field name string                   Fluid prototype name.
--- @field amount double                 Amount to remove
--- @field minimum_temperature double | nil (Optional)  
--- @field maximum_temperature double | nil (Optional)  
--- @field temperature double | nil      (Optional)  

--- Remove fluid from this entity.
--- 
--- @param params LuaEntity_remove_fluid_p
function entity.remove_fluid(params)
    params = nil
end


--- Insert fluid into this entity. Fluidbox is chosen automatically.
--- 
--- @param fluid Fluid                  
function entity.insert_fluid(fluid)
    fluid = nil
end


--- Remove all fluids from this entity.
--- @return nil                         
function entity.clear_fluid_inside()
    return nil
end


--- Get the source of this beam.
--- @return nil                         
function entity.get_beam_source()
    return nil
end


--- Set the source of this beam.
--- 
--- @param source LuaEntity | MapPosition
function entity.set_beam_source(source)
    source = nil
end


--- Get the target of this beam.
--- @return nil                         
function entity.get_beam_target()
    return nil
end


--- Set the target of this beam.
--- 
--- @param target LuaEntity | MapPosition
function entity.set_beam_target(target)
    target = nil
end


--- The radius of this entity.
--- @return nil                         
function entity.get_radius()
    return nil
end


--- The health ratio of this entity between 1 and 0 (for full health and no health respectively).
--- @return nil                         
function entity.get_health_ratio()
    return nil
end


--- Creates the same smoke that is created when you place a building by hand. You can play the building sound to go
--- with it by using LuaSurface::play_sound, eg: entity.surface.play_sound{path="entity-build/"..entity.prototype.name,
--- position=entity.position}
--- 
--- @see LuaSurface#play_sound @
--- @return nil                         
function entity.create_build_effect_smoke()
    return nil
end


--- Release the unit from the spawner which spawned it. This allows the spawner to continue spawning additional units.
--- @return nil                         
function entity.release_from_spawner()
    return nil
end


--- Toggle this entity's equipment movement bonus. Does nothing if the entity does not have an equipment grid.
--- @return nil                         
function entity.toggle_equipment_movement_bonus()
    return nil
end


--- Whether this character can shoot the given entity or position.
--- 
--- @param target LuaEntity             
--- @param position MapPosition         
function entity.can_shoot(target, position)
    target = nil
    position = nil
end


--- Only works if the entity is a speech-bubble, with an "effect" defined in its wrapper_flow_style. Starts animating
--- the opacity of the speech bubble towards zero, and destroys the entity when it hits zero.
--- @return nil                         
function entity.start_fading_out()
    return nil
end


--- Returns the new entity prototype.
--- @return nil                         
function entity.get_upgrade_target()
    return nil
end


--- Returns the new entity direction after upgrading.
--- @return nil                         
function entity.get_upgrade_direction()
    return nil
end


--- Returns the amount of damage to be taken by this entity.
--- @return nil                         
function entity.get_damage_to_be_taken()
    return nil
end


--- Depletes and destroys this resource entity.
--- @return nil                         
function entity.deplete()
    return nil
end


--- @alias LuaEntity_mine_p
--- @field inventory LuaInventory | nil  (Optional)  If provided the item(s) will be transferred into this inventory. If provided, this must be an inventory created with [LuaGameScript::create_inventory](LuaGameScript::create_inventory) or be a basic inventory owned by some entity.
--- @field force boolean | nil           (Optional)  If true, when the item(s) don't fit into the given inventory the entity is force mined. If false, the mining operation fails when there isn't enough room to transfer all of the items into the inventory. Defaults to false. This is ignored and acts as `true` if no inventory is provided.
--- @field raise_destroyed boolean | nil (Optional)  If true, [script_raised_destroy](script_raised_destroy) will be raised. Defaults to `true`.
--- @field ignore_minable boolean | nil  (Optional)  If true, the minable state of the entity is ignored. Defaults to `false`. If false, an entity that isn't minable (set as not-minable in the prototype or isn't minable for other reasons) will fail to be mined.

--- Mines this entity.
--- 
--- @overload fun()
--- @param params LuaEntity_mine_p | nil (Optional) 
function entity.mine(params)
    params = nil
end


--- Triggers spawn_decoration actions defined in the entity prototype or does nothing if entity is not "turret" or
--- "unit-spawner".
--- @return nil                         
function entity.spawn_decorations()
    return nil
end


--- Can wires reach between these entities.
--- 
--- @param entity_ LuaEntity            
function entity.can_wires_reach(entity_)
    entity_ = nil
end


--- Gets rolling stock connected to the given end of this stock.
--- 
--- @param direction defines_rail_direction
function entity.get_connected_rolling_stock(direction)
    direction = nil
end


--- Is this entity or tile ghost or item request proxy registered for construction? If false, it means a construction
--- robot has been dispatched to build the entity, or it is not an entity that can be constructed.
--- @return nil                         
function entity.is_registered_for_construction()
    return nil
end


--- Is this entity registered for deconstruction with this force? If false, it means a construction robot has been
--- dispatched to deconstruct it, or it is not marked for deconstruction. The complexity is effectively O(1) - it
--- depends on the number of objects targeting this entity which should be small enough.
--- 
--- @param force ForceIdentification    
function entity.is_registered_for_deconstruction(force)
    force = nil
end


--- Is this entity registered for upgrade? If false, it means a construction robot has been dispatched to upgrade it,
--- or it is not marked for upgrade. This is worst-case O(N) complexity where N is the current number of things in the
--- upgrade queue.
--- @return nil                         
function entity.is_registered_for_upgrade()
    return nil
end


--- Is this entity registered for repair? If false, it means a construction robot has been dispatched to upgrade it, or
--- it is not damaged. This is worst-case O(N) complexity where N is the current number of things in the repair queue.
--- @return nil                         
function entity.is_registered_for_repair()
    return nil
end


--- Adds the given position to this spidertron's autopilot's queue of destinations.
--- 
--- @param position MapPosition         
function entity.add_autopilot_destination(position)
    position = nil
end


--- Connects current linked belt with another one.
--- Neighbours have to be of different type. If given linked belt is connected to something else it will be
--- disconnected first. If provided neighbour is connected to something else it will also be disconnected first.
--- Automatically updates neighbour to be connected back to this one.
--- 
--- @param neighbour LuaEntity          
function entity.connect_linked_belts(neighbour)
    neighbour = nil
end


--- Disconnects linked belt from its neighbour.
--- @return nil                         
function entity.disconnect_linked_belts()
    return nil
end


--- Gets legs of given SpiderVehicle.
--- @return nil                         
function entity.get_spider_legs()
    return nil
end


--- All methods and properties that this object supports.
--- @return nil                         
function entity.help()
    return nil
end

