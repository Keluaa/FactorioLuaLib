

--- @class LuaEntityPrototype
--- Prototype of an entity.
local entity_prototype = {}


--- @type string
---  (R)
--- Type of this prototype.
entity_prototype.type = nil

--- @type string
---  (R)
--- Name of this prototype.
entity_prototype.name = nil

--- @type LocalisedString
---  (R)
entity_prototype.localised_name = nil

--- @type LocalisedString
---  (R)
entity_prototype.localised_description = nil

--- @type float
---  (R)
--- Max health of this entity. Will be `0` if this is not an entity with health.
entity_prototype.max_health = nil

--- @type boolean
---  (R)
--- Is this resource infinite? Will be `nil` when used on a non-resource.
entity_prototype.infinite_resource = nil

--- @type uint
---  (R)
--- Minimum amount of this resource. Will be `nil` when used on a non-resource.
entity_prototype.minimum_resource_amount = nil

--- @type uint
---  (R)
--- The normal amount for this resource. `nil` when not a resource.
entity_prototype.normal_resource_amount = nil

--- @type uint
---  (R)
--- Every time this infinite resource 'ticks' down it is reduced by this amount. `nil` when not a resource. Meaningless
--- if this isn't an infinite type resource.
entity_prototype.infinite_depletion_resource_amount = nil

--- @type string
---  (R)
--- Name of the category of this resource or `nil` when not a resource.
entity_prototype.resource_category = nil

--- @type table
---  (R)
--- Whether this entity is minable and what can be obtained by mining it.
entity_prototype.mineable_properties = nil

--- @type SimpleItemStack[]
---  (R)
--- Items that, when placed, will produce this entity. It is an array of items, or `nil` if no items place this entity.
--- Construction bots will always choose the first item in this list to build this entity.
entity_prototype.items_to_place_this = {}

--- @type BoundingBox
---  (R)
--- The bounding box used for collision checking.
entity_prototype.collision_box = nil

--- @type BoundingBox
---  (R)
--- The secondary bounding box used for collision checking, or `nil` if it doesn't have one. This is only used in rails
--- and rail remnants.
entity_prototype.secondary_collision_box = nil

--- @type BoundingBox
---  (R)
--- The bounding box used for map generator collision checking.
entity_prototype.map_generator_bounding_box = nil

--- @type BoundingBox
---  (R)
--- The bounding box used for drawing selection.
entity_prototype.selection_box = nil

--- @type BoundingBox
---  (R)
--- The bounding box used for drawing the entity icon.
entity_prototype.drawing_box = nil

--- @type BoundingBox
---  (R)
--- The bounding box used to attach sticker type entities.
entity_prototype.sticker_box = nil

--- @type CollisionMask
---  (R)
--- The collision masks this entity uses
entity_prototype.collision_mask = nil

--- @type CollisionMaskWithFlags
---  (R)
entity_prototype.collision_mask_with_flags = nil

--- @type CollisionMaskWithFlags
---  (R)
--- The hardcoded default collision mask (with flags) for this entity prototype type.
entity_prototype.default_collision_mask_with_flags = nil

--- @type string
---  (R)
--- Order string of this prototype.
entity_prototype.order = nil

--- @type LuaGroup
---  (R)
--- Group of this entity.
entity_prototype.group = nil

--- @type LuaGroup
---  (R)
--- Subgroup of this entity.
entity_prototype.subgroup = nil

--- @type float
---  (R)
--- Amount this entity can heal per tick.
entity_prototype.healing_per_tick = nil

--- @type double
---  (R)
--- Amount of pollution emissions per second this entity will create.
entity_prototype.emissions_per_second = nil

--- @type table<string, LuaEntityPrototype>
---  (R)
--- Corpses used when this entity is destroyed. It is a dictionary indexed by the corpse's prototype name.
entity_prototype.corpses = nil

--- @type boolean
---  (R)
--- Is this entity selectable?
entity_prototype.selectable_in_game = nil

--- @type uint
---  (R)
--- The selection priority of this entity - a value between 0 and 255
entity_prototype.selection_priority = nil

--- @type double
---  (R)
--- The weight of this vehicle prototype or `nil` if not a vehicle prototype.
entity_prototype.weight = nil

--- @type table<string, Resistance>
---  (R)
--- List of resistances towards each damage type. It is a dictionary indexed by damage type names (see
--- `data/base/prototypes/damage-type.lua`).
entity_prototype.resistances = nil

--- @type string
---  (R)
--- The group of mutually fast-replaceable entities. Possibly `nil`.
entity_prototype.fast_replaceable_group = nil

--- @type LuaEntityPrototype
---  (R)
--- The next upgrade for this entity or `nil`.
entity_prototype.next_upgrade = nil

--- @type Loot[]
---  (R)
--- Loot that will be dropped when this entity is killed. `nil` if there is no loot.
entity_prototype.loot = {}

--- @type uint
---  (R)
--- Repair-speed modifier for this entity. Actual repair speed will be `tool_repair_speed *
--- entity_repair_speed_modifier`. May be `nil`.
entity_prototype.repair_speed_modifier = nil

--- @type uint
---  (R)
--- The range of this turret or `nil` if this isn't a turret related prototype.
entity_prototype.turret_range = nil

--- @type AutoplaceSpecification
---  (R)
--- Autoplace specification for this entity prototype. `nil` if none.
entity_prototype.autoplace_specification = nil

--- @type double
---  (R)
--- The speed of this transport belt or `nil` if this isn't a transport belt related prototype.
entity_prototype.belt_speed = nil

--- @type UnitSpawnDefinition[]
---  (R)
--- The result units and spawn points with weight and evolution factor for a biter spawner entity.
entity_prototype.result_units = {}

--- @type TriggerItem[]
---  (R)
--- The attack result of this entity if the entity has one, else `nil`.
entity_prototype.attack_result = {}

--- @type TriggerItem[]
---  (R)
--- The final attack result for projectiles `nil` if not a projectile
entity_prototype.final_attack_result = {}

--- @type AttackParameters
---  (R)
--- The attack parameters for this entity or `nil` if the entity doesn't use attack parameters.
entity_prototype.attack_parameters = nil

--- @type table
---  (R)
--- The spawning cooldown for this enemy spawner prototype or `nil`.
entity_prototype.spawn_cooldown = nil

--- @type double
---  (R)
--- The mining radius of this mining drill prototype or `nil` if this isn't a mining drill prototype.
entity_prototype.mining_drill_radius = nil

--- @type double
---  (R)
--- The mining speed of this mining drill/character prototype or `nil`.
entity_prototype.mining_speed = nil

--- @type string
---  (R)
--- The logistic mode of this logistic container or `nil` if this isn't a logistic container prototype. One of
--- `"requester"`, `"active-provider"`, `"passive-provider"`, `"buffer"`, `"storage"`, `"none"`.
entity_prototype.logistic_mode = nil

--- @type uint8
---  (R)
--- The max underground distance for underground belts and underground pipes or `nil` if this isn't one of those
--- prototypes.
entity_prototype.max_underground_distance = nil

--- @type EntityPrototypeFlags
---  (R)
--- The flags for this entity prototype.
entity_prototype.flags = nil

--- @type LuaEntityPrototype[]
---  (R)
--- The remains left behind when this entity is mined.
entity_prototype.remains_when_mined = {}

--- @type LuaEntityPrototype[]
---  (R)
--- Entities this entity can be pasted onto in addition to the normal allowed ones.
entity_prototype.additional_pastable_entities = {}

--- @type boolean
---  (R)
--- When false copy-paste is not allowed for this entity.
entity_prototype.allow_copy_paste = nil

--- @type double
---  (R)
--- The cursor size used when shooting at this entity.
entity_prototype.shooting_cursor_size = nil

--- @type table
---  (R)
--- The smoke trigger run when this entity is built or `nil`.
entity_prototype.created_smoke = nil

--- @type TriggerItem[]
---  (R)
--- The trigger run when this entity is created or `nil`.
entity_prototype.created_effect = {}

--- @type Color
---  (R)
--- The map color used when charting this entity if a friendly or enemy color isn't defined or `nil`.
entity_prototype.map_color = nil

--- @type Color
---  (R)
--- The friendly map color used when charting this entity.
entity_prototype.friendly_map_color = nil

--- @type Color
---  (R)
--- The enemy map color used when charting this entity.
entity_prototype.enemy_map_color = nil

--- @type double
---  (R)
--- The evolution requirement to build this entity as a base when expanding enemy bases.
entity_prototype.build_base_evolution_requirement = nil

--- @type ProgrammableSpeakerInstrument[]
---  (R)
--- The instruments for this programmable speaker or `nil`.
entity_prototype.instruments = {}

--- @type uint
---  (R)
--- The maximum polyphony for this programmable speaker or `nil`.
entity_prototype.max_polyphony = nil

--- @type uint
---  (R)
--- The module inventory size or `nil` if this entity doesn't support modules.
entity_prototype.module_inventory_size = nil

--- @type uint
---  (R)
--- The max number of ingredients this crafting-machine prototype supports or `nil` if this isn't a crafting-machine
--- prototype.
entity_prototype.ingredient_count = nil

--- @type double
---  (R)
--- The crafting speed of this crafting-machine or `nil`.
entity_prototype.crafting_speed = nil

--- @type table<string, boolean>
---  (R)
--- The crafting categories this entity supports. Only meaningful when this is a crafting-machine or player entity
--- type.
entity_prototype.crafting_categories = nil

--- @type table<string, boolean>
---  (R)
--- The resource categories this character or mining drill supports, or `nil` if not a character or mining dill.
entity_prototype.resource_categories = nil

--- @type double
---  (R)
--- The supply area of this electric pole, beacon, or `nil` if this is neither.
entity_prototype.supply_area_distance = nil

--- @type double
---  (R)
--- The maximum wire distance for this entity. 0 when the entity doesn't support wires.
entity_prototype.max_wire_distance = nil

--- @type double
---  (R)
--- The maximum circuit wire distance for this entity. 0 when the entity doesn't support circuit wires.
entity_prototype.max_circuit_wire_distance = nil

--- @type double
---  (R)
--- The direct energy usage of this entity or `nil` if this entity doesn't have a direct energy usage.
entity_prototype.energy_usage = nil

--- @type double
---  (R)
--- The theoretical maximum energy usage for this entity.
entity_prototype.max_energy_usage = nil

--- @type double
---  (R)
--- The theoretical maximum energy production for this this entity.
entity_prototype.max_energy_production = nil

--- @type double
---  (R)
--- The effectivity of this car prototype, generator prototype or `nil`.
entity_prototype.effectivity = nil

--- @type double
---  (R)
--- The energy consumption of this car prototype or `nil` if not a car prototype.
entity_prototype.consumption = nil

--- @type double
---  (R)
--- The friction of this vehicle prototype or `nil` if not a vehicle prototype.
entity_prototype.friction_force = nil

--- @type double
---  (R)
--- The braking force of this vehicle prototype or `nil` if not a vehicle prototype.
entity_prototype.braking_force = nil

--- @type double
---  (R)
--- The air resistance of this rolling stock prototype or `nil` if not a rolling stock prototype.
entity_prototype.air_resistance = nil

--- @type boolean
---  (R)
--- If this car prototype uses tank controls to drive or `nil` if this is not a car prototype.
entity_prototype.tank_driving = nil

--- @type double
---  (R)
--- The rotation speed of this car prototype or `nil` if not a car prototype.
entity_prototype.rotation_speed = nil

--- @type double
---  (R)
--- The turret rotation speed of this car prototype or `nil` if not a car prototype.
entity_prototype.turret_rotation_speed = nil

--- @type table<string, LuaItemPrototype>
---  (R)
--- A mapping of the gun name to the gun prototype this prototype uses, or `nil`.
entity_prototype.guns = nil

--- @type double
---  (R)
--- The default speed of this flying robot, rolling stock or unit, `nil` if not one of these.
entity_prototype.speed = nil

--- @type float
---  (R)
--- The speed multiplier when this flying robot is out of energy or `nil`.
entity_prototype.speed_multiplier_when_out_of_energy = nil

--- @type uint
---  (R)
--- The max payload size of this logistics or construction robot or `nil`.
entity_prototype.max_payload_size = nil

--- @type boolean
---  (R)
--- Whether this logistics or construction robot renders its cargo when flying or `nil`.
entity_prototype.draw_cargo = nil

--- @type double
---  (R)
--- The energy consumed per tile moved for this flying robot or `nil`.
entity_prototype.energy_per_move = nil

--- @type double
---  (R)
--- The energy consumed per tick for this flying robot or `nil`.
entity_prototype.energy_per_tick = nil

--- @type double
---  (R)
--- The max energy for this flying robot or `nil`.
entity_prototype.max_energy = nil

--- @type float
---  (R)
--- The minimum energy for this flying robot before it tries to recharge or `nil`.
entity_prototype.min_to_charge = nil

--- @type float
---  (R)
--- The maximum energy for this flying robot above which it won't try to recharge when stationing or `nil`.
entity_prototype.max_to_charge = nil

--- @type LuaBurnerPrototype
---  (R)
--- The burner energy source prototype this entity uses or `nil`.
entity_prototype.burner_prototype = nil

--- @type LuaElectricEnergySourcePrototype
---  (R)
--- The electric energy source prototype this entity uses or `nil`.
entity_prototype.electric_energy_source_prototype = nil

--- @type LuaHeatEnergySourcePrototype
---  (R)
--- The heat energy source prototype this entity uses or `nil`.
entity_prototype.heat_energy_source_prototype = nil

--- @type LuaFluidEnergySourcePrototype
---  (R)
--- The fluid energy source prototype this entity uses or `nil`.
entity_prototype.fluid_energy_source_prototype = nil

--- @type LuaVoidEnergySourcePrototype
---  (R)
--- The void energy source prototype this entity uses or `nil`.
entity_prototype.void_energy_source_prototype = nil

--- @type uint
---  (R)
--- The log2 of grid size of the building
entity_prototype.building_grid_bit_shift = nil

--- @type double
---  (R)
--- The fluid usage of this generator prototype or `nil`.
entity_prototype.fluid_usage_per_tick = nil

--- @type double
---  (R)
--- The maximum fluid temperature of this generator prototype or `nil`.
entity_prototype.maximum_temperature = nil

--- @type double
---  (R)
--- The target temperature of this boiler prototype or `nil`.
entity_prototype.target_temperature = nil

--- @type LuaFluidPrototype
---  (R)
--- The fluid this offshore pump produces or `nil`.
entity_prototype.fluid = nil

--- @type double
---  (R)
--- The fluid capacity of this entity or 0 if this entity doesn't support fluids.
entity_prototype.fluid_capacity = nil

--- @type double
---  (R)
--- The pumping speed of this offshore pump, normal pump, or `nil`.
entity_prototype.pumping_speed = nil

--- @type boolean
---  (R)
--- If this inserter is a stack-type.
entity_prototype.stack = nil

--- @type boolean
---  (R)
--- If this inserter allows custom pickup and drop vectors.
entity_prototype.allow_custom_vectors = nil

--- @type boolean
---  (R)
--- If this inserter allows burner leeching.
entity_prototype.allow_burner_leech = nil

--- @type double
---  (R)
--- The extension speed of this inserter or `nil`.
entity_prototype.inserter_extension_speed = nil

--- @type double
---  (R)
--- The rotation speed of this inserter or `nil`.
entity_prototype.inserter_rotation_speed = nil

--- @type Vector
---  (R)
--- The pickup position for this inserter or `nil`.
entity_prototype.inserter_pickup_position = nil

--- @type Vector
---  (R)
--- The drop position for this inserter or `nil`.
entity_prototype.inserter_drop_position = nil

--- @type boolean
---  (R)
--- True if this inserter chases items on belts for pickup or `nil`.
entity_prototype.inserter_chases_belt_items = nil

--- @type boolean
---  (R)
--- If this simple-entity is counted as a rock for the deconstruction planner "trees and rocks only" filter.
entity_prototype.count_as_rock_for_filtered_deconstruction = nil

--- @type uint
---  (R)
--- The filter count of this inserter, loader, or logistic chest or `nil`. For logistic containers, `nil` means no
--- limit.
entity_prototype.filter_count = nil

--- @type uint
---  (R)
--- The time to live for this prototype or `0` if prototype doesn't have time_to_live or time_before_removed.
entity_prototype.time_to_live = nil

--- @type double
---  (R)
--- The distribution effectivity for this beacon prototype or `nil` if not a beacon prototype.
entity_prototype.distribution_effectivity = nil

--- @type double
---  (R)
--- Does this explosion have a beam or `nil` if not an explosion prototype.
entity_prototype.explosion_beam = nil

--- @type double
---  (R)
--- Does this explosion rotate or `nil` if not an explosion prototype.
entity_prototype.explosion_rotate = nil

--- @type uint8
---  (R)
--- If it is a tree, return the number of colors it supports. `nil` otherwise.
entity_prototype.tree_color_count = nil

--- @type boolean
---  (R)
--- Does this entity with health prototype alert when damaged? or `nil` if not entity with health prototype.
entity_prototype.alert_when_damaged = nil

--- @type boolean
---  (R)
--- Does this turret prototype alert when attacking? or `nil` if not turret prototype.
entity_prototype.alert_when_attacking = nil

--- @type Color
---  (R)
--- The color of the prototype, or `nil` if the prototype doesn't have color.
entity_prototype.color = nil

--- @type boolean
---  (R)
--- Does this prototype collision mask collide with itself?
entity_prototype.collision_mask_collides_with_self = nil

--- @type boolean
---  (R)
--- Does this prototype collision mask collide with tiles only?
entity_prototype.collision_mask_collides_with_tiles_only = nil

--- @type boolean
---  (R)
--- Does this prototype collision mask consider tile transitions?
entity_prototype.collision_mask_considers_tile_transitions = nil

--- @type table<string, boolean>
---  (R)
--- The allowed module effects for this entity or `nil`.
entity_prototype.allowed_effects = nil

--- @type uint
---  (R)
--- The rocket parts required for this rocket silo prototype or `nil`.
entity_prototype.rocket_parts_required = nil

--- @type uint8
---  (R)
--- The rocket rising delay for this rocket silo prototype or `nil`.
entity_prototype.rocket_rising_delay = nil

--- @type uint8
---  (R)
--- The rocket launch delay for this rocket silo prototype or `nil`.
entity_prototype.launch_wait_time = nil

--- @type double
---  (R)
--- The light blinking speed for this rocket silo prototype or `nil`.
entity_prototype.light_blinking_speed = nil

--- @type double
---  (R)
--- The door opening speed for this rocket silo prototype or `nil`.
entity_prototype.door_opening_speed = nil

--- @type double
---  (R)
--- The rising speed for this rocket silo rocket prototype or `nil`.
entity_prototype.rising_speed = nil

--- @type double
---  (R)
--- The engine starting speed for this rocket silo rocket prototype or `nil`.
entity_prototype.engine_starting_speed = nil

--- @type double
---  (R)
--- The flying speed for this rocket silo rocket prototype or `nil`.
entity_prototype.flying_speed = nil

--- @type double
---  (R)
--- The flying acceleration for this rocket silo rocket prototype or `nil`.
entity_prototype.flying_acceleration = nil

--- @type string
---  (R)
--- The fixed recipe name for this assembling machine prototype or `nil`.
entity_prototype.fixed_recipe = nil

--- @type double
---  (R)
--- The construction radius for this roboport prototype or `nil`.
entity_prototype.construction_radius = nil

--- @type double
---  (R)
--- The logistic radius for this roboport prototype or `nil`.
entity_prototype.logistic_radius = nil

--- @type double
---  (R)
--- The energy used per hitpoint taken for this vehicle during collisions or `nil`.
entity_prototype.energy_per_hit_point = nil

--- @type boolean
---  (R)
--- If this prototype will attempt to create a ghost of itself on death.
entity_prototype.create_ghost_on_death = nil

--- @type uint
---  (R)
--- The time it takes this land mine to arm.
entity_prototype.timeout = nil

--- @type CollisionMaskWithFlags
---  (R)
--- Collision mask entity must collide with to make landmine blowup
entity_prototype.trigger_collision_mask = nil

--- @type LuaFluidBoxPrototype[]
---  (R)
--- The fluidbox prototypes for this entity.
entity_prototype.fluidbox_prototypes = {}

--- @type double
---  (R)
entity_prototype.neighbour_bonus = nil

--- @type double
---  (R)
entity_prototype.container_distance = nil

--- @type double
---  (R)
entity_prototype.belt_distance = nil

--- @type double
---  (R)
entity_prototype.belt_length = nil

--- @type boolean
---  (R)
entity_prototype.is_building = nil

--- @type uint
---  (R)
--- The amount of ammo that inserters automatically insert into this ammo-turret or artillery-turret or `nil`.
entity_prototype.automated_ammo_count = nil

--- @type double
---  (R)
--- The max speed of this projectile prototype or flying robot prototype or `nil`.
entity_prototype.max_speed = nil

--- @type float
---  (R)
--- Value between 0 and 1 darkness where all lamps of this lamp prototype are on or `nil`.
entity_prototype.darkness_for_all_lamps_on = nil

--- @type float
---  (R)
--- Value between 0 and 1 darkness where all lamps of this lamp prototype are off or `nil`.
entity_prototype.darkness_for_all_lamps_off = nil

--- @type boolean
---  (R)
--- Whether the lamp is always on (except when out of power or turned off by the circuit network) or `nil`.
entity_prototype.always_on = nil

--- @type float
---  (R)
--- The minimum darkness at which this unit spawner can spawn entities.
entity_prototype.min_darkness_to_spawn = nil

--- @type float
---  (R)
--- The maximum darkness at which this unit spawner can spawn entities.
entity_prototype.max_darkness_to_spawn = nil

--- @type double
---  (R)
entity_prototype.call_for_help_radius = nil

--- @type double
---  (R)
--- Count of enemies this spawner can sustain.
entity_prototype.max_count_of_owned_units = nil

--- @type double
---  (R)
--- How many friendly units are required within the spawning_radius of this spawner for it to stop producing more
--- units.
entity_prototype.max_friends_around_to_spawn = nil

--- @type double
---  (R)
--- How far from the spawner can the units be spawned.
entity_prototype.spawning_radius = nil

--- @type double
---  (R)
--- What spaces should be between the spawned units.
entity_prototype.spawning_spacing = nil

--- @type double
---  (R)
--- The radius of this entity prototype.
entity_prototype.radius = nil

--- @type string
---  (R)
--- The item prototype name used to destroy this cliff or `nil`.
entity_prototype.cliff_explosive_prototype = nil

--- @type LuaEntityPrototype
---  (R)
--- The rocket entity prototype associated with this rocket silo prototype or `nil`.
entity_prototype.rocket_entity_prototype = nil

--- @type boolean
---  (R)
--- Whether this unit, car, or character prototype has belt immunity, `nil` if not car, unit, or character prototype.
entity_prototype.has_belt_immunity = nil

--- @type double
---  (R)
--- The vision distance of this unit prototype or `nil`.
entity_prototype.vision_distance = nil

--- @type float
---  (R)
--- The amount of pollution that has to be absorbed by the unit's spawner before the unit will leave the spawner and
--- attack the source of the pollution. `nil` when prototype is not a unit prototype.
entity_prototype.pollution_to_join_attack = nil

--- @type uint
---  (R)
--- The minimum pursue time of this unit prototype or `nil`.
entity_prototype.min_pursue_time = nil

--- @type double
---  (R)
--- The maximum pursue distance of this unit prototype or `nil`.
entity_prototype.max_pursue_distance = nil

--- @type uint
---  (R)
--- The radar range of this unit prototype or `nil`.
entity_prototype.radar_range = nil

--- @type boolean
---  (R)
--- Whether this unit prototype can move while shooting or `nil`.
entity_prototype.move_while_shooting = nil

--- @type boolean
---  (R)
--- Whether this unit prototype can open gates or `nil`.
entity_prototype.can_open_gates = nil

--- @type boolean
---  (R)
--- Whether this unit prototype is affected by tile walking speed modifiers or `nil`.
entity_prototype.affected_by_tiles = nil

--- @type uint
---  (R)
--- The distraction cooldown of this unit prototype or `nil`.
entity_prototype.distraction_cooldown = nil

--- @type double
---  (R)
--- The spawning time modifier of this unit prototype or `nil`.
entity_prototype.spawning_time_modifier = nil

--- @type Vector
---  (R)
--- The alert icon shift of this entity prototype.
entity_prototype.alert_icon_shift = nil

--- @type string[]
---  (R)
--- The item prototype names that are the inputs of this lab prototype or `nil`.
entity_prototype.lab_inputs = {}

--- @type double
---  (R)
--- The base researching speed of this lab prototype or `nil`.
entity_prototype.researching_speed = nil

--- @type uint
---  (R)
--- The item slot count of this constant combinator prototype or `nil`.
entity_prototype.item_slot_count = nil

--- @type double
---  (R)
--- The base productivity of this crafting machine, lab, or mining drill, or `nil`.
entity_prototype.base_productivity = nil

--- @type boolean
---  (R)
--- If this market allows access to all forces or just friendly ones.
entity_prototype.allow_access_to_all_forces = nil

--- @type boolean
---  (R)
--- If this entity prototype could possibly ever be rotated.
entity_prototype.supports_direction = nil

--- @type float
---  (R)
--- The terrain friction modifier for this vehicle.
entity_prototype.terrain_friction_modifier = nil

--- @type boolean
---  (R)
--- If this vehicle allows passengers.
entity_prototype.allow_passengers = nil

--- @type uint
---  (R)
--- The radius of the area this radar can chart, in chunks.
entity_prototype.max_distance_of_sector_revealed = nil

--- @type uint
---  (R)
--- The radius of the area constantly revealed by this radar, in chunks.
entity_prototype.max_distance_of_nearby_sector_revealed = nil

--- @type BoundingBox
---  (R)
--- The bounding box that specifies which tiles adjacent to the offshore pump should be checked.
entity_prototype.adjacent_tile_collision_box = nil

--- @type CollisionMask
---  (R)
--- Tiles adjacent to the offshore pump must not collide with this collision mask.
entity_prototype.adjacent_tile_collision_mask = nil

--- @type CollisionMask
---  (R)
--- If this mask is not empty, tiles adjacent to the offshore pump must not collide with this collision mask.
entity_prototype.adjacent_tile_collision_test = nil

--- @type CollisionMask
---  (R)
--- The collision mask used only for collision test with tile directly at offshore pump position.
entity_prototype.center_collision_mask = nil

--- @type LuaEquipmentGridPrototype
---  (R)
--- The equipment grid prototype for this entity or `nil`.
entity_prototype.grid_prototype = nil

--- @type string
---  (R)
entity_prototype.remove_decoratives = nil

--- @type LuaEntityPrototype
---  (R)
entity_prototype.related_underground_belt = nil

--- @type double
---  (R)
--- Gets the built-in stack size bonus of this inserter prototype. `nil` if this is not an inserter.
entity_prototype.inserter_stack_size_bonus = nil

--- @type boolean
---  (R)
--- True if this entity prototype should be included during tile collision checks with
--- LuaTilePrototype::check_collision_with_entities enabled.
--- 
--- @see LuaTilePrototype#check_collision_with_entities @
entity_prototype.protected_from_tile_building = nil

--- @type boolean
---  (R)
--- True if this is entity-with-owner
entity_prototype.is_entity_with_owner = nil

--- @type boolean
---  (R)
--- True if this entity-with-owner is military target
entity_prototype.is_military_target = nil

--- @type boolean
---  (R)
--- True if this entity-with-owner's is_military_target can be changed run-time (on the entity, not on the prototype
--- itself)
entity_prototype.allow_run_time_change_of_is_military_target = nil

--- @type double
---  (R)
--- Gets the current movement speed of this character, including effects from exoskeletons, tiles, stickers and
--- shooting.
entity_prototype.running_speed = nil

--- @type double
---  (R)
entity_prototype.maximum_corner_sliding_distance = nil

--- @type uint
---  (R)
entity_prototype.build_distance = nil

--- @type uint
---  (R)
entity_prototype.drop_item_distance = nil

--- @type uint
---  (R)
entity_prototype.reach_distance = nil

--- @type double
---  (R)
entity_prototype.reach_resource_distance = nil

--- @type double
---  (R)
entity_prototype.item_pickup_distance = nil

--- @type double
---  (R)
entity_prototype.loot_pickup_distance = nil

--- @type double
---  (R)
entity_prototype.enter_vehicle_distance = nil

--- @type uint
---  (R)
entity_prototype.ticks_to_keep_gun = nil

--- @type uint
---  (R)
entity_prototype.ticks_to_keep_aiming_direction = nil

--- @type uint
---  (R)
entity_prototype.ticks_to_stay_in_combat = nil

--- @type uint
---  (R)
entity_prototype.respawn_time = nil

--- @type Color
---  (R)
entity_prototype.damage_hit_tint = nil

--- @type LuaEntityPrototype
---  (R)
entity_prototype.character_corpse = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
entity_prototype.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
entity_prototype.object_name = nil



--- Test whether this entity prototype has a certain flag set.
--- 
--- @param flag string                  
--- @return boolean                      `true` if this prototype has the given flag set.
function entity_prototype.has_flag(flag)
    flag = nil
    return nil
end


--- Gets the base size of the given inventory on this entity or `nil` if the given inventory doesn't exist.
--- 
--- @param index defines_inventory      
--- @return uint
function entity_prototype.get_inventory_size(index)
    index = nil
    return nil
end


--- All methods and properties that this object supports.
--- 
--- @return string
function entity_prototype.help()
    return nil
end

