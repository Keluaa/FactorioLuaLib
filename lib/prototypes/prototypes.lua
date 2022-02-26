

--- @shape Prototype_Accumulator : Prototype_EntityWithOwner
--- https://wiki.factorio.com/Prototype/Accumulator
--- @field charge_cooldown uint16       
--- @field discharge_cooldown uint16    
--- @field energy_source EnergySource   
--- @field picture Sprite               
--- @field charge_animation Animation | nil (Optional)
--- @field charge_light LightDefinition | nil (Optional)
--- @field circuit_connector_sprites CircuitConnectorSprites | nil (Optional)
--- @field circuit_wire_connection_point WireConnectionPoint | nil (Optional)
--- @field circuit_wire_max_distance double | nil (Optional)
--- @field default_output_signal SignalIDConnector | nil (Optional)
--- @field discharge_animation Animation | nil (Optional)
--- @field discharge_light LightDefinition | nil (Optional)
--- @field draw_circuit_wires boolean | nil (Optional)
--- @field draw_copper_wires boolean | nil (Optional)


--- @shape Prototype_Achievement : PrototypeBase
--- https://wiki.factorio.com/Prototype/Achievement
--- @field icons IconData[] | nil        (Optional)
--- @field icon FileName | nil           (Optional)
--- @field icon_size SpriteSizeType | nil (Optional)
--- @field icon_mipmaps uint8 | nil      (Optional)
--- @field allowed_without_fight boolean | nil (Optional)
--- @field hidden boolean | nil          (Optional)
--- @field steam_stats_name string | nil (Optional)


--- @shape Prototype_ActiveDefenseEquipment : Prototype_Equipment
--- https://wiki.factorio.com/Prototype/ActiveDefenseEquipment
--- @field attack_parameters AttackParameters
--- @field automatic boolean            


--- @shape Prototype_AmbientSound
--- https://wiki.factorio.com/Prototype/AmbientSound
--- @field name string                  
--- @field sound Sound                  
--- @field track_type string            
--- @field type string                  
--- @field weight double | nil           (Optional)


--- @shape Prototype_AmmoCategory : PrototypeBase
--- https://wiki.factorio.com/Prototype/AmmoCategory
--- @field bonus_gui_order Order | nil   (Optional)


--- @shape Prototype_AmmoItem : Prototype_Item
--- https://wiki.factorio.com/Prototype/AmmoItem
--- @field ammo_type AmmoType[] | AmmoType
--- @field magazine_size float | nil     (Optional)
--- @field reload_time float | nil       (Optional)


--- @shape Prototype_AmmoTurret : Prototype_Turret
--- https://wiki.factorio.com/Prototype/AmmoTurret
--- @field automated_ammo_count ItemCountType
--- @field inventory_size ItemStackIndex
--- @field entity_info_icon_shift Vector | nil (Optional)


--- @shape Prototype_Animation
--- https://wiki.factorio.com/Prototype/Animation
--- @field name string                  
--- @field type string                  
--- @field animation_speed float | nil   (Optional)
--- @field apply_runtime_tint boolean | nil (Optional)
--- @field blend_mode BlendMode | nil    (Optional)
--- @field dice uint8 | nil              (Optional)
--- @field dice_x uint8 | nil            (Optional)
--- @field dice_y uint8 | nil            (Optional)
--- @field draw_as_glow boolean | nil    (Optional)
--- @field draw_as_light boolean | nil   (Optional)
--- @field draw_as_shadow boolean | nil  (Optional)
--- @field filename FileName | nil       (Optional)
--- @field flags SpriteFlags | nil       (Optional)
--- @field frame_count uint32 | nil      (Optional)
--- @field frame_sequence AnimationFrameSequence | nil (Optional)
--- @field generate_sdf boolean | nil    (Optional)
--- @field height SpriteSizeType | nil   (Optional)
--- @field hr_version Animation | nil    (Optional)
--- @field layers Animation[] | nil      (Optional)
--- @field line_length uint32 | nil      (Optional)
--- @field load_in_minimal_mode boolean | nil (Optional)
--- @field max_advance float | nil       (Optional)
--- @field mipmap_count uint8 | nil      (Optional)
--- @field position SpriteSizeType[] | nil (Optional)
--- @field premul_alpha boolean | nil    (Optional)
--- @field priority SpritePriority | nil (Optional)
--- @field repeat_count uint8 | nil      (Optional)
--- @field run_mode string | nil         (Optional)
--- @field scale double | nil            (Optional)
--- @field shift Vector | nil            (Optional)
--- @field size SpriteSizeType | SpriteSizeType[] | nil (Optional)
--- @field stripes Stripe[] | nil        (Optional)
--- @field tint Color | nil              (Optional)
--- @field width SpriteSizeType | nil    (Optional)
--- @field x SpriteSizeType | nil        (Optional)
--- @field y SpriteSizeType | nil        (Optional)


--- @shape Prototype_ArithmeticCombinator : Prototype_Combinator
--- https://wiki.factorio.com/Prototype/ArithmeticCombinator
--- @field and_symbol_sprites Sprite4Way
--- @field divide_symbol_sprites Sprite4Way
--- @field left_shift_symbol_sprites Sprite4Way
--- @field minus_symbol_sprites Sprite4Way
--- @field modulo_symbol_sprites Sprite4Way
--- @field multiply_symbol_sprites Sprite4Way
--- @field or_symbol_sprites Sprite4Way 
--- @field plus_symbol_sprites Sprite4Way
--- @field power_symbol_sprites Sprite4Way
--- @field right_shift_symbol_sprites Sprite4Way
--- @field xor_symbol_sprites Sprite4Way


--- @shape Prototype_Armor : Prototype_Tool
--- https://wiki.factorio.com/Prototype/Armor
--- @field equipment_grid string | nil   (Optional)
--- @field inventory_size_bonus ItemStackIndex | nil (Optional)
--- @field resistances Resistances | nil (Optional)


--- @shape Prototype_Arrow : Prototype_Entity
--- https://wiki.factorio.com/Prototype/Arrow
--- @field arrow_picture Sprite         
--- @field blinking boolean | nil        (Optional)
--- @field circle_picture Sprite | nil   (Optional)


--- @shape Prototype_ArtilleryFlare : Prototype_Entity
--- https://wiki.factorio.com/Prototype/ArtilleryFlare
--- @field life_time uint16             
--- @field pictures table<string, Sprite | Sprite4Way | Sprite8Way | Animation | RailPieceLayers | SpriteVariations>
--- @field render_layer RenderLayer     
--- @field render_layer_when_on_ground RenderLayer
--- @field creation_shift Vector | nil   (Optional)
--- @field early_death_ticks uint32 | nil (Optional)
--- @field ended_in_water_trigger_effect TriggerEffect | nil (Optional)
--- @field initial_frame_speed float | nil (Optional)
--- @field initial_height float | nil    (Optional)
--- @field initial_speed Vector | nil    (Optional)
--- @field initial_vertical_speed float | nil (Optional)
--- @field movement_modifier double | nil (Optional)
--- @field movement_modifier_when_on_ground double | nil (Optional)
--- @field regular_trigger_effect TriggerEffect | nil (Optional)
--- @field regular_trigger_effect_frequency uint32 | nil (Optional)
--- @field shadows AnimationVariations | nil (Optional)
--- @field shot_category string | nil    (Optional)
--- @field shots_per_flare uint32 | nil  (Optional)


--- @shape Prototype_ArtilleryProjectile : Prototype_Entity
--- https://wiki.factorio.com/Prototype/ArtilleryProjectile
--- @field reveal_map boolean           
--- @field action Trigger | nil          (Optional)
--- @field chart_picture Sprite | nil    (Optional)
--- @field final_action Trigger | nil    (Optional)
--- @field height_from_ground float | nil (Optional)
--- @field picture Sprite | nil          (Optional)
--- @field rotatable boolean | nil       (Optional)
--- @field shadow Sprite | nil           (Optional)


--- @shape Prototype_ArtilleryTurret : Prototype_EntityWithOwner
--- https://wiki.factorio.com/Prototype/ArtilleryTurret
--- @field ammo_stack_limit ItemCountType
--- @field automated_ammo_count ItemCountType
--- @field gun string                   
--- @field inventory_size ItemStackIndex
--- @field manual_range_modifier double 
--- @field turret_rotation_speed double 
--- @field alert_when_attacking boolean | nil (Optional)
--- @field base_picture Animation4Way | nil (Optional)
--- @field base_picture_render_layer RenderLayer | nil (Optional)
--- @field base_picture_secondary_draw_order uint8 | nil (Optional)
--- @field base_shift Vector | nil       (Optional)
--- @field cannon_barrel_light_direction Vector3D | nil (Optional)
--- @field cannon_barrel_pictures RotatedSprite | nil (Optional)
--- @field cannon_barrel_recoil_shiftings Vector3D[] | nil (Optional)
--- @field cannon_barrel_recoil_shiftings_load_correction_matrix Vector3D[] | nil (Optional)
--- @field cannon_base_pictures RotatedSprite | nil (Optional)
--- @field cannon_parking_frame_count uint16 | nil (Optional)
--- @field cannon_parking_speed uint16 | nil (Optional)
--- @field disable_automatic_firing boolean | nil (Optional)
--- @field rotating_sound InterruptibleSound | nil (Optional)
--- @field rotating_stopped_sound Sound | nil (Optional)
--- @field turn_after_shooting_cooldown uint16 | nil (Optional)


--- @shape Prototype_ArtilleryWagon : Prototype_RollingStock
--- https://wiki.factorio.com/Prototype/ArtilleryWagon
--- @field ammo_stack_limit ItemCountType
--- @field gun string                   
--- @field inventory_size ItemStackIndex
--- @field manual_range_modifier double 
--- @field turret_rotation_speed double 
--- @field cannon_barrel_light_direction Vector3D | nil (Optional)
--- @field cannon_barrel_pictures RotatedSprite | nil (Optional)
--- @field cannon_barrel_recoil_shiftings Vector3D[] | nil (Optional)
--- @field cannon_barrel_recoil_shiftings_load_correction_matrix Vector3D[] | nil (Optional)
--- @field cannon_base_pictures RotatedSprite | nil (Optional)
--- @field cannon_base_shiftings Vector[] | nil (Optional)
--- @field cannon_parking_frame_count uint16 | nil (Optional)
--- @field cannon_parking_speed float | nil (Optional)
--- @field disable_automatic_firing boolean | nil (Optional)
--- @field rotating_sound InterruptibleSound | nil (Optional)
--- @field rotating_stopped_sound Sound | nil (Optional)
--- @field turn_after_shooting_cooldown uint16 | nil (Optional)


--- @shape Prototype_AssemblingMachine : Prototype_CraftingMachine
--- https://wiki.factorio.com/Prototype/AssemblingMachine
--- @field fixed_recipe string | nil     (Optional)
--- @field gui_title_key string | nil    (Optional)
--- @field ingredient_count uint8 | nil  (Optional)


--- @shape Prototype_AutoplaceControl : PrototypeBase
--- https://wiki.factorio.com/Prototype/AutoplaceControl
--- @field category string              
--- @field richness boolean | nil        (Optional)


--- @shape Prototype_BatteryEquipment : Prototype_Equipment
--- https://wiki.factorio.com/Prototype/BatteryEquipment


--- @shape Prototype_Beacon : Prototype_EntityWithOwner
--- https://wiki.factorio.com/Prototype/Beacon
--- @field distribution_effectivity double
--- @field energy_source EnergySource   
--- @field energy_usage Energy          
--- @field module_specification ModuleSpecification
--- @field supply_area_distance double  
--- @field allowed_effects EffectTypeLimitation | nil (Optional)
--- @field animation Animation | nil     (Optional)
--- @field base_picture Sprite | nil     (Optional)
--- @field graphics_set table<string, number | Sprite4Way | Animation4Way | RenderLayer> | nil (Optional)
--- @field radius_visualisation_picture Sprite | nil (Optional)


--- @shape Prototype_Beam : Prototype_Entity
--- https://wiki.factorio.com/Prototype/Beam
--- @field body AnimationVariations     
--- @field damage_interval uint32       
--- @field head Animation               
--- @field tail Animation               
--- @field width double                 
--- @field action Trigger | nil          (Optional)
--- @field action_triggered_automatically boolean | nil (Optional)
--- @field body_light AnimationVariations | nil (Optional)
--- @field ending Animation | nil        (Optional)
--- @field ending_light Animation | nil  (Optional)
--- @field ground_light_animations table<string, Animation | AnimationVariations | nil> | nil (Optional)
--- @field head_light Animation | nil    (Optional)
--- @field light_animations table<string, Animation | AnimationVariations | nil> | nil (Optional)
--- @field random_end_animation_rotation boolean | nil (Optional)
--- @field random_target_offset boolean | nil (Optional)
--- @field start Animation | nil         (Optional)
--- @field start_light Animation | nil   (Optional)
--- @field tail_light Animation | nil    (Optional)
--- @field target_offset Vector | nil    (Optional)
--- @field transparent_start_end_animations boolean | nil (Optional)


--- @shape Prototype_BeltImmunityEquipment : Prototype_Equipment
--- https://wiki.factorio.com/Prototype/BeltImmunityEquipment
--- @field energy_consumption Energy    


--- @shape Prototype_BlueprintBook : Prototype_ItemWithInventory
--- https://wiki.factorio.com/Prototype/BlueprintBook


--- @shape Prototype_BlueprintItem : Prototype_SelectionTool
--- https://wiki.factorio.com/Prototype/BlueprintItem


--- @shape Prototype_Boiler : Prototype_EntityWithOwner
--- https://wiki.factorio.com/Prototype/Boiler
--- @field burning_cooldown uint32      
--- @field energy_consumption Energy    
--- @field energy_source EnergySource   
--- @field fire table<string, Animation>
--- @field fire_glow table<string, Animation>
--- @field fluid_box FluidBox           
--- @field output_fluid_box FluidBox    
--- @field structure table<string, Animation | Sprite4Way>
--- @field target_temperature double    
--- @field fire_flicker_enabled boolean | nil (Optional)
--- @field fire_glow_flicker_enabled boolean | nil (Optional)
--- @field mode string | nil             (Optional)
--- @field patch table<string, Sprite> | nil (Optional)


--- @shape Prototype_BuildEntityAchievement : Prototype_Achievement
--- https://wiki.factorio.com/Prototype/BuildEntityAchievement
--- @field to_build string              
--- @field amount uint32 | nil           (Optional)
--- @field limited_to_one_game boolean | nil (Optional)
--- @field until_second uint32 | nil     (Optional)


--- @shape Prototype_BurnerGenerator : Prototype_EntityWithOwner
--- https://wiki.factorio.com/Prototype/BurnerGenerator
--- @field animation Animation4Way      
--- @field burner EnergySource          
--- @field energy_source EnergySource   
--- @field max_power_output Energy      
--- @field always_draw_idle_animation boolean | nil (Optional)
--- @field idle_animation Animation4Way | nil (Optional)
--- @field min_perceived_performance double | nil (Optional)
--- @field performance_to_sound_speedup double | nil (Optional)


--- @shape Prototype_Capsule : Prototype_Item
--- https://wiki.factorio.com/Prototype/Capsule
--- @field capsule_action CapsuleAction 
--- @field radius_color Color | nil      (Optional)


--- @shape Prototype_Car : Prototype_Vehicle
--- https://wiki.factorio.com/Prototype/Car
--- @field animation RotatedAnimation   
--- @field burner EnergySource          
--- @field consumption Energy           
--- @field effectivity double           
--- @field inventory_size ItemStackIndex
--- @field rotation_speed double        
--- @field darkness_to_render_light_animation float | nil (Optional)
--- @field guns string[] | nil           (Optional)
--- @field has_belt_immunity boolean | nil (Optional)
--- @field immune_to_rock_impacts boolean | nil (Optional)
--- @field immune_to_tree_impacts boolean | nil (Optional)
--- @field light LightDefinition | nil   (Optional)
--- @field light_animation RotatedAnimation | nil (Optional)
--- @field render_layer RenderLayer | nil (Optional)
--- @field sound_no_fuel Sound | nil     (Optional)
--- @field tank_driving boolean | nil    (Optional)
--- @field track_particle_triggers FootstepTriggerEffectList | nil (Optional)
--- @field turret_animation RotatedAnimation | nil (Optional)
--- @field turret_return_timeout uint32 | nil (Optional)
--- @field turret_rotation_speed double | nil (Optional)


--- @shape Prototype_CargoWagon : Prototype_RollingStock
--- https://wiki.factorio.com/Prototype/CargoWagon
--- @field inventory_size ItemStackIndex


--- @shape Prototype_Character : Prototype_EntityWithOwner
--- https://wiki.factorio.com/Prototype/Character
--- @field animations CharacterArmorAnimation[]
--- @field build_distance uint32        
--- @field damage_hit_tint Color        
--- @field distance_per_frame double    
--- @field drop_item_distance uint32    
--- @field eat Sound                    
--- @field heartbeat Sound              
--- @field inventory_size ItemStackIndex
--- @field item_pickup_distance double  
--- @field loot_pickup_distance double  
--- @field maximum_corner_sliding_distance double
--- @field mining_speed double          
--- @field mining_with_tool_particles_animation_positions float[]
--- @field reach_distance uint32        
--- @field reach_resource_distance double
--- @field running_sound_animation_positions float[]
--- @field running_speed double         
--- @field ticks_to_keep_aiming_direction uint32
--- @field ticks_to_keep_gun uint32     
--- @field ticks_to_stay_in_combat uint32
--- @field character_corpse string | nil (Optional)
--- @field crafting_categories string[] | nil (Optional)
--- @field enter_vehicle_distance double | nil (Optional)
--- @field footprint_particles FootprintParticle[] | nil (Optional)
--- @field footstep_particle_triggers FootstepTriggerEffectList | nil (Optional)
--- @field has_belt_immunity boolean | nil (Optional)
--- @field left_footprint_frames float[] | nil (Optional)
--- @field left_footprint_offset Vector | nil (Optional)
--- @field light LightDefinition | nil   (Optional)
--- @field mining_categories string[] | nil (Optional)
--- @field respawn_time uint32 | nil     (Optional)
--- @field right_footprint_frames float[] | nil (Optional)
--- @field right_footprint_offset Vector | nil (Optional)
--- @field synced_footstep_particle_triggers FootstepTriggerEffectList | nil (Optional)
--- @field tool_attack_distance double | nil (Optional)
--- @field tool_attack_result Trigger | nil (Optional)


--- @shape Prototype_CharacterCorpse : Prototype_Entity
--- https://wiki.factorio.com/Prototype/CharacterCorpse
--- @field time_to_live uint32          
--- @field armor_picture_mapping table<string, number> | nil (Optional)
--- @field picture Animation | nil       (Optional)
--- @field pictures table<string, Sprite | Sprite4Way | Sprite8Way | Animation | RailPieceLayers | SpriteVariations> | nil (Optional)
--- @field render_layer RenderLayer | nil (Optional)


--- @shape Prototype_Cliff : Prototype_Entity
--- https://wiki.factorio.com/Prototype/Cliff
--- @field grid_offset Vector           
--- @field grid_size Vector             
--- @field orientations table<string, OrientedCliffPrototype>
--- @field cliff_explosive string | nil  (Optional)
--- @field cliff_height float | nil      (Optional)


--- @shape Prototype_CombatRobot : Prototype_FlyingRobot
--- https://wiki.factorio.com/Prototype/CombatRobot
--- @field attack_parameters AttackParameters
--- @field idle RotatedAnimation        
--- @field in_motion RotatedAnimation   
--- @field shadow_idle RotatedAnimation 
--- @field shadow_in_motion RotatedAnimation
--- @field time_to_live uint32          
--- @field destroy_action Trigger | nil  (Optional)
--- @field follows_player boolean | nil  (Optional)
--- @field friction double | nil         (Optional)
--- @field light LightDefinition | nil   (Optional)
--- @field range_from_player double | nil (Optional)


--- @shape Prototype_CombatRobotCountAchievement : Prototype_Achievement
--- https://wiki.factorio.com/Prototype/CombatRobotCountAchievement
--- @field count uint32 | nil            (Optional)


--- @shape Prototype_Combinator : Prototype_EntityWithOwner
--- Abstract prototype.
--- https://wiki.factorio.com/Prototype/Combinator
--- @field active_energy_usage Energy   
--- @field activity_led_light_offsets Vector[]
--- @field activity_led_sprites Sprite4Way
--- @field energy_source EnergySource   
--- @field input_connection_bounding_box BoundingBox
--- @field input_connection_points WireConnectionPoint[]
--- @field output_connection_bounding_box BoundingBox
--- @field output_connection_points WireConnectionPoint[]
--- @field screen_light_offsets Vector[]
--- @field sprites Sprite4Way           
--- @field activity_led_hold_time uint8 | nil (Optional)
--- @field activity_led_light LightDefinition | nil (Optional)
--- @field circuit_wire_max_distance double | nil (Optional)
--- @field draw_circuit_wires boolean | nil (Optional)
--- @field draw_copper_wires boolean | nil (Optional)
--- @field screen_light LightDefinition | nil (Optional)


--- @shape Prototype_ConstantCombinator : Prototype_EntityWithOwner
--- https://wiki.factorio.com/Prototype/ConstantCombinator
--- @field activity_led_light_offsets Vector[]
--- @field activity_led_sprites Sprite4Way
--- @field circuit_wire_connection_points WireConnectionPoint[]
--- @field item_slot_count uint32       
--- @field sprites Sprite4Way           
--- @field activity_led_light LightDefinition | nil (Optional)
--- @field circuit_wire_max_distance double | nil (Optional)
--- @field draw_circuit_wires boolean | nil (Optional)
--- @field draw_copper_wires boolean | nil (Optional)


--- @shape Prototype_ConstructWithRobotsAchievement : Prototype_Achievement
--- https://wiki.factorio.com/Prototype/ConstructWithRobotsAchievement
--- @field limited_to_one_game boolean  
--- @field amount uint32 | nil           (Optional)
--- @field more_than_manually boolean | nil (Optional)


--- @shape Prototype_ConstructionRobot : Prototype_RobotWithLogisticInterface
--- https://wiki.factorio.com/Prototype/ConstructionRobot
--- @field construction_vector Vector   
--- @field repairing_sound Sound | nil   (Optional)
--- @field shadow_working RotatedAnimation | nil (Optional)
--- @field smoke Animation | nil         (Optional)
--- @field sparks AnimationVariations | nil (Optional)
--- @field working RotatedAnimation | nil (Optional)
--- @field working_light LightDefinition | nil (Optional)


--- @shape Prototype_Container : Prototype_EntityWithOwner
--- https://wiki.factorio.com/Prototype/Container
--- @field inventory_size uint16        
--- @field picture Sprite               
--- @field circuit_connector_sprites CircuitConnectorSprites | nil (Optional)
--- @field circuit_wire_connection_point WireConnectionPoint | nil (Optional)
--- @field circuit_wire_max_distance double | nil (Optional)
--- @field draw_circuit_wires boolean | nil (Optional)
--- @field draw_copper_wires boolean | nil (Optional)
--- @field enable_inventory_bar boolean | nil (Optional)
--- @field scale_info_icons boolean | nil (Optional)


--- @shape Prototype_CopyPasteTool : Prototype_SelectionTool
--- https://wiki.factorio.com/Prototype/CopyPasteTool
--- @field cuts boolean | nil            (Optional)


--- @shape Prototype_Corpse : Prototype_Entity
--- https://wiki.factorio.com/Prototype/Corpse
--- @field animation RotatedAnimationVariations | nil (Optional)
--- @field animation_overlay RotatedAnimationVariations | nil (Optional)
--- @field animation_overlay_final_render_layer RenderLayer | nil (Optional)
--- @field animation_overlay_render_layer RenderLayer | nil (Optional)
--- @field animation_render_layer RenderLayer | nil (Optional)
--- @field direction_shuffle uint16[][] | nil (Optional)
--- @field dying_speed float | nil       (Optional)
--- @field final_render_layer RenderLayer | nil (Optional)
--- @field ground_patch AnimationVariations | nil (Optional)
--- @field ground_patch_fade_in_delay float | nil (Optional)
--- @field ground_patch_fade_in_speed float | nil (Optional)
--- @field ground_patch_fade_out_duration float | nil (Optional)
--- @field ground_patch_fade_out_start float | nil (Optional)
--- @field ground_patch_higher AnimationVariations | nil (Optional)
--- @field ground_patch_render_layer RenderLayer | nil (Optional)
--- @field remove_on_entity_placement boolean | nil (Optional)
--- @field remove_on_tile_placement boolean | nil (Optional)
--- @field shuffle_directions_at_frame uint8 | nil (Optional)
--- @field splash AnimationVariations | nil (Optional)
--- @field splash_render_layer RenderLayer | nil (Optional)
--- @field splash_speed float | nil      (Optional)
--- @field time_before_removed int32 | nil (Optional)
--- @field time_before_shading_off int32 | nil (Optional)
--- @field use_tile_color_for_ground_patch_tint boolean | nil (Optional)


--- @shape Prototype_CraftingMachine : Prototype_EntityWithOwner
--- Abstract prototype.
--- https://wiki.factorio.com/Prototype/CraftingMachine
--- @field crafting_categories string[] 
--- @field crafting_speed double        
--- @field energy_source EnergySource   
--- @field energy_usage Energy          
--- @field allowed_effects EffectTypeLimitation | nil (Optional)
--- @field always_draw_idle_animation boolean | nil (Optional)
--- @field animation Animation4Way | nil (Optional)
--- @field base_productivity float | nil (Optional)
--- @field default_recipe_tint table<string, Color> | nil (Optional)
--- @field draw_entity_info_icon_background boolean | nil (Optional)
--- @field entity_info_icon_shift Vector | nil (Optional)
--- @field fluid_boxes table<number | string, FluidBox | boolean> | nil (Optional)
--- @field idle_animation Animation4Way | nil (Optional)
--- @field match_animation_speed_to_activity boolean | nil (Optional)
--- @field module_specification ModuleSpecification | nil (Optional)
--- @field return_ingredients_on_change boolean | nil (Optional)
--- @field scale_entity_info_icon boolean | nil (Optional)
--- @field shift_animation_transition_duration uint16 | nil (Optional)
--- @field shift_animation_waypoint_stop_duration uint16 | nil (Optional)
--- @field shift_animation_waypoints table<string, Vector[]> | nil (Optional)
--- @field show_recipe_icon boolean | nil (Optional)
--- @field show_recipe_icon_on_map boolean | nil (Optional)
--- @field status_colors table<string, Color> | nil (Optional)
--- @field working_visualisations WorkingVisualisation[] | nil (Optional)


--- @shape Prototype_CurvedRail : Prototype_Rail
--- https://wiki.factorio.com/Prototype/CurvedRail
--- @field bending_type string | nil     (Optional)


--- @shape Prototype_CustomInput : PrototypeBase
--- https://wiki.factorio.com/Prototype/CustomInput
--- @field key_sequence string          
--- @field action string | nil           (Optional)
--- @field alternative_key_sequence string | nil (Optional)
--- @field consuming ConsumingType | nil (Optional)
--- @field enabled boolean | nil         (Optional)
--- @field enabled_while_in_cutscene boolean | nil (Optional)
--- @field enabled_while_spectating boolean | nil (Optional)
--- @field include_selected_prototype boolean | nil (Optional)
--- @field item_to_spawn string | nil    (Optional)
--- @field linked_game_control string | nil (Optional)


--- @shape Prototype_DamageType : PrototypeBase
--- https://wiki.factorio.com/Prototype/DamageType
--- @field hidden boolean | nil          (Optional)


--- @shape Prototype_DeciderCombinator : Prototype_Combinator
--- https://wiki.factorio.com/Prototype/DeciderCombinator
--- @field equal_symbol_sprites Sprite4Way
--- @field greater_or_equal_symbol_sprites Sprite4Way
--- @field greater_symbol_sprites Sprite4Way
--- @field less_or_equal_symbol_sprites Sprite4Way
--- @field less_symbol_sprites Sprite4Way
--- @field not_equal_symbol_sprites Sprite4Way


--- @shape Prototype_DeconstructWithRobotsAchievement : Prototype_Achievement
--- https://wiki.factorio.com/Prototype/DeconstructWithRobotsAchievement
--- @field amount uint32                


--- @shape Prototype_DeconstructibleTileProxy : Prototype_Entity
--- https://wiki.factorio.com/Prototype/DeconstructibleTileProxy


--- @shape Prototype_DeconstructionItem : Prototype_SelectionTool
--- https://wiki.factorio.com/Prototype/DeconstructionItem
--- @field entity_filter_count ItemStackIndex | nil (Optional)
--- @field tile_filter_count ItemStackIndex | nil (Optional)


--- @shape Prototype_Decorative : PrototypeBase
--- https://wiki.factorio.com/Prototype/Decorative
--- @field pictures table<string, Sprite | Sprite4Way | Sprite8Way | Animation | RailPieceLayers | SpriteVariations>
--- @field autoplace AutoplaceSpecification | nil (Optional)
--- @field collision_box BoundingBox | nil (Optional)
--- @field collision_mask CollisionMask | nil (Optional)
--- @field decal_overdraw_priority uint16 | nil (Optional)
--- @field grows_through_rail_path boolean | nil (Optional)
--- @field render_layer RenderLayer | nil (Optional)
--- @field tile_layer int16 | nil        (Optional)
--- @field trigger_effect TriggerEffect | nil (Optional)
--- @field walking_sound Sound | nil     (Optional)


--- @shape Prototype_DeliverByRobotsAchievement : Prototype_Achievement
--- https://wiki.factorio.com/Prototype/DeliverByRobotsAchievement
--- @field amount MaterialAmountType    


--- @shape Prototype_DontBuildEntityAchievement : Prototype_Achievement
--- https://wiki.factorio.com/Prototype/DontBuildEntityAchievement
--- @field dont_build string | string[] 
--- @field amount uint32 | nil           (Optional)


--- @shape Prototype_DontCraftManuallyAchievement : Prototype_Achievement
--- https://wiki.factorio.com/Prototype/DontCraftManuallyAchievement
--- @field amount MaterialAmountType    


--- @shape Prototype_DontUseEntityInEnergyProductionAchievement : Prototype_Achievement
--- https://wiki.factorio.com/Prototype/DontUseEntityInEnergyProductionAchievement
--- @field excluded string | string[]   
--- @field included string | string[]   
--- @field last_hour_only boolean | nil  (Optional)
--- @field minimum_energy_produced Energy | nil (Optional)


--- @shape Prototype_EditorController
--- https://wiki.factorio.com/Prototype/EditorController
--- @field adjust_speed_based_off_zoom boolean
--- @field enable_flash_light boolean   
--- @field fill_built_entity_energy_buffers boolean
--- @field generate_neighbor_chunks boolean
--- @field gun_inventory_size ItemStackIndex
--- @field instant_blueprint_building boolean
--- @field instant_deconstruction boolean
--- @field instant_rail_planner boolean 
--- @field instant_upgrading boolean    
--- @field inventory_size ItemStackIndex
--- @field item_pickup_distance double  
--- @field loot_pickup_distance double  
--- @field mining_speed double          
--- @field movement_speed double        
--- @field name string                  
--- @field placed_corpses_never_expire boolean
--- @field render_as_day boolean        
--- @field show_additional_entity_info_gui boolean
--- @field show_character_tab_in_controller_gui boolean
--- @field show_entity_health_bars boolean
--- @field show_entity_tags boolean     
--- @field show_hidden_entities boolean 
--- @field show_infinity_filters_in_controller_gui boolean
--- @field show_status_icons boolean    
--- @field type string                  


--- @shape Prototype_ElectricEnergyInterface : Prototype_EntityWithOwner
--- https://wiki.factorio.com/Prototype/ElectricEnergyInterface
--- @field energy_source EnergySource   
--- @field animation Animation | nil     (Optional)
--- @field animations Animation4Way | nil (Optional)
--- @field continuous_animation boolean | nil (Optional)
--- @field energy_production Energy | nil (Optional)
--- @field energy_usage Energy | nil     (Optional)
--- @field gui_mode string | nil         (Optional)
--- @field light LightDefinition | nil   (Optional)
--- @field picture Sprite | nil          (Optional)
--- @field pictures table<string, Sprite | Sprite4Way | Sprite8Way | Animation | RailPieceLayers | SpriteVariations> | nil (Optional)
--- @field render_layer RenderLayer | nil (Optional)


--- @shape Prototype_ElectricPole : Prototype_EntityWithOwner
--- https://wiki.factorio.com/Prototype/ElectricPole
--- @field connection_points WireConnectionPoint[]
--- @field pictures table<string, Sprite | Sprite4Way | Sprite8Way | Animation | RailPieceLayers | SpriteVariations>
--- @field supply_area_distance double  
--- @field active_picture Sprite | nil   (Optional)
--- @field draw_circuit_wires boolean | nil (Optional)
--- @field draw_copper_wires boolean | nil (Optional)
--- @field light LightDefinition | nil   (Optional)
--- @field maximum_wire_distance double | nil (Optional)
--- @field radius_visualisation_picture Sprite | nil (Optional)
--- @field track_coverage_during_build_by_moving boolean | nil (Optional)


--- @shape Prototype_ElectricTurret : Prototype_Turret
--- https://wiki.factorio.com/Prototype/ElectricTurret
--- @field energy_source EnergySource   


--- @shape Prototype_EnemySpawner : Prototype_EntityWithOwner
--- https://wiki.factorio.com/Prototype/EnemySpawner
--- @field animations AnimationVariations
--- @field call_for_help_radius double  
--- @field max_count_of_owned_units uint32
--- @field max_friends_around_to_spawn uint32
--- @field max_richness_for_spawn_shift double
--- @field max_spawn_shift double       
--- @field pollution_absorption_absolute double
--- @field pollution_absorption_proportional double
--- @field result_units UnitSpawnDefinition[]
--- @field spawning_cooldown double[]   
--- @field spawning_radius double       
--- @field spawning_spacing double      
--- @field dying_sound Sound | nil       (Optional)
--- @field integration SpriteVariations | nil (Optional)
--- @field max_darkness_to_spawn float | nil (Optional)
--- @field min_darkness_to_spawn float | nil (Optional)
--- @field random_animation_offset boolean | nil (Optional)
--- @field spawn_decoration CreateDecorativesTriggerEffectItem | CreateDecorativesTriggerEffectItem[] | nil (Optional)
--- @field spawn_decorations_on_expansion boolean | nil (Optional)


--- @shape Prototype_EnergyShieldEquipment : Prototype_Equipment
--- https://wiki.factorio.com/Prototype/EnergyShieldEquipment
--- @field energy_per_shield Energy     
--- @field max_shield_value float       


--- @shape Prototype_Entity : PrototypeBase
--- Abstract prototype.
--- https://wiki.factorio.com/Prototype/Entity
--- @field icons IconData[] | nil        (Optional)
--- @field icon FileName | nil           (Optional)
--- @field icon_size SpriteSizeType | nil (Optional)
--- @field icon_mipmaps uint8 | nil      (Optional)
--- @field additional_pastable_entities string[] | nil (Optional)
--- @field alert_icon_scale float | nil  (Optional)
--- @field alert_icon_shift Vector | nil (Optional)
--- @field allow_copy_paste boolean | nil (Optional)
--- @field autoplace AutoplaceSpecification | nil (Optional)
--- @field build_base_evolution_requirement double | nil (Optional)
--- @field build_sound Sound | table<string, Sound> | nil (Optional)
--- @field close_sound Sound | nil       (Optional)
--- @field collision_box BoundingBox | nil (Optional)
--- @field collision_mask CollisionMask | nil (Optional)
--- @field created_effect Trigger | nil  (Optional)
--- @field created_smoke CreateTrivialSmokeEffectItem | nil (Optional)
--- @field drawing_box BoundingBox | nil (Optional)
--- @field emissions_per_second double | nil (Optional)
--- @field enemy_map_color Color | nil   (Optional)
--- @field fast_replaceable_group string | nil (Optional)
--- @field flags EntityPrototypeFlagsList | nil (Optional)
--- @field friendly_map_color Color | nil (Optional)
--- @field hit_visualization_box BoundingBox | nil (Optional)
--- @field map_color Color | nil         (Optional)
--- @field map_generator_bounding_box BoundingBox | nil (Optional)
--- @field minable MinableProperties | nil (Optional)
--- @field mined_sound Sound | nil       (Optional)
--- @field mining_sound Sound | nil      (Optional)
--- @field next_upgrade string | nil     (Optional)
--- @field open_sound Sound | nil        (Optional)
--- @field placeable_by ItemToPlace | ItemToPlace[] | nil (Optional)
--- @field protected_from_tile_building boolean | nil (Optional)
--- @field radius_visualisation_specification RadiusVisualisationSpecification | nil (Optional)
--- @field remains_when_mined string | string[] | nil (Optional)
--- @field remove_decoratives string | nil (Optional)
--- @field rotated_sound Sound | nil     (Optional)
--- @field selectable_in_game boolean | nil (Optional)
--- @field selection_box BoundingBox | nil (Optional)
--- @field selection_priority uint8 | nil (Optional)
--- @field shooting_cursor_size double | nil (Optional)
--- @field sticker_box BoundingBox | nil (Optional)
--- @field subgroup string | nil         (Optional)
--- @field tile_height uint32 | nil      (Optional)
--- @field tile_width uint32 | nil       (Optional)
--- @field trigger_target_mask TriggerTargetMask | nil (Optional)
--- @field vehicle_impact_sound Sound | nil (Optional)
--- @field water_reflection WaterReflectionDefinition | nil (Optional)
--- @field working_sound WorkingSound | nil (Optional)


--- @shape Prototype_EntityGhost : Prototype_Entity
--- https://wiki.factorio.com/Prototype/EntityGhost
--- @field large_build_sound Sound | nil (Optional)
--- @field medium_build_sound Sound | nil (Optional)


--- @shape Prototype_EntityParticle : Prototype_Entity
--- https://wiki.factorio.com/Prototype/EntityParticle


--- @shape Prototype_EntityWithHealth : Prototype_Entity
--- Abstract prototype.
--- https://wiki.factorio.com/Prototype/EntityWithHealth
--- @field alert_when_damaged boolean | nil (Optional)
--- @field attack_reaction AttackReaction | nil (Optional)
--- @field corpse string | string[] | nil (Optional)
--- @field create_ghost_on_death boolean | nil (Optional)
--- @field damaged_trigger_effect TriggerEffect | nil (Optional)
--- @field dying_explosion ExplosionDefinition | ExplosionDefinition[] | nil (Optional)
--- @field dying_trigger_effect TriggerEffect | nil (Optional)
--- @field healing_per_tick float | nil  (Optional)
--- @field hide_resistances boolean | nil (Optional)
--- @field integration_patch Sprite4Way | nil (Optional)
--- @field integration_patch_render_layer RenderLayer | nil (Optional)
--- @field loot Loot | nil               (Optional)
--- @field max_health float | nil        (Optional)
--- @field random_corpse_variation boolean | nil (Optional)
--- @field repair_sound Sound | nil      (Optional)
--- @field repair_speed_modifier float | nil (Optional)
--- @field resistances Resistances | nil (Optional)


--- @shape Prototype_EntityWithOwner : Prototype_EntityWithHealth
--- Abstract prototype.
--- https://wiki.factorio.com/Prototype/EntityWithOwner
--- @field allow_run_time_change_of_is_military_target boolean | nil (Optional)
--- @field is_military_target boolean | nil (Optional)


--- @shape Prototype_Equipment : PrototypeBase
--- Abstract prototype.
--- https://wiki.factorio.com/Prototype/Equipment
--- @field categories string[]          
--- @field energy_source EnergySource   
--- @field shape EquipmentShape         
--- @field sprite Sprite                
--- @field background_border_color Color | nil (Optional)
--- @field background_color Color | nil  (Optional)
--- @field grabbed_background_color Color | nil (Optional)
--- @field take_result string | nil      (Optional)


--- @shape Prototype_EquipmentCategory : PrototypeBase
--- https://wiki.factorio.com/Prototype/EquipmentCategory


--- @shape Prototype_EquipmentGrid : PrototypeBase
--- https://wiki.factorio.com/Prototype/EquipmentGrid
--- @field equipment_categories string[]
--- @field height uint32                
--- @field width uint32                 
--- @field locked boolean | nil          (Optional)


--- @shape Prototype_Explosion : Prototype_Entity
--- https://wiki.factorio.com/Prototype/Explosion
--- @field animations AnimationVariations
--- @field beam boolean | nil            (Optional)
--- @field correct_rotation boolean | nil (Optional)
--- @field fade_in_duration uint8 | nil  (Optional)
--- @field fade_out_duration uint8 | nil (Optional)
--- @field height float | nil            (Optional)
--- @field light LightDefinition | nil   (Optional)
--- @field light_intensity_factor_final float | nil (Optional)
--- @field light_intensity_factor_initial float | nil (Optional)
--- @field light_intensity_peak_end_progress float | nil (Optional)
--- @field light_intensity_peak_start_progress float | nil (Optional)
--- @field light_size_factor_final float | nil (Optional)
--- @field light_size_factor_initial float | nil (Optional)
--- @field light_size_peak_end_progress float | nil (Optional)
--- @field light_size_peak_start_progress float | nil (Optional)
--- @field render_layer RenderLayer | nil (Optional)
--- @field rotate boolean | nil          (Optional)
--- @field scale float | nil             (Optional)
--- @field scale_animation_speed boolean | nil (Optional)
--- @field scale_deviation float | nil   (Optional)
--- @field scale_end float | nil         (Optional)
--- @field scale_in_duration uint8 | nil (Optional)
--- @field scale_increment_per_tick float | nil (Optional)
--- @field scale_initial float | nil     (Optional)
--- @field scale_initial_deviation float | nil (Optional)
--- @field scale_out_duration uint8 | nil (Optional)
--- @field smoke string | nil            (Optional)
--- @field smoke_count uint16 | nil      (Optional)
--- @field smoke_slow_down_factor float | nil (Optional)
--- @field sound Sound | nil             (Optional)


--- @shape Prototype_FinishTheGameAchievement : Prototype_Achievement
--- https://wiki.factorio.com/Prototype/FinishTheGameAchievement
--- @field until_second uint32 | nil     (Optional)


--- @shape Prototype_FireFlame : Prototype_Entity
--- https://wiki.factorio.com/Prototype/FireFlame
--- @field damage_per_tick DamagePrototype
--- @field spread_delay uint32          
--- @field spread_delay_deviation uint32
--- @field add_fuel_cooldown uint32 | nil (Optional)
--- @field burnt_patch_alpha_default float | nil (Optional)
--- @field burnt_patch_alpha_variations table<string, string | number>[] | nil (Optional)
--- @field burnt_patch_lifetime uint32 | nil (Optional)
--- @field burnt_patch_pictures SpriteVariations | nil (Optional)
--- @field damage_multiplier_decrease_per_tick float | nil (Optional)
--- @field damage_multiplier_increase_per_added_fuel float | nil (Optional)
--- @field delay_between_initial_flames uint32 | nil (Optional)
--- @field fade_in_duration uint32 | nil (Optional)
--- @field fade_out_duration uint32 | nil (Optional)
--- @field flame_alpha float | nil       (Optional)
--- @field flame_alpha_deviation float | nil (Optional)
--- @field initial_flame_count uint8 | nil (Optional)
--- @field initial_lifetime uint32 | nil (Optional)
--- @field initial_render_layer RenderLayer | nil (Optional)
--- @field lifetime_increase_by uint32 | nil (Optional)
--- @field lifetime_increase_cooldown uint32 | nil (Optional)
--- @field light LightDefinition | nil   (Optional)
--- @field limit_overlapping_particles boolean | nil (Optional)
--- @field maximum_damage_multiplier float | nil (Optional)
--- @field maximum_lifetime uint32 | nil (Optional)
--- @field maximum_spread_count uint16 | nil (Optional)
--- @field on_damage_tick_effect Trigger | nil (Optional)
--- @field on_fuel_added_action Trigger | nil (Optional)
--- @field particle_alpha float | nil    (Optional)
--- @field particle_alpha_blend_duration uint16 | nil (Optional)
--- @field particle_alpha_deviation float | nil (Optional)
--- @field pictures table<string, Sprite | Sprite4Way | Sprite8Way | Animation | RailPieceLayers | SpriteVariations> | nil (Optional)
--- @field render_layer RenderLayer | nil (Optional)
--- @field secondary_picture_fade_out_duration uint32 | nil (Optional)
--- @field secondary_picture_fade_out_start uint32 | nil (Optional)
--- @field secondary_pictures AnimationVariations | nil (Optional)
--- @field secondary_render_layer RenderLayer | nil (Optional)
--- @field small_tree_fire_pictures AnimationVariations | nil (Optional)
--- @field smoke SmokeSource[] | nil     (Optional)
--- @field smoke_fade_in_duration uint32 | nil (Optional)
--- @field smoke_fade_out_duration uint32 | nil (Optional)
--- @field smoke_source_pictures AnimationVariations | nil (Optional)
--- @field spawn_entity string | nil     (Optional)
--- @field tree_dying_factor float | nil (Optional)
--- @field uses_alternative_behavior boolean | nil (Optional)


--- @shape Prototype_Fish : Prototype_EntityWithHealth
--- https://wiki.factorio.com/Prototype/Fish
--- @field pictures table<string, Sprite | Sprite4Way | Sprite8Way | Animation | RailPieceLayers | SpriteVariations>


--- @shape Prototype_FlameThrowerExplosion : Prototype_Explosion
--- https://wiki.factorio.com/Prototype/FlameThrowerExplosion
--- @field damage DamagePrototype       
--- @field slow_down_factor double      


--- @shape Prototype_Fluid : PrototypeBase
--- https://wiki.factorio.com/Prototype/Fluid
--- @field base_color Color             
--- @field default_temperature double   
--- @field flow_color Color             
--- @field icons IconData[] | nil        (Optional)
--- @field icon FileName | nil           (Optional)
--- @field icon_size SpriteSizeType | nil (Optional)
--- @field icon_mipmaps uint8 | nil      (Optional)
--- @field emissions_multiplier double | nil (Optional)
--- @field fuel_value Energy | nil       (Optional)
--- @field gas_temperature double | nil  (Optional)
--- @field heat_capacity Energy | nil    (Optional)
--- @field hidden boolean | nil          (Optional)
--- @field max_temperature double | nil  (Optional)
--- @field subgroup string | nil         (Optional)


--- @shape Prototype_FluidStream : Prototype_Entity
--- https://wiki.factorio.com/Prototype/FluidStream
--- @field particle_horizontal_speed double
--- @field particle_horizontal_speed_deviation double
--- @field particle_spawn_interval uint16
--- @field particle_vertical_acceleration double
--- @field action Trigger | nil          (Optional)
--- @field ground_light LightDefinition | nil (Optional)
--- @field initial_action Trigger | nil  (Optional)
--- @field oriented_particle boolean | nil (Optional)
--- @field particle Animation | nil      (Optional)
--- @field particle_alpha_per_part float | nil (Optional)
--- @field particle_buffer_size uint32 | nil (Optional)
--- @field particle_end_alpha float | nil (Optional)
--- @field particle_fade_out_duration uint16 | nil (Optional)
--- @field particle_fade_out_threshold float | nil (Optional)
--- @field particle_loop_exit_threshold float | nil (Optional)
--- @field particle_loop_frame_count uint16 | nil (Optional)
--- @field particle_scale_per_part float | nil (Optional)
--- @field particle_spawn_timeout uint16 | nil (Optional)
--- @field particle_start_alpha float | nil (Optional)
--- @field particle_start_scale float | nil (Optional)
--- @field progress_to_create_smoke float | nil (Optional)
--- @field shadow Animation | nil        (Optional)
--- @field shadow_scale_enabled boolean | nil (Optional)
--- @field smoke_sources SmokeSource[] | nil (Optional)
--- @field special_neutral_target_damage DamagePrototype | nil (Optional)
--- @field spine_animation Animation | nil (Optional)
--- @field stream_light LightDefinition | nil (Optional)
--- @field target_position_deviation double | nil (Optional)
--- @field width float | nil             (Optional)


--- @shape Prototype_FluidTurret : Prototype_Turret
--- https://wiki.factorio.com/Prototype/FluidTurret
--- @field activation_buffer_ratio float
--- @field fluid_box FluidBox           
--- @field fluid_buffer_input_flow float
--- @field fluid_buffer_size float      
--- @field attacking_muzzle_animation_shift AnimatedVector | nil (Optional)
--- @field ending_attack_muzzle_animation_shift AnimatedVector | nil (Optional)
--- @field enough_fuel_indicator_light LightDefinition | nil (Optional)
--- @field enough_fuel_indicator_picture Sprite4Way | nil (Optional)
--- @field folded_muzzle_animation_shift AnimatedVector | nil (Optional)
--- @field folding_muzzle_animation_shift AnimatedVector | nil (Optional)
--- @field muzzle_animation Animation | nil (Optional)
--- @field muzzle_light LightDefinition | nil (Optional)
--- @field not_enough_fuel_indicator_light LightDefinition | nil (Optional)
--- @field not_enough_fuel_indicator_picture Sprite4Way | nil (Optional)
--- @field out_of_ammo_alert_icon Sprite | nil (Optional)
--- @field prepared_muzzle_animation_shift AnimatedVector | nil (Optional)
--- @field preparing_muzzle_animation_shift AnimatedVector | nil (Optional)
--- @field starting_attack_muzzle_animation_shift AnimatedVector | nil (Optional)


--- @shape Prototype_FluidWagon : Prototype_RollingStock
--- https://wiki.factorio.com/Prototype/FluidWagon
--- @field capacity double              
--- @field tank_count uint8 | nil        (Optional)


--- @shape Prototype_FlyingRobot : Prototype_EntityWithOwner
--- Abstract prototype.
--- https://wiki.factorio.com/Prototype/FlyingRobot
--- @field speed double                 
--- @field energy_per_move Energy | nil  (Optional)
--- @field energy_per_tick Energy | nil  (Optional)
--- @field max_energy Energy | nil       (Optional)
--- @field max_speed double | nil        (Optional)
--- @field max_to_charge float | nil     (Optional)
--- @field min_to_charge float | nil     (Optional)
--- @field speed_multiplier_when_out_of_energy float | nil (Optional)


--- @shape Prototype_FlyingText : Prototype_Entity
--- https://wiki.factorio.com/Prototype/FlyingText
--- @field speed float                  
--- @field time_to_live uint32          
--- @field text_alignment string | nil   (Optional)


--- @shape Prototype_Font
--- https://wiki.factorio.com/Prototype/Font
--- @field from string                  
--- @field name string                  
--- @field size int32                   
--- @field type string                  
--- @field border boolean | nil          (Optional)
--- @field border_color Color | nil      (Optional)
--- @field filtered boolean | nil        (Optional)
--- @field spacing float | nil           (Optional)


--- @shape Prototype_FuelCategory : PrototypeBase
--- https://wiki.factorio.com/Prototype/FuelCategory


--- @shape Prototype_Furnace : Prototype_CraftingMachine
--- https://wiki.factorio.com/Prototype/Furnace
--- @field result_inventory_size ItemStackIndex
--- @field source_inventory_size ItemStackIndex


--- @shape Prototype_Gate : Prototype_EntityWithOwner
--- https://wiki.factorio.com/Prototype/Gate
--- @field activation_distance double   
--- @field close_sound Sound            
--- @field horizontal_animation Animation
--- @field horizontal_rail_animation_left Animation
--- @field horizontal_rail_animation_right Animation
--- @field horizontal_rail_base Animation
--- @field open_sound Sound             
--- @field opening_speed float          
--- @field timeout_to_close uint32      
--- @field vertical_animation Animation 
--- @field vertical_rail_animation_left Animation
--- @field vertical_rail_animation_right Animation
--- @field vertical_rail_base Animation 
--- @field wall_patch Animation         
--- @field fadeout_interval uint32 | nil (Optional)
--- @field opened_collision_mask CollisionMask | nil (Optional)


--- @shape Prototype_Generator : Prototype_EntityWithOwner
--- https://wiki.factorio.com/Prototype/Generator
--- @field effectivity double           
--- @field energy_source EnergySource   
--- @field fluid_box FluidBox           
--- @field fluid_usage_per_tick double  
--- @field horizontal_animation Animation
--- @field maximum_temperature double   
--- @field vertical_animation Animation 
--- @field burns_fluid boolean | nil     (Optional)
--- @field destroy_non_fuel_fluid boolean | nil (Optional)
--- @field max_power_output Energy | nil (Optional)
--- @field min_perceived_performance double | nil (Optional)
--- @field performance_to_sound_speedup double | nil (Optional)
--- @field scale_fluid_usage boolean | nil (Optional)
--- @field smoke SmokeSource[] | nil     (Optional)


--- @shape Prototype_GeneratorEquipment : Prototype_Equipment
--- https://wiki.factorio.com/Prototype/GeneratorEquipment
--- @field power Energy                 
--- @field burner EnergySource | nil     (Optional)


--- @shape Prototype_GodController
--- https://wiki.factorio.com/Prototype/GodController
--- @field inventory_size ItemStackIndex
--- @field item_pickup_distance double  
--- @field loot_pickup_distance double  
--- @field mining_speed double          
--- @field movement_speed double        
--- @field name string                  
--- @field type string                  
--- @field crafting_categories string[] | nil (Optional)
--- @field mining_categories string[] | nil (Optional)


--- @shape Prototype_GroupAttackAchievement : Prototype_Achievement
--- https://wiki.factorio.com/Prototype/GroupAttackAchievement
--- @field amount uint32 | nil           (Optional)


--- @shape Prototype_GuiStyle : PrototypeBase
--- https://wiki.factorio.com/Prototype/GuiStyle
--- @field default_sprite_priority SpritePriority
--- @field default_sprite_scale double  
--- @field default_tileset FileName     


--- @shape Prototype_Gun : Prototype_Item
--- https://wiki.factorio.com/Prototype/Gun
--- @field attack_parameters AttackParameters


--- @shape Prototype_HeatInterface : Prototype_EntityWithOwner
--- https://wiki.factorio.com/Prototype/HeatInterface
--- @field heat_buffer HeatBuffer       
--- @field gui_mode string | nil         (Optional)
--- @field picture Sprite | nil          (Optional)


--- @shape Prototype_HeatPipe : Prototype_EntityWithOwner
--- https://wiki.factorio.com/Prototype/HeatPipe
--- @field connection_sprites ConnectableEntityGraphics
--- @field heat_buffer HeatBuffer       
--- @field heat_glow_sprites ConnectableEntityGraphics


--- @shape Prototype_HighlightBoxEntity : Prototype_Entity
--- https://wiki.factorio.com/Prototype/HighlightBoxEntity


--- @shape Prototype_InfinityContainer : Prototype_LogisticContainer
--- https://wiki.factorio.com/Prototype/InfinityContainer
--- @field erase_contents_when_mined boolean
--- @field gui_mode string | nil         (Optional)


--- @shape Prototype_InfinityPipe : Prototype_Pipe
--- https://wiki.factorio.com/Prototype/InfinityPipe
--- @field gui_mode string | nil         (Optional)


--- @shape Prototype_Inserter : Prototype_EntityWithOwner
--- https://wiki.factorio.com/Prototype/Inserter
--- @field energy_source EnergySource   
--- @field extension_speed double       
--- @field hand_base_picture Sprite     
--- @field hand_base_shadow Sprite      
--- @field hand_closed_picture Sprite   
--- @field hand_closed_shadow Sprite    
--- @field hand_open_picture Sprite     
--- @field hand_open_shadow Sprite      
--- @field insert_position Vector       
--- @field pickup_position Vector       
--- @field platform_picture Sprite4Way  
--- @field rotation_speed double        
--- @field allow_burner_leech boolean | nil (Optional)
--- @field allow_custom_vectors boolean | nil (Optional)
--- @field chases_belt_items boolean | nil (Optional)
--- @field circuit_connector_sprites CircuitConnectorSprites[] | nil (Optional)
--- @field circuit_wire_connection_points WireConnectionPoint[] | nil (Optional)
--- @field circuit_wire_max_distance double | nil (Optional)
--- @field default_stack_control_input_signal SignalIDConnector | nil (Optional)
--- @field draw_circuit_wires boolean | nil (Optional)
--- @field draw_copper_wires boolean | nil (Optional)
--- @field draw_held_item boolean | nil  (Optional)
--- @field draw_inserter_arrow boolean | nil (Optional)
--- @field energy_per_movement Energy | nil (Optional)
--- @field energy_per_rotation Energy | nil (Optional)
--- @field filter_count uint8 | nil      (Optional)
--- @field hand_size double | nil        (Optional)
--- @field stack boolean | nil           (Optional)
--- @field stack_size_bonus ItemCountType | nil (Optional)
--- @field use_easter_egg boolean | nil  (Optional)


--- @shape Prototype_Item : PrototypeBase
--- https://wiki.factorio.com/Prototype/Item
--- @field icons IconData[] | nil        (Optional)
--- @field icon FileName | nil           (Optional)
--- @field icon_size SpriteSizeType | nil (Optional)
--- @field icon_mipmaps uint8 | nil      (Optional)
--- @field stack_size ItemCountType     
--- @field burnt_result string | nil     (Optional)
--- @field close_sound Sound | nil       (Optional)
--- @field icons IconData[] | nil        (Optional)
--- @field icon FileName | nil           (Optional)
--- @field icon_size SpriteSizeType | nil (Optional)
--- @field icon_mipmaps uint8 | nil      (Optional)
--- @field default_request_amount ItemCountType | nil (Optional)
--- @field flags ItemPrototypeFlagsList | nil (Optional)
--- @field fuel_acceleration_multiplier double | nil (Optional)
--- @field fuel_category string | nil    (Optional)
--- @field fuel_emissions_multiplier double | nil (Optional)
--- @field fuel_glow_color Color | nil   (Optional)
--- @field fuel_top_speed_multiplier double | nil (Optional)
--- @field fuel_value Energy | nil       (Optional)
--- @field open_sound Sound | nil        (Optional)
--- @field pictures table<string, Sprite | Sprite4Way | Sprite8Way | Animation | RailPieceLayers | SpriteVariations> | nil (Optional)
--- @field place_as_tile PlaceAsTile | nil (Optional)
--- @field place_result string | nil     (Optional)
--- @field placed_as_equipment_result string | nil (Optional)
--- @field rocket_launch_product ItemProductPrototype | nil (Optional)
--- @field rocket_launch_products ItemProductPrototype[] | nil (Optional)
--- @field subgroup string | nil         (Optional)
--- @field wire_count ItemCountType | nil (Optional)


--- @shape Prototype_ItemEntity : Prototype_Entity
--- https://wiki.factorio.com/Prototype/ItemEntity


--- @shape Prototype_ItemGroup : PrototypeBase
--- https://wiki.factorio.com/Prototype/ItemGroup
--- @field icons IconData[] | nil        (Optional)
--- @field icon FileName | nil           (Optional)
--- @field icon_size SpriteSizeType | nil (Optional)
--- @field icon_mipmaps uint8 | nil      (Optional)
--- @field order_in_recipe Order | nil   (Optional)


--- @shape Prototype_ItemRequestProxy : Prototype_Entity
--- https://wiki.factorio.com/Prototype/ItemRequestProxy
--- @field picture Sprite               
--- @field use_target_entity_alert_icon_shift boolean | nil (Optional)


--- @shape Prototype_ItemSubGroup : PrototypeBase
--- https://wiki.factorio.com/Prototype/ItemSubGroup
--- @field group string                 


--- @shape Prototype_ItemWithEntityData : Prototype_Item
--- https://wiki.factorio.com/Prototype/ItemWithEntityData
--- @field icons IconData[] | nil        (Optional)
--- @field icon FileName | nil           (Optional)
--- @field icon_size SpriteSizeType | nil (Optional)
--- @field icon_mipmaps uint8 | nil      (Optional)
--- @field icons IconData[] | nil        (Optional)
--- @field icon FileName | nil           (Optional)
--- @field icon_size SpriteSizeType | nil (Optional)
--- @field icon_mipmaps uint8 | nil      (Optional)


--- @shape Prototype_ItemWithInventory : Prototype_ItemWithLabel
--- https://wiki.factorio.com/Prototype/ItemWithInventory
--- @field inventory_size ItemStackIndex
--- @field extends_inventory_by_default boolean | nil (Optional)
--- @field filter_message_key string | nil (Optional)
--- @field filter_mode string | nil      (Optional)
--- @field insertion_priority_mode string | nil (Optional)
--- @field item_filters string[] | nil   (Optional)
--- @field item_group_filters string[] | nil (Optional)
--- @field item_subgroup_filters string[] | nil (Optional)


--- @shape Prototype_ItemWithLabel : Prototype_Item
--- https://wiki.factorio.com/Prototype/ItemWithLabel
--- @field default_label_color Color | nil (Optional)
--- @field draw_label_for_cursor_render boolean | nil (Optional)


--- @shape Prototype_ItemWithTags : Prototype_ItemWithLabel
--- https://wiki.factorio.com/Prototype/ItemWithTags


--- @shape Prototype_KillAchievement : Prototype_Achievement
--- https://wiki.factorio.com/Prototype/KillAchievement
--- @field amount uint32 | nil           (Optional)
--- @field damage_type string | nil      (Optional)
--- @field in_vehicle boolean | nil      (Optional)
--- @field personally boolean | nil      (Optional)
--- @field to_kill string | nil          (Optional)
--- @field type_to_kill string | nil     (Optional)


--- @shape Prototype_Lab : Prototype_EntityWithOwner
--- https://wiki.factorio.com/Prototype/Lab
--- @field energy_source EnergySource   
--- @field energy_usage Energy          
--- @field inputs string[]              
--- @field off_animation Animation      
--- @field on_animation Animation       
--- @field allowed_effects EffectTypeLimitation | nil (Optional)
--- @field base_productivity float | nil (Optional)
--- @field entity_info_icon_shift Vector | nil (Optional)
--- @field light LightDefinition | nil   (Optional)
--- @field module_specification ModuleSpecification | nil (Optional)
--- @field researching_speed double | nil (Optional)


--- @shape Prototype_Lamp : Prototype_EntityWithOwner
--- https://wiki.factorio.com/Prototype/Lamp
--- @field energy_source EnergySource   
--- @field energy_usage_per_tick Energy 
--- @field picture_off Sprite           
--- @field picture_on Sprite            
--- @field always_on boolean | nil       (Optional)
--- @field circuit_connector_sprites CircuitConnectorSprites | nil (Optional)
--- @field circuit_wire_connection_point WireConnectionPoint | nil (Optional)
--- @field circuit_wire_max_distance double | nil (Optional)
--- @field darkness_for_all_lamps_off float | nil (Optional)
--- @field darkness_for_all_lamps_on float | nil (Optional)
--- @field draw_circuit_wires boolean | nil (Optional)
--- @field draw_copper_wires boolean | nil (Optional)
--- @field glow_color_intensity float | nil (Optional)
--- @field glow_render_mode string | nil (Optional)
--- @field glow_size float | nil         (Optional)
--- @field light LightDefinition | nil   (Optional)
--- @field light_when_colored LightDefinition | nil (Optional)
--- @field signal_to_color_mapping SignalColorMapping[] | nil (Optional)


--- @shape Prototype_LandMine : Prototype_EntityWithOwner
--- https://wiki.factorio.com/Prototype/LandMine
--- @field picture_safe Sprite          
--- @field picture_set Sprite           
--- @field trigger_radius double        
--- @field action Trigger | nil          (Optional)
--- @field ammo_category string | nil    (Optional)
--- @field force_die_on_attack boolean | nil (Optional)
--- @field picture_set_enemy Sprite | nil (Optional)
--- @field timeout uint32 | nil          (Optional)
--- @field trigger_collision_mask CollisionMask | nil (Optional)
--- @field trigger_force ForceCondition | nil (Optional)


--- @shape Prototype_LeafParticle : Prototype_EntityParticle
--- https://wiki.factorio.com/Prototype/LeafParticle


--- @shape Prototype_LinkedBelt : Prototype_TransportBeltConnectable
--- https://wiki.factorio.com/Prototype/LinkedBelt
--- @field structure table<string, Animation | Sprite4Way>
--- @field allow_blueprint_connection boolean | nil (Optional)
--- @field allow_clone_connection boolean | nil (Optional)
--- @field allow_side_loading boolean | nil (Optional)
--- @field structure_render_layer RenderLayer | nil (Optional)


--- @shape Prototype_LinkedContainer : Prototype_EntityWithOwner
--- https://wiki.factorio.com/Prototype/LinkedContainer
--- @field inventory_size ItemStackIndex
--- @field gui_mode string | nil         (Optional)
--- @field picture Sprite | nil          (Optional)
--- @field scale_info_icons boolean | nil (Optional)


--- @shape Prototype_Loader1x1 : Prototype_TransportBeltConnectable
--- https://wiki.factorio.com/Prototype/Loader1x1
--- @field filter_count uint8           
--- @field structure table<string, Animation | Sprite4Way>
--- @field belt_length double | nil      (Optional)
--- @field container_distance double | nil (Optional)
--- @field structure_render_layer RenderLayer | nil (Optional)


--- @shape Prototype_Loader1x2 : Prototype_TransportBeltConnectable
--- https://wiki.factorio.com/Prototype/Loader1x2
--- @field filter_count uint8           
--- @field structure table<string, Animation | Sprite4Way>
--- @field belt_length double | nil      (Optional)
--- @field container_distance double | nil (Optional)
--- @field structure_render_layer RenderLayer | nil (Optional)


--- @shape Prototype_Locomotive : Prototype_RollingStock
--- https://wiki.factorio.com/Prototype/Locomotive
--- @field burner EnergySource          
--- @field max_power Energy             
--- @field reversing_power_modifier double
--- @field darkness_to_render_light_animation float | nil (Optional)
--- @field front_light LightDefinition | nil (Optional)
--- @field front_light_pictures RotatedSprite | nil (Optional)


--- @shape Prototype_LogisticContainer : Prototype_Container
--- https://wiki.factorio.com/Prototype/LogisticContainer
--- @field logistic_mode string         
--- @field animation Animation | nil     (Optional)
--- @field animation_sound Sound | nil   (Optional)
--- @field landing_location_offset Vector | nil (Optional)
--- @field max_logistic_slots uint16 | nil (Optional)
--- @field opened_duration uint8 | nil   (Optional)
--- @field render_not_in_network_icon boolean | nil (Optional)


--- @shape Prototype_LogisticRobot : Prototype_RobotWithLogisticInterface
--- https://wiki.factorio.com/Prototype/LogisticRobot
--- @field idle_with_cargo RotatedAnimation | nil (Optional)
--- @field in_motion_with_cargo RotatedAnimation | nil (Optional)
--- @field shadow_idle_with_cargo RotatedAnimation | nil (Optional)
--- @field shadow_in_motion_with_cargo RotatedAnimation | nil (Optional)


--- @shape Prototype_MapGenPresets
--- https://wiki.factorio.com/Prototype/MapGenPresets
--- @field name string                  
--- @field type string                  


--- @shape Prototype_MapSettings
--- https://wiki.factorio.com/Prototype/MapSettings
--- @field difficulty_settings table<string, string | number>
--- @field enemy_evolution table<string, number | boolean>
--- @field enemy_expansion table<string, number | boolean>
--- @field max_failed_behavior_count uint32
--- @field name string                  
--- @field path_finder table<string, number | boolean | number[]>
--- @field pollution table<string, number | boolean>
--- @field steering table<string, table<string, number | boolean>>
--- @field type string                  
--- @field unit_group table<string, number>


--- @shape Prototype_Market : Prototype_EntityWithOwner
--- https://wiki.factorio.com/Prototype/Market
--- @field picture Sprite               
--- @field allow_access_to_all_forces boolean | nil (Optional)


--- @shape Prototype_MiningDrill : Prototype_EntityWithOwner
--- https://wiki.factorio.com/Prototype/MiningDrill
--- @field energy_source EnergySource   
--- @field energy_usage Energy          
--- @field mining_speed double          
--- @field resource_categories string[] 
--- @field resource_searching_radius double
--- @field vector_to_place_result Vector
--- @field allowed_effects EffectTypeLimitation | nil (Optional)
--- @field animations Animation4Way | nil (Optional)
--- @field base_picture Sprite4Way | nil (Optional)
--- @field base_productivity float | nil (Optional)
--- @field base_render_layer RenderLayer | nil (Optional)
--- @field circuit_connector_sprites CircuitConnectorSprites[] | nil (Optional)
--- @field circuit_wire_connection_points WireConnectionPoint[] | nil (Optional)
--- @field circuit_wire_max_distance double | nil (Optional)
--- @field draw_circuit_wires boolean | nil (Optional)
--- @field draw_copper_wires boolean | nil (Optional)
--- @field graphics_set table<string, number | Sprite4Way | Animation4Way | RenderLayer> | nil (Optional)
--- @field input_fluid_box FluidBox | nil (Optional)
--- @field module_specification ModuleSpecification | nil (Optional)
--- @field monitor_visualization_tint Color | nil (Optional)
--- @field output_fluid_box FluidBox | nil (Optional)
--- @field radius_visualisation_picture Sprite | nil (Optional)
--- @field wet_mining_graphics_set MiningDrillGraphicsSet | nil (Optional)


--- @shape Prototype_MiningTool : Prototype_Tool
--- https://wiki.factorio.com/Prototype/MiningTool


--- @shape Prototype_Module : Prototype_Item
--- https://wiki.factorio.com/Prototype/Module
--- @field category string              
--- @field effect Effect                
--- @field tier uint32                  
--- @field art_style string | nil        (Optional)
--- @field beacon_tint table<string, Color> | nil (Optional)
--- @field limitation string[] | nil     (Optional)
--- @field limitation_blacklist string[] | nil (Optional)
--- @field limitation_message_key string | nil (Optional)
--- @field requires_beacon_alt_mode boolean | nil (Optional)


--- @shape Prototype_ModuleCategory : PrototypeBase
--- https://wiki.factorio.com/Prototype/ModuleCategory


--- @shape Prototype_MouseCursor
--- https://wiki.factorio.com/Prototype/MouseCursor
--- @field name string                  
--- @field type string                  
--- @field filename FileName | nil       (Optional)
--- @field hot_pixel_x int16 | nil       (Optional)
--- @field hot_pixel_y int16 | nil       (Optional)
--- @field system_cursor string | nil    (Optional)


--- @shape Prototype_MovementBonusEquipment : Prototype_Equipment
--- https://wiki.factorio.com/Prototype/MovementBonusEquipment
--- @field energy_consumption Energy    
--- @field movement_bonus double        


--- @shape Prototype_NamedNoiseExpression : PrototypeBase
--- https://wiki.factorio.com/Prototype/NamedNoiseExpression
--- @field expression NoiseExpression   
--- @field intended_property string | nil (Optional)


--- @shape Prototype_NightVisionEquipment : Prototype_Equipment
--- https://wiki.factorio.com/Prototype/NightVisionEquipment
--- @field color_lookup DaytimeColorLookupTable
--- @field energy_input Energy          
--- @field activate_sound Sound | nil    (Optional)
--- @field darkness_to_turn_on float | nil (Optional)
--- @field deactivate_sound Sound | nil  (Optional)


--- @shape Prototype_NoiseLayer : PrototypeBase
--- https://wiki.factorio.com/Prototype/NoiseLayer


--- @shape Prototype_OffshorePump : Prototype_EntityWithOwner
--- https://wiki.factorio.com/Prototype/OffshorePump
--- @field fluid string                 
--- @field fluid_box FluidBox           
--- @field pumping_speed float          
--- @field adjacent_tile_collision_box BoundingBox | nil (Optional)
--- @field adjacent_tile_collision_mask CollisionMask | nil (Optional)
--- @field adjacent_tile_collision_test CollisionMask | nil (Optional)
--- @field always_draw_fluid boolean | nil (Optional)
--- @field center_collision_mask CollisionMask | nil (Optional)
--- @field check_bounding_box_collides_with_tiles boolean | nil (Optional)
--- @field circuit_connector_sprites CircuitConnectorSprites[] | nil (Optional)
--- @field circuit_wire_connection_points WireConnectionPoint[] | nil (Optional)
--- @field circuit_wire_max_distance double | nil (Optional)
--- @field draw_circuit_wires boolean | nil (Optional)
--- @field draw_copper_wires boolean | nil (Optional)
--- @field fluid_box_tile_collision_test CollisionMask | nil (Optional)
--- @field graphics_set table<string, number | Sprite4Way | Animation4Way | RenderLayer> | nil (Optional)
--- @field min_perceived_performance float | nil (Optional)
--- @field picture Sprite4Way | nil      (Optional)
--- @field placeable_position_visualization Sprite | nil (Optional)
--- @field remove_on_tile_collision boolean | nil (Optional)


--- @shape Prototype_Particle : PrototypeBase
--- https://wiki.factorio.com/Prototype/Particle
--- @field life_time uint16             
--- @field pictures table<string, Sprite | Sprite4Way | Sprite8Way | Animation | RailPieceLayers | SpriteVariations>
--- @field render_layer RenderLayer     
--- @field render_layer_when_on_ground RenderLayer
--- @field draw_shadow_when_on_ground boolean | nil (Optional)
--- @field ended_in_water_trigger_effect TriggerEffect | nil (Optional)
--- @field ended_on_ground_trigger_effect TriggerEffect | nil (Optional)
--- @field fade_away_duration uint16 | nil (Optional)
--- @field mining_particle_frame_speed float | nil (Optional)
--- @field movement_modifier double | nil (Optional)
--- @field movement_modifier_when_on_ground double | nil (Optional)
--- @field regular_trigger_effect TriggerEffect | nil (Optional)
--- @field regular_trigger_effect_frequency uint32 | nil (Optional)
--- @field shadows AnimationVariations | nil (Optional)
--- @field vertical_acceleration float | nil (Optional)


--- @shape Prototype_ParticleSource : Prototype_Entity
--- https://wiki.factorio.com/Prototype/ParticleSource
--- @field height float                 
--- @field horizontal_speed float       
--- @field time_before_start float      
--- @field time_to_live float           
--- @field vertical_speed float         
--- @field height_deviation float | nil  (Optional)
--- @field horizontal_speed_deviation float | nil (Optional)
--- @field particle string | nil         (Optional)
--- @field smoke SmokeSource[] | nil     (Optional)
--- @field time_before_start_deviation float | nil (Optional)
--- @field time_to_live_deviation float | nil (Optional)
--- @field vertical_speed_deviation float | nil (Optional)


--- @shape Prototype_Pipe : Prototype_EntityWithOwner
--- https://wiki.factorio.com/Prototype/Pipe
--- @field fluid_box FluidBox           
--- @field horizontal_window_bounding_box BoundingBox
--- @field pictures table<string, Sprite | Sprite4Way | Sprite8Way | Animation | RailPieceLayers | SpriteVariations>
--- @field vertical_window_bounding_box BoundingBox


--- @shape Prototype_PipeToGround : Prototype_EntityWithOwner
--- https://wiki.factorio.com/Prototype/PipeToGround
--- @field fluid_box FluidBox           
--- @field pictures table<string, Sprite | Sprite4Way | Sprite8Way | Animation | RailPieceLayers | SpriteVariations>
--- @field draw_fluid_icon_override boolean | nil (Optional)


--- @shape Prototype_PlayerDamagedAchievement : Prototype_Achievement
--- https://wiki.factorio.com/Prototype/PlayerDamagedAchievement
--- @field minimum_damage float         
--- @field should_survive boolean       
--- @field type_of_dealer string | nil   (Optional)


--- @shape Prototype_PlayerPort : Prototype_EntityWithOwner
--- https://wiki.factorio.com/Prototype/PlayerPort
--- @field animation Animation          


--- @shape Prototype_PowerSwitch : Prototype_EntityWithOwner
--- https://wiki.factorio.com/Prototype/PowerSwitch
--- @field circuit_wire_connection_point WireConnectionPoint
--- @field led_off Sprite               
--- @field led_on Sprite                
--- @field left_wire_connection_point WireConnectionPoint
--- @field overlay_loop Animation       
--- @field overlay_start Animation      
--- @field overlay_start_delay uint8    
--- @field power_on_animation Animation 
--- @field right_wire_connection_point WireConnectionPoint
--- @field draw_circuit_wires boolean | nil (Optional)
--- @field draw_copper_wires boolean | nil (Optional)
--- @field wire_max_distance double | nil (Optional)


--- @shape Prototype_ProduceAchievement : Prototype_Achievement
--- https://wiki.factorio.com/Prototype/ProduceAchievement
--- @field amount MaterialAmountType    
--- @field limited_to_one_game boolean  
--- @field fluid_product string | nil    (Optional)
--- @field item_product string | nil     (Optional)


--- @shape Prototype_ProducePerHourAchievement : Prototype_Achievement
--- https://wiki.factorio.com/Prototype/ProducePerHourAchievement
--- @field amount MaterialAmountType    
--- @field fluid_product string | nil    (Optional)
--- @field item_product string | nil     (Optional)


--- @shape Prototype_ProgrammableSpeaker : Prototype_EntityWithOwner
--- https://wiki.factorio.com/Prototype/ProgrammableSpeaker
--- @field energy_source EnergySource   
--- @field energy_usage_per_tick Energy 
--- @field instruments table<string, string | table<string, Sound>[]>
--- @field maximum_polyphony uint32     
--- @field sprite Sprite                
--- @field audible_distance_modifier float | nil (Optional)
--- @field circuit_connector_sprites CircuitConnectorSprites | nil (Optional)
--- @field circuit_wire_connection_point WireConnectionPoint | nil (Optional)
--- @field circuit_wire_max_distance double | nil (Optional)
--- @field draw_circuit_wires boolean | nil (Optional)
--- @field draw_copper_wires boolean | nil (Optional)


--- @shape Prototype_Projectile : Prototype_Entity
--- https://wiki.factorio.com/Prototype/Projectile
--- @field acceleration double          
--- @field action Trigger | nil          (Optional)
--- @field animation Animation | nil     (Optional)
--- @field direction_only boolean | nil  (Optional)
--- @field enable_drawing_with_mask boolean | nil (Optional)
--- @field final_action Trigger | nil    (Optional)
--- @field force_condition ForceCondition | nil (Optional)
--- @field height double | nil           (Optional)
--- @field hit_at_collision_position boolean | nil (Optional)
--- @field hit_collision_mask CollisionMask | nil (Optional)
--- @field light LightDefinition | nil   (Optional)
--- @field max_speed double | nil        (Optional)
--- @field piercing_damage float | nil   (Optional)
--- @field rotatable boolean | nil       (Optional)
--- @field shadow Animation | nil        (Optional)
--- @field smoke SmokeSource[] | nil     (Optional)
--- @field speed_modifier float | nil    (Optional)
--- @field turn_speed Vector | nil       (Optional)
--- @field turning_speed_increases_exponentially_with_projectile_speed boolean | nil (Optional)


--- @shape Prototype_Pump : Prototype_EntityWithOwner
--- https://wiki.factorio.com/Prototype/Pump
--- @field animations Animation4Way     
--- @field energy_source EnergySource   
--- @field energy_usage Energy          
--- @field fluid_box FluidBox           
--- @field pumping_speed double         
--- @field circuit_connector_sprites CircuitConnectorSprites[] | nil (Optional)
--- @field circuit_wire_connection_points WireConnectionPoint[] | nil (Optional)
--- @field circuit_wire_max_distance double | nil (Optional)
--- @field draw_circuit_wires boolean | nil (Optional)
--- @field draw_copper_wires boolean | nil (Optional)
--- @field fluid_animation Animation4Way | nil (Optional)
--- @field fluid_wagon_connector_alignment_tolerance double | nil (Optional)
--- @field fluid_wagon_connector_frame_count uint8 | nil (Optional)
--- @field fluid_wagon_connector_graphics PumpConnectorGraphics[] | nil (Optional)
--- @field fluid_wagon_connector_speed double | nil (Optional)
--- @field glass_pictures Sprite4Way | nil (Optional)


--- @shape Prototype_Radar : Prototype_EntityWithOwner
--- https://wiki.factorio.com/Prototype/Radar
--- @field energy_per_nearby_scan Energy
--- @field energy_per_sector Energy     
--- @field energy_source EnergySource   
--- @field energy_usage Energy          
--- @field max_distance_of_nearby_sector_revealed uint32
--- @field max_distance_of_sector_revealed uint32
--- @field pictures table<string, Sprite | Sprite4Way | Sprite8Way | Animation | RailPieceLayers | SpriteVariations>
--- @field radius_minimap_visualisation_color Color | nil (Optional)
--- @field rotation_speed double | nil   (Optional)


--- @shape Prototype_Rail : Prototype_EntityWithOwner
--- Abstract prototype.
--- https://wiki.factorio.com/Prototype/Rail
--- @field pictures table<string, Sprite | Sprite4Way | Sprite8Way | Animation | RailPieceLayers | SpriteVariations>
--- @field walking_sound Sound | nil     (Optional)


--- @shape Prototype_RailChainSignal : Prototype_RailSignalBase
--- https://wiki.factorio.com/Prototype/RailChainSignal
--- @field selection_box_offsets Vector[]
--- @field blue_light LightDefinition | nil (Optional)
--- @field default_blue_output_signal SignalIDConnector | nil (Optional)


--- @shape Prototype_RailPlanner : Prototype_Item
--- https://wiki.factorio.com/Prototype/RailPlanner
--- @field curved_rail string           
--- @field straight_rail string         


--- @shape Prototype_RailRemnants : Prototype_Corpse
--- https://wiki.factorio.com/Prototype/RailRemnants
--- @field bending_type string          
--- @field pictures table<string, Sprite | Sprite4Way | Sprite8Way | Animation | RailPieceLayers | SpriteVariations>


--- @shape Prototype_RailSignal : Prototype_RailSignalBase
--- https://wiki.factorio.com/Prototype/RailSignal


--- @shape Prototype_RailSignalBase : Prototype_EntityWithOwner
--- Abstract prototype.
--- https://wiki.factorio.com/Prototype/RailSignalBase
--- @field animation RotatedAnimation   
--- @field circuit_connector_sprites CircuitConnectorSprites[] | nil (Optional)
--- @field circuit_wire_connection_points WireConnectionPoint[] | nil (Optional)
--- @field circuit_wire_max_distance double | nil (Optional)
--- @field default_green_output_signal SignalIDConnector | nil (Optional)
--- @field default_orange_output_signal SignalIDConnector | nil (Optional)
--- @field default_red_output_signal SignalIDConnector | nil (Optional)
--- @field draw_circuit_wires boolean | nil (Optional)
--- @field draw_copper_wires boolean | nil (Optional)
--- @field green_light LightDefinition | nil (Optional)
--- @field orange_light LightDefinition | nil (Optional)
--- @field rail_piece Animation | nil    (Optional)
--- @field red_light LightDefinition | nil (Optional)


--- @shape Prototype_Reactor : Prototype_EntityWithOwner
--- https://wiki.factorio.com/Prototype/Reactor
--- @field consumption Energy           
--- @field energy_source EnergySource   
--- @field heat_buffer HeatBuffer       
--- @field working_light_picture Sprite 
--- @field connection_patches_connected SpriteVariations | nil (Optional)
--- @field connection_patches_disconnected SpriteVariations | nil (Optional)
--- @field default_fuel_glow_color Color | nil (Optional)
--- @field heat_connection_patches_connected SpriteVariations | nil (Optional)
--- @field heat_connection_patches_disconnected SpriteVariations | nil (Optional)
--- @field heat_lower_layer_picture Sprite | nil (Optional)
--- @field light LightDefinition | nil   (Optional)
--- @field lower_layer_picture Sprite | nil (Optional)
--- @field meltdown_action Trigger | nil (Optional)
--- @field neighbour_bonus double | nil  (Optional)
--- @field picture Sprite | nil          (Optional)
--- @field scale_energy_usage boolean | nil (Optional)
--- @field use_fuel_glow_color boolean | nil (Optional)


--- @shape Prototype_Recipe : PrototypeBase
--- https://wiki.factorio.com/Prototype/Recipe
--- @field ingredients IngredientPrototype[]
--- @field allow_as_intermediate boolean | nil (Optional)
--- @field allow_decomposition boolean | nil (Optional)
--- @field allow_inserter_overload boolean | nil (Optional)
--- @field allow_intermediates boolean | nil (Optional)
--- @field always_show_made_in boolean | nil (Optional)
--- @field always_show_products boolean | nil (Optional)
--- @field category string | nil         (Optional)
--- @field crafting_machine_tint table<string, Color> | nil (Optional)
--- @field emissions_multiplier double | nil (Optional)
--- @field enabled boolean | nil         (Optional)
--- @field energy_required double | nil  (Optional)
--- @field expensive RecipeData | boolean | nil (Optional)
--- @field hidden boolean | nil          (Optional)
--- @field hide_from_player_crafting boolean | nil (Optional)
--- @field hide_from_stats boolean | nil (Optional)
--- @field icons IconData[] | nil        (Optional)
--- @field icon FileName | nil           (Optional)
--- @field icon_size SpriteSizeType | nil (Optional)
--- @field icon_mipmaps uint8 | nil      (Optional)
--- @field main_product string | nil     (Optional)
--- @field normal RecipeData | boolean | nil (Optional)
--- @field overload_multiplier uint32 | nil (Optional)
--- @field requester_paste_multiplier uint32 | nil (Optional)
--- @field result string | nil           (Optional)
--- @field result_count uint32 | nil     (Optional)
--- @field results ProductPrototype[] | nil (Optional)
--- @field show_amount_in_title boolean | nil (Optional)
--- @field subgroup string | nil         (Optional)
--- @field unlock_results boolean | nil  (Optional)


--- @shape Prototype_RecipeCategory : PrototypeBase
--- https://wiki.factorio.com/Prototype/RecipeCategory


--- @shape Prototype_RepairTool : Prototype_Tool
--- https://wiki.factorio.com/Prototype/RepairTool
--- @field speed float                  
--- @field repair_result Trigger | nil   (Optional)


--- @shape Prototype_ResearchAchievement : Prototype_Achievement
--- https://wiki.factorio.com/Prototype/ResearchAchievement
--- @field research_all boolean | nil    (Optional)
--- @field technology string | nil       (Optional)


--- @shape Prototype_ResourceCategory : PrototypeBase
--- https://wiki.factorio.com/Prototype/ResourceCategory


--- @shape Prototype_ResourceEntity : Prototype_Entity
--- https://wiki.factorio.com/Prototype/ResourceEntity
--- @field stage_counts uint32[]        
--- @field stages AnimationVariations   
--- @field category string | nil         (Optional)
--- @field effect_animation_period float | nil (Optional)
--- @field effect_animation_period_deviation float | nil (Optional)
--- @field effect_darkness_multiplier float | nil (Optional)
--- @field highlight boolean | nil       (Optional)
--- @field infinite boolean | nil        (Optional)
--- @field infinite_depletion_amount uint32 | nil (Optional)
--- @field map_grid boolean | nil        (Optional)
--- @field max_effect_alpha float | nil  (Optional)
--- @field min_effect_alpha float | nil  (Optional)
--- @field minimum uint32 | nil          (Optional)
--- @field mining_visualisation_tint Color | nil (Optional)
--- @field normal uint32 | nil           (Optional)
--- @field randomize_visual_position boolean | nil (Optional)
--- @field resource_patch_search_radius uint32 | nil (Optional)
--- @field stages_effect AnimationVariations | nil (Optional)
--- @field tree_removal_max_distance double | nil (Optional)
--- @field tree_removal_probability double | nil (Optional)
--- @field walking_sound Sound | nil     (Optional)


--- @shape Prototype_Roboport : Prototype_EntityWithOwner
--- https://wiki.factorio.com/Prototype/Roboport
--- @field base Sprite                  
--- @field base_animation Animation     
--- @field base_patch Sprite            
--- @field charge_approach_distance float
--- @field charging_energy Energy       
--- @field construction_radius float    
--- @field door_animation_down Animation
--- @field door_animation_up Animation  
--- @field energy_source EnergySource   
--- @field energy_usage Energy          
--- @field logistics_radius float       
--- @field material_slots_count ItemStackIndex
--- @field recharge_minimum Energy      
--- @field recharging_animation Animation
--- @field request_to_open_door_timeout uint32
--- @field robot_slots_count ItemStackIndex
--- @field spawn_and_station_height float
--- @field charging_distance float | nil (Optional)
--- @field charging_offsets Vector[] | nil (Optional)
--- @field charging_station_count uint32 | nil (Optional)
--- @field charging_station_shift Vector | nil (Optional)
--- @field charging_threshold_distance float | nil (Optional)
--- @field circuit_connector_sprites CircuitConnectorSprites | nil (Optional)
--- @field circuit_wire_connection_point WireConnectionPoint | nil (Optional)
--- @field circuit_wire_max_distance double | nil (Optional)
--- @field close_door_trigger_effect TriggerEffect | nil (Optional)
--- @field default_available_construction_output_signal SignalIDConnector | nil (Optional)
--- @field default_available_logistic_output_signal SignalIDConnector | nil (Optional)
--- @field default_total_construction_output_signal SignalIDConnector | nil (Optional)
--- @field default_total_logistic_output_signal SignalIDConnector | nil (Optional)
--- @field draw_circuit_wires boolean | nil (Optional)
--- @field draw_construction_radius_visualization boolean | nil (Optional)
--- @field draw_copper_wires boolean | nil (Optional)
--- @field draw_logistic_radius_visualization boolean | nil (Optional)
--- @field logistics_connection_distance float | nil (Optional)
--- @field open_door_trigger_effect TriggerEffect | nil (Optional)
--- @field recharging_light LightDefinition | nil (Optional)
--- @field robot_limit ItemCountType | nil (Optional)
--- @field robot_vertical_acceleration float | nil (Optional)
--- @field robots_shrink_when_entering_and_exiting boolean | nil (Optional)
--- @field spawn_and_station_shadow_height_offset float | nil (Optional)
--- @field stationing_offset Vector | nil (Optional)


--- @shape Prototype_RoboportEquipment : Prototype_Equipment
--- https://wiki.factorio.com/Prototype/RoboportEquipment
--- @field charge_approach_distance float
--- @field charging_energy Energy       
--- @field construction_radius float    
--- @field recharging_animation Animation
--- @field spawn_and_station_height float
--- @field burner EnergySource | nil     (Optional)
--- @field charging_distance float | nil (Optional)
--- @field charging_offsets Vector[] | nil (Optional)
--- @field charging_station_count uint32 | nil (Optional)
--- @field charging_station_shift Vector | nil (Optional)
--- @field charging_threshold_distance float | nil (Optional)
--- @field draw_construction_radius_visualization boolean | nil (Optional)
--- @field draw_logistic_radius_visualization boolean | nil (Optional)
--- @field power Energy | nil            (Optional)
--- @field recharging_light LightDefinition | nil (Optional)
--- @field robot_limit ItemCountType | nil (Optional)
--- @field robot_vertical_acceleration float | nil (Optional)
--- @field robots_shrink_when_entering_and_exiting boolean | nil (Optional)
--- @field spawn_and_station_shadow_height_offset float | nil (Optional)
--- @field spawn_minimum Energy | nil    (Optional)
--- @field stationing_offset Vector | nil (Optional)


--- @shape Prototype_RobotWithLogisticInterface : Prototype_FlyingRobot
--- Abstract prototype.
--- https://wiki.factorio.com/Prototype/RobotWithLogisticInterface
--- @field cargo_centered Vector        
--- @field max_payload_size ItemCountType
--- @field destroy_action Trigger | nil  (Optional)
--- @field draw_cargo boolean | nil      (Optional)
--- @field idle RotatedAnimation | nil   (Optional)
--- @field in_motion RotatedAnimation | nil (Optional)
--- @field shadow_idle RotatedAnimation | nil (Optional)
--- @field shadow_in_motion RotatedAnimation | nil (Optional)


--- @shape Prototype_RocketSilo : Prototype_AssemblingMachine
--- https://wiki.factorio.com/Prototype/RocketSilo
--- @field active_energy_usage Energy   
--- @field arm_01_back_animation Animation
--- @field arm_02_right_animation Animation
--- @field arm_03_front_animation Animation
--- @field base_day_sprite Sprite       
--- @field base_front_sprite Sprite     
--- @field door_back_open_offset Vector 
--- @field door_back_sprite Sprite      
--- @field door_front_open_offset Vector
--- @field door_front_sprite Sprite     
--- @field door_opening_speed double    
--- @field energy_usage Energy          
--- @field hole_clipping_box BoundingBox
--- @field hole_light_sprite Sprite     
--- @field hole_sprite Sprite           
--- @field idle_energy_usage Energy     
--- @field lamp_energy_usage Energy     
--- @field light_blinking_speed double  
--- @field red_lights_back_sprites Sprite
--- @field red_lights_front_sprites Sprite
--- @field rocket_entity string         
--- @field rocket_glow_overlay_sprite Sprite
--- @field rocket_parts_required uint32 
--- @field rocket_shadow_overlay_sprite Sprite
--- @field satellite_animation Animation
--- @field satellite_shadow_animation Animation
--- @field shadow_sprite Sprite         
--- @field silo_fade_out_end_distance double
--- @field silo_fade_out_start_distance double
--- @field times_to_blink uint8         
--- @field alarm_sound Sound | nil       (Optional)
--- @field alarm_trigger TriggerEffect | nil (Optional)
--- @field base_engine_light LightDefinition | nil (Optional)
--- @field base_light LightDefinition | nil (Optional)
--- @field base_night_sprite Sprite | nil (Optional)
--- @field clamps_off_sound Sound | nil  (Optional)
--- @field clamps_off_trigger TriggerEffect | nil (Optional)
--- @field clamps_on_sound Sound | nil   (Optional)
--- @field clamps_on_trigger TriggerEffect | nil (Optional)
--- @field doors_sound Sound | nil       (Optional)
--- @field doors_trigger TriggerEffect | nil (Optional)
--- @field flying_sound Sound | nil      (Optional)
--- @field raise_rocket_sound Sound | nil (Optional)
--- @field raise_rocket_trigger TriggerEffect | nil (Optional)
--- @field rocket_result_inventory_size ItemStackIndex | nil (Optional)


--- @shape Prototype_RocketSiloRocket : Prototype_Entity
--- https://wiki.factorio.com/Prototype/RocketSiloRocket
--- @field effects_fade_in_end_distance double
--- @field effects_fade_in_start_distance double
--- @field engine_starting_speed double 
--- @field flying_acceleration double   
--- @field flying_speed double          
--- @field full_render_layer_switch_distance double
--- @field inventory_size ItemStackIndex
--- @field rising_speed double          
--- @field rocket_flame_animation Animation
--- @field rocket_flame_left_animation Animation
--- @field rocket_flame_left_rotation float
--- @field rocket_flame_right_animation Animation
--- @field rocket_flame_right_rotation float
--- @field rocket_glare_overlay_sprite Sprite
--- @field rocket_launch_offset Vector  
--- @field rocket_render_layer_switch_distance double
--- @field rocket_rise_offset Vector    
--- @field rocket_shadow_sprite Sprite  
--- @field rocket_smoke_bottom1_animation Animation
--- @field rocket_smoke_bottom2_animation Animation
--- @field rocket_smoke_top1_animation Animation
--- @field rocket_smoke_top2_animation Animation
--- @field rocket_smoke_top3_animation Animation
--- @field rocket_sprite Sprite         
--- @field rocket_visible_distance_from_center double
--- @field shadow_fade_out_end_ratio double
--- @field shadow_fade_out_start_ratio double
--- @field shadow_slave_entity string   
--- @field dying_explosion string | nil  (Optional)
--- @field flying_trigger TriggerEffect | nil (Optional)
--- @field glow_light LightDefinition | nil (Optional)
--- @field rocket_above_wires_slice_offset_from_center double | nil (Optional)
--- @field rocket_air_object_slice_offset_from_center double | nil (Optional)
--- @field rocket_initial_offset Vector | nil (Optional)


--- @shape Prototype_RocketSiloRocketShadow : Prototype_Entity
--- https://wiki.factorio.com/Prototype/RocketSiloRocketShadow


--- @shape Prototype_RollingStock : Prototype_Vehicle
--- Abstract prototype.
--- https://wiki.factorio.com/Prototype/RollingStock
--- @field air_resistance double        
--- @field connection_distance double   
--- @field joint_distance double        
--- @field max_speed double             
--- @field pictures table<string, Sprite | Sprite4Way | Sprite8Way | Animation | RailPieceLayers | SpriteVariations>
--- @field vertical_selection_shift double
--- @field allow_manual_color boolean | nil (Optional)
--- @field allow_robot_dispatch_in_automatic_mode boolean | nil (Optional)
--- @field back_light LightDefinition | nil (Optional)
--- @field color Color | nil             (Optional)
--- @field drive_over_tie_trigger TriggerEffect | nil (Optional)
--- @field horizontal_doors Animation | nil (Optional)
--- @field stand_by_light LightDefinition | nil (Optional)
--- @field tie_distance double | nil     (Optional)
--- @field vertical_doors Animation | nil (Optional)
--- @field wheels RotatedSprite | nil    (Optional)


--- @shape Prototype_SelectionTool : Prototype_ItemWithLabel
--- https://wiki.factorio.com/Prototype/SelectionTool
--- @field alt_selection_color Color    
--- @field alt_selection_cursor_box_type CursorBoxType
--- @field alt_selection_mode string[]  
--- @field selection_color Color        
--- @field selection_cursor_box_type CursorBoxType
--- @field selection_mode string[]      
--- @field alt_entity_filter_mode string | nil (Optional)
--- @field alt_entity_filters string[] | nil (Optional)
--- @field alt_entity_type_filters string[] | nil (Optional)
--- @field alt_selection_count_button_color Color | nil (Optional)
--- @field alt_tile_filter_mode string | nil (Optional)
--- @field alt_tile_filters string[] | nil (Optional)
--- @field always_include_tiles boolean | nil (Optional)
--- @field chart_alt_selection_color Color | nil (Optional)
--- @field chart_reverse_selection_color Color | nil (Optional)
--- @field chart_selection_color Color | nil (Optional)
--- @field entity_filter_mode string | nil (Optional)
--- @field entity_filters string[] | nil (Optional)
--- @field entity_type_filters string[] | nil (Optional)
--- @field mouse_cursor string | nil     (Optional)
--- @field reverse_selection_color Color | nil (Optional)
--- @field reverse_selection_count_button_color Color | nil (Optional)
--- @field reverse_selection_cursor_box_type CursorBoxType | nil (Optional)
--- @field reverse_selection_mode string[] | nil (Optional)
--- @field selection_count_button_color Color | nil (Optional)
--- @field tile_filter_mode string | nil (Optional)
--- @field tile_filters string[] | nil   (Optional)


--- @shape Prototype_Shortcut : PrototypeBase
--- https://wiki.factorio.com/Prototype/Shortcut
--- @field action string                
--- @field icon Sprite                  
--- @field associated_control_input string | nil (Optional)
--- @field disabled_icon Sprite | nil    (Optional)
--- @field disabled_small_icon Sprite | nil (Optional)
--- @field item_to_spawn string | nil    (Optional)
--- @field small_icon Sprite | nil       (Optional)
--- @field style string | nil            (Optional)
--- @field technology_to_unlock string | nil (Optional)
--- @field toggleable boolean | nil      (Optional)


--- @shape Prototype_SimpleEntity : Prototype_EntityWithHealth
--- https://wiki.factorio.com/Prototype/SimpleEntity
--- @field animations AnimationVariations | nil (Optional)
--- @field count_as_rock_for_filtered_deconstruction boolean | nil (Optional)
--- @field picture Sprite | nil          (Optional)
--- @field pictures table<string, Sprite | Sprite4Way | Sprite8Way | Animation | RailPieceLayers | SpriteVariations> | nil (Optional)
--- @field random_animation_offset boolean | nil (Optional)
--- @field random_variation_on_create boolean | nil (Optional)
--- @field render_layer RenderLayer | nil (Optional)
--- @field secondary_draw_order int8 | nil (Optional)


--- @shape Prototype_SimpleEntityWithForce : Prototype_SimpleEntityWithOwner
--- https://wiki.factorio.com/Prototype/SimpleEntityWithForce


--- @shape Prototype_SimpleEntityWithOwner : Prototype_EntityWithOwner
--- https://wiki.factorio.com/Prototype/SimpleEntityWithOwner
--- @field animations AnimationVariations | nil (Optional)
--- @field force_visibility ForceCondition | nil (Optional)
--- @field picture Sprite4Way | nil      (Optional)
--- @field pictures table<string, Sprite | Sprite4Way | Sprite8Way | Animation | RailPieceLayers | SpriteVariations> | nil (Optional)
--- @field random_animation_offset boolean | nil (Optional)
--- @field random_variation_on_create boolean | nil (Optional)
--- @field render_layer RenderLayer | nil (Optional)
--- @field secondary_draw_order int8 | nil (Optional)


--- @shape Prototype_SimpleSmoke : Prototype_Smoke
--- https://wiki.factorio.com/Prototype/SimpleSmoke


--- @shape Prototype_Smoke : Prototype_Entity
--- Abstract prototype.
--- https://wiki.factorio.com/Prototype/Smoke
--- @field animation Animation          
--- @field affected_by_wind boolean | nil (Optional)
--- @field color Color | nil             (Optional)
--- @field cyclic boolean | nil          (Optional)
--- @field duration uint32 | nil         (Optional)
--- @field end_scale double | nil        (Optional)
--- @field fade_away_duration uint32 | nil (Optional)
--- @field fade_in_duration uint32 | nil (Optional)
--- @field glow_animation Animation | nil (Optional)
--- @field glow_fade_away_duration uint32 | nil (Optional)
--- @field movement_slow_down_factor double | nil (Optional)
--- @field render_layer RenderLayer | nil (Optional)
--- @field show_when_smoke_off boolean | nil (Optional)
--- @field spread_duration uint32 | nil  (Optional)
--- @field start_scale double | nil      (Optional)


--- @shape Prototype_SmokeWithTrigger : Prototype_Smoke
--- https://wiki.factorio.com/Prototype/SmokeWithTrigger
--- @field action Trigger | nil          (Optional)
--- @field action_cooldown uint32 | nil  (Optional)
--- @field particle_count uint8 | nil    (Optional)
--- @field particle_distance_scale_factor float | nil (Optional)
--- @field particle_duration_variation uint32 | nil (Optional)
--- @field particle_scale_factor Vector | nil (Optional)
--- @field particle_spread Vector | nil  (Optional)
--- @field spread_duration_variation uint32 | nil (Optional)
--- @field wave_distance Vector | nil    (Optional)
--- @field wave_speed Vector | nil       (Optional)


--- @shape Prototype_SolarPanel : Prototype_EntityWithOwner
--- https://wiki.factorio.com/Prototype/SolarPanel
--- @field energy_source EnergySource   
--- @field picture SpriteVariations     
--- @field production Energy            
--- @field overlay SpriteVariations | nil (Optional)


--- @shape Prototype_SolarPanelEquipment : Prototype_Equipment
--- https://wiki.factorio.com/Prototype/SolarPanelEquipment
--- @field power Energy                 


--- @shape Prototype_Sound
--- https://wiki.factorio.com/Prototype/Sound
--- @field name string                  
--- @field type string                  
--- @field aggregation table<string, number | boolean> | nil (Optional)
--- @field allow_random_repeat boolean | nil (Optional)
--- @field audible_distance_modifier double | nil (Optional)
--- @field category string | nil         (Optional)
--- @field filename FileName | nil       (Optional)
--- @field max_speed float | nil         (Optional)
--- @field min_speed float | nil         (Optional)
--- @field preload boolean | nil         (Optional)
--- @field speed float | nil             (Optional)
--- @field variations table<string, FileName | number | boolean>[] | nil (Optional)
--- @field volume float | nil            (Optional)


--- @shape Prototype_SpectatorController
--- https://wiki.factorio.com/Prototype/SpectatorController
--- @field movement_speed double        
--- @field name string                  
--- @field type string                  


--- @shape Prototype_SpeechBubble : Prototype_Entity
--- https://wiki.factorio.com/Prototype/SpeechBubble
--- @field style string                 
--- @field fade_in_out_ticks uint32 | nil (Optional)
--- @field wrapper_flow_style string | nil (Optional)
--- @field y_offset double | nil         (Optional)


--- @shape Prototype_SpiderLeg : Prototype_EntityWithHealth
--- https://wiki.factorio.com/Prototype/SpiderLeg
--- @field graphics_set table<string, number | Sprite4Way | Animation4Way | RenderLayer>
--- @field initial_movement_speed double
--- @field minimal_step_size double     
--- @field movement_acceleration double 
--- @field movement_based_position_selection_distance double
--- @field part_length double           
--- @field target_position_randomisation_distance double
--- @field walking_sound_volume_modifier double | nil (Optional)


--- @shape Prototype_SpiderVehicle : Prototype_Vehicle
--- https://wiki.factorio.com/Prototype/SpiderVehicle
--- @field automatic_weapon_cycling boolean
--- @field burner EnergySource          
--- @field chain_shooting_cooldown_modifier float
--- @field chunk_exploration_radius uint32
--- @field graphics_set table<string, number | Sprite4Way | Animation4Way | RenderLayer>
--- @field height float                 
--- @field inventory_size ItemStackIndex
--- @field movement_energy_consumption Energy
--- @field spider_engine SpiderEnginePrototype
--- @field guns string[] | nil           (Optional)
--- @field torso_rotation_speed float | nil (Optional)
--- @field trash_inventory_size ItemStackIndex | nil (Optional)


--- @shape Prototype_SpidertronRemote : Prototype_Item
--- https://wiki.factorio.com/Prototype/SpidertronRemote
--- @field icons IconData[] | nil        (Optional)
--- @field icon FileName | nil           (Optional)
--- @field icon_size SpriteSizeType | nil (Optional)
--- @field icon_mipmaps uint8 | nil      (Optional)


--- @shape Prototype_Splitter : Prototype_TransportBeltConnectable
--- https://wiki.factorio.com/Prototype/Splitter
--- @field structure table<string, Animation | Sprite4Way>
--- @field structure_animation_movement_cooldown uint32 | nil (Optional)
--- @field structure_animation_speed_coefficient double | nil (Optional)
--- @field structure_patch Animation4Way | nil (Optional)


--- @shape Prototype_Sprite
--- https://wiki.factorio.com/Prototype/Sprite
--- @field filename FileName            
--- @field name string                  
--- @field type string                  
--- @field apply_runtime_tint boolean | nil (Optional)
--- @field blend_mode BlendMode | nil    (Optional)
--- @field draw_as_glow boolean | nil    (Optional)
--- @field draw_as_light boolean | nil   (Optional)
--- @field draw_as_shadow boolean | nil  (Optional)
--- @field flags SpriteFlags | nil       (Optional)
--- @field generate_sdf boolean | nil    (Optional)
--- @field height SpriteSizeType | nil   (Optional)
--- @field hr_version Sprite | nil       (Optional)
--- @field layers Sprite[] | nil         (Optional)
--- @field load_in_minimal_mode boolean | nil (Optional)
--- @field mipmap_count uint8 | nil      (Optional)
--- @field position SpriteSizeType[] | nil (Optional)
--- @field premul_alpha boolean | nil    (Optional)
--- @field priority SpritePriority | nil (Optional)
--- @field scale double | nil            (Optional)
--- @field shift Vector | nil            (Optional)
--- @field size SpriteSizeType | SpriteSizeType[] | nil (Optional)
--- @field slice SpriteSizeType | nil    (Optional)
--- @field slice_x SpriteSizeType | nil  (Optional)
--- @field slice_y SpriteSizeType | nil  (Optional)
--- @field tint Color | nil              (Optional)
--- @field width SpriteSizeType | nil    (Optional)
--- @field x SpriteSizeType | nil        (Optional)
--- @field y SpriteSizeType | nil        (Optional)


--- @shape Prototype_Sticker : Prototype_Entity
--- https://wiki.factorio.com/Prototype/Sticker
--- @field duration_in_ticks uint32     
--- @field animation Animation | nil     (Optional)
--- @field damage_interval uint32 | nil  (Optional)
--- @field damage_per_tick DamagePrototype | nil (Optional)
--- @field fire_spread_cooldown uint8 | nil (Optional)
--- @field fire_spread_radius float | nil (Optional)
--- @field force_visibility ForceCondition | nil (Optional)
--- @field selection_box_type CursorBoxType | nil (Optional)
--- @field single_particle boolean | nil (Optional)
--- @field spread_fire_entity string | nil (Optional)
--- @field stickers_per_square_meter float | nil (Optional)
--- @field target_movement_modifier float | nil (Optional)
--- @field target_movement_modifier_from float | nil (Optional)
--- @field target_movement_modifier_to float | nil (Optional)
--- @field vehicle_friction_modifier float | nil (Optional)
--- @field vehicle_friction_modifier_from float | nil (Optional)
--- @field vehicle_friction_modifier_to float | nil (Optional)
--- @field vehicle_speed_modifier float | nil (Optional)
--- @field vehicle_speed_modifier_from float | nil (Optional)
--- @field vehicle_speed_modifier_to float | nil (Optional)


--- @shape Prototype_StorageTank : Prototype_EntityWithOwner
--- https://wiki.factorio.com/Prototype/StorageTank
--- @field flow_length_in_ticks uint32  
--- @field fluid_box FluidBox           
--- @field pictures table<string, Sprite | Sprite4Way | Sprite8Way | Animation | RailPieceLayers | SpriteVariations>
--- @field window_bounding_box BoundingBox
--- @field circuit_connector_sprites CircuitConnectorSprites[] | nil (Optional)
--- @field circuit_wire_connection_points WireConnectionPoint[] | nil (Optional)
--- @field circuit_wire_max_distance double | nil (Optional)
--- @field draw_circuit_wires boolean | nil (Optional)
--- @field draw_copper_wires boolean | nil (Optional)
--- @field scale_info_icons boolean | nil (Optional)
--- @field two_direction_only boolean | nil (Optional)


--- @shape Prototype_StraightRail : Prototype_Rail
--- https://wiki.factorio.com/Prototype/StraightRail
--- @field bending_type string | nil     (Optional)


--- @shape Prototype_Technology : PrototypeBase
--- https://wiki.factorio.com/Prototype/Technology
--- @field icons IconData[] | nil        (Optional)
--- @field icon FileName | nil           (Optional)
--- @field icon_size SpriteSizeType | nil (Optional)
--- @field icon_mipmaps uint8 | nil      (Optional)
--- @field unit table<string, number | string | IngredientPrototype[]>
--- @field effects ModifierPrototype[] | nil (Optional)
--- @field enabled boolean | nil         (Optional)
--- @field expensive TechnologyData | boolean | nil (Optional)
--- @field hidden boolean | nil          (Optional)
--- @field ignore_tech_cost_multiplier boolean | nil (Optional)
--- @field max_level uint32 | string | nil (Optional)
--- @field normal TechnologyData | boolean | nil (Optional)
--- @field prerequisites string[] | nil  (Optional)
--- @field upgrade boolean | nil         (Optional)
--- @field visible_when_disabled boolean | nil (Optional)


--- @shape Prototype_Tile : PrototypeBase
--- https://wiki.factorio.com/Prototype/Tile
--- @field collision_mask CollisionMask 
--- @field layer uint8                  
--- @field map_color Color              
--- @field pollution_absorption_per_second double
--- @field variants TileTransitions     
--- @field allowed_neighbors string[] | nil (Optional)
--- @field autoplace AutoplaceSpecification | nil (Optional)
--- @field build_sound Sound | table<string, Sound> | nil (Optional)
--- @field can_be_part_of_blueprint boolean | nil (Optional)
--- @field check_collision_with_entities boolean | nil (Optional)
--- @field decorative_removal_probability float | nil (Optional)
--- @field draw_in_water_layer boolean | nil (Optional)
--- @field effect string | nil           (Optional)
--- @field effect_color Color | nil      (Optional)
--- @field effect_color_secondary Color | nil (Optional)
--- @field effect_is_opaque boolean | nil (Optional)
--- @field icons IconData[] | nil        (Optional)
--- @field icon FileName | nil           (Optional)
--- @field icon_size SpriteSizeType | nil (Optional)
--- @field icon_mipmaps uint8 | nil      (Optional)
--- @field layer_group string | nil      (Optional)
--- @field minable MinableProperties | nil (Optional)
--- @field mined_sound Sound | nil       (Optional)
--- @field needs_correction boolean | nil (Optional)
--- @field next_direction string | nil   (Optional)
--- @field placeable_by ItemToPlace | ItemToPlace[] | nil (Optional)
--- @field scorch_mark_color Color | nil (Optional)
--- @field tint Color | nil              (Optional)
--- @field transition_merges_with_tile string | nil (Optional)
--- @field transition_overlay_layer_offset uint8 | nil (Optional)
--- @field transitions TileTransitions[] | nil (Optional)
--- @field transitions_between_transitions TileTransitions[] | nil (Optional)
--- @field trigger_effect TriggerEffect | nil (Optional)
--- @field vehicle_friction_modifier double | nil (Optional)
--- @field walking_sound Sound | nil     (Optional)
--- @field walking_speed_modifier double | nil (Optional)


--- @shape Prototype_TileEffect
--- https://wiki.factorio.com/Prototype/TileEffect
--- @field animation_scale float[]      
--- @field animation_speed float        
--- @field dark_threshold float[]       
--- @field foam_color Color             
--- @field foam_color_multiplier float  
--- @field name string                  
--- @field reflection_threshold float[] 
--- @field specular_lightness Color     
--- @field specular_threshold float[]   
--- @field texture Sprite               
--- @field tick_scale float             
--- @field type string                  
--- @field far_zoom float | nil          (Optional)
--- @field near_zoom float | nil         (Optional)


--- @shape Prototype_TileGhost : Prototype_Entity
--- https://wiki.factorio.com/Prototype/TileGhost


--- @shape Prototype_TipsAndTricksItem : PrototypeBase
--- https://wiki.factorio.com/Prototype/TipsAndTricksItem
--- @field category string | nil         (Optional)
--- @field dependencies string[] | nil   (Optional)
--- @field image FileName | nil          (Optional)
--- @field indent uint8 | nil            (Optional)
--- @field is_title boolean | nil        (Optional)
--- @field simulation SimulationDefinition | nil (Optional)
--- @field skip_trigger TipTrigger | nil (Optional)
--- @field starting_status TipStatus | nil (Optional)
--- @field tag string | nil              (Optional)
--- @field trigger TipTrigger | nil      (Optional)
--- @field tutorial string | nil         (Optional)


--- @shape Prototype_TipsAndTricksItemCategory
--- https://wiki.factorio.com/Prototype/TipsAndTricksItemCategory
--- @field name string                  
--- @field order Order                  
--- @field type string                  


--- @shape Prototype_Tool : Prototype_Item
--- https://wiki.factorio.com/Prototype/Tool
--- @field durability double | nil       (Optional)
--- @field durability_description_key string | nil (Optional)
--- @field durability_description_value string | nil (Optional)
--- @field infinite boolean | nil        (Optional)


--- @shape Prototype_TrainPathAchievement : Prototype_Achievement
--- https://wiki.factorio.com/Prototype/TrainPathAchievement
--- @field minimum_distance double      


--- @shape Prototype_TrainStop : Prototype_EntityWithOwner
--- https://wiki.factorio.com/Prototype/TrainStop
--- @field animation_ticks_per_frame uint32
--- @field animations Animation4Way | nil (Optional)
--- @field chart_name boolean | nil      (Optional)
--- @field circuit_connector_sprites CircuitConnectorSprites[] | nil (Optional)
--- @field circuit_wire_connection_points WireConnectionPoint[] | nil (Optional)
--- @field circuit_wire_max_distance double | nil (Optional)
--- @field color Color | nil             (Optional)
--- @field default_train_stopped_signal SignalIDConnector | nil (Optional)
--- @field default_trains_count_signal SignalIDConnector | nil (Optional)
--- @field default_trains_limit_signal SignalIDConnector | nil (Optional)
--- @field draw_circuit_wires boolean | nil (Optional)
--- @field draw_copper_wires boolean | nil (Optional)
--- @field drawing_boxes table<string, BoundingBox> | nil (Optional)
--- @field light1 table<string, Sprite4Way | LightDefinition> | nil (Optional)
--- @field light2 table<string, Sprite4Way | LightDefinition> | nil (Optional)
--- @field rail_overlay_animations Animation4Way | nil (Optional)
--- @field top_animations Animation4Way | nil (Optional)


--- @shape Prototype_TransportBelt : Prototype_TransportBeltConnectable
--- https://wiki.factorio.com/Prototype/TransportBelt
--- @field connector_frame_sprites TransportBeltConnectorFrame
--- @field animations RotatedAnimation | nil (Optional)
--- @field belt_animation_set table<string, number | boolean | RotatedAnimation | Sprite4Way> | nil (Optional)
--- @field circuit_connector_sprites CircuitConnectorSprites[] | nil (Optional)
--- @field circuit_wire_connection_point WireConnectionPoint[] | nil (Optional)
--- @field circuit_wire_max_distance double | nil (Optional)
--- @field draw_circuit_wires boolean | nil (Optional)
--- @field draw_copper_wires boolean | nil (Optional)
--- @field related_underground_belt string | nil (Optional)


--- @shape Prototype_TransportBeltConnectable : Prototype_EntityWithOwner
--- Abstract prototype.
--- https://wiki.factorio.com/Prototype/TransportBeltConnectable
--- @field speed double                 
--- @field animation_speed_coefficient double | nil (Optional)
--- @field belt_animation_set table<string, number | boolean | RotatedAnimation | Sprite4Way> | nil (Optional)
--- @field belt_horizontal Animation | nil (Optional)
--- @field belt_vertical Animation | nil (Optional)
--- @field ending_bottom Animation | nil (Optional)
--- @field ending_patch Sprite4Way | nil (Optional)
--- @field ending_side Animation | nil   (Optional)
--- @field ending_top Animation | nil    (Optional)
--- @field ends_with_stopper boolean | nil (Optional)
--- @field starting_bottom Animation | nil (Optional)
--- @field starting_side Animation | nil (Optional)
--- @field starting_top Animation | nil  (Optional)


--- @shape Prototype_Tree : Prototype_EntityWithHealth
--- https://wiki.factorio.com/Prototype/Tree
--- @field colors Color[] | nil          (Optional)
--- @field darkness_of_burnt_tree float | nil (Optional)
--- @field pictures table<string, Sprite | Sprite4Way | Sprite8Way | Animation | RailPieceLayers | SpriteVariations> | nil (Optional)
--- @field variation_weights double[] | nil (Optional)
--- @field variations table<string, FileName | number | boolean>[] | nil (Optional)


--- @shape Prototype_TriggerTargetType
--- https://wiki.factorio.com/Prototype/TriggerTargetType
--- @field name string                  
--- @field type string                  


--- @shape Prototype_TrivialSmoke : PrototypeBase
--- https://wiki.factorio.com/Prototype/TrivialSmoke
--- @field animation Animation          
--- @field duration uint32              
--- @field affected_by_wind boolean | nil (Optional)
--- @field color Color | nil             (Optional)
--- @field cyclic boolean | nil          (Optional)
--- @field end_scale double | nil        (Optional)
--- @field fade_away_duration uint32 | nil (Optional)
--- @field fade_in_duration uint32 | nil (Optional)
--- @field glow_animation Animation | nil (Optional)
--- @field glow_fade_away_duration uint32 | nil (Optional)
--- @field movement_slow_down_factor double | nil (Optional)
--- @field render_layer RenderLayer | nil (Optional)
--- @field show_when_smoke_off boolean | nil (Optional)
--- @field spread_duration uint32 | nil  (Optional)
--- @field start_scale double | nil      (Optional)


--- @shape Prototype_Turret : Prototype_EntityWithOwner
--- https://wiki.factorio.com/Prototype/Turret
--- @field attack_parameters AttackParameters
--- @field call_for_help_radius double  
--- @field folded_animation RotatedAnimation4Way
--- @field alert_when_attacking boolean | nil (Optional)
--- @field allow_turning_when_starting_attack boolean | nil (Optional)
--- @field attack_from_start_frame boolean | nil (Optional)
--- @field attack_target_mask TriggerTargetMask | nil (Optional)
--- @field attacking_animation RotatedAnimation4Way | nil (Optional)
--- @field attacking_speed float | nil   (Optional)
--- @field base_picture Animation4Way | nil (Optional)
--- @field base_picture_render_layer RenderLayer | nil (Optional)
--- @field base_picture_secondary_draw_order uint8 | nil (Optional)
--- @field corpse string | nil           (Optional)
--- @field dying_sound Sound | nil       (Optional)
--- @field ending_attack_animation RotatedAnimation4Way | nil (Optional)
--- @field ending_attack_speed float | nil (Optional)
--- @field energy_glow_animation RotatedAnimation4Way | nil (Optional)
--- @field energy_glow_animation_flicker_strength float | nil (Optional)
--- @field folded_speed float | nil      (Optional)
--- @field folded_speed_secondary float | nil (Optional)
--- @field folding_animation RotatedAnimation4Way | nil (Optional)
--- @field folding_sound Sound | nil     (Optional)
--- @field folding_speed float | nil     (Optional)
--- @field glow_light_intensity float | nil (Optional)
--- @field gun_animation_render_layer RenderLayer | nil (Optional)
--- @field gun_animation_secondary_draw_order uint8 | nil (Optional)
--- @field ignore_target_mask TriggerTargetMask | nil (Optional)
--- @field integration Sprite | nil      (Optional)
--- @field prepare_range double | nil    (Optional)
--- @field prepared_alternative_animation RotatedAnimation4Way | nil (Optional)
--- @field prepared_alternative_chance float | nil (Optional)
--- @field prepared_alternative_sound Sound | nil (Optional)
--- @field prepared_alternative_speed float | nil (Optional)
--- @field prepared_alternative_speed_secondary float | nil (Optional)
--- @field prepared_animation RotatedAnimation4Way | nil (Optional)
--- @field prepared_sound Sound | nil    (Optional)
--- @field prepared_speed float | nil    (Optional)
--- @field prepared_speed_secondary float | nil (Optional)
--- @field preparing_animation RotatedAnimation4Way | nil (Optional)
--- @field preparing_sound Sound | nil   (Optional)
--- @field preparing_speed float | nil   (Optional)
--- @field random_animation_offset boolean | nil (Optional)
--- @field rotation_speed float | nil    (Optional)
--- @field secondary_animation boolean | nil (Optional)
--- @field shoot_in_prepare_state boolean | nil (Optional)
--- @field spawn_decoration CreateDecorativesTriggerEffectItem | CreateDecorativesTriggerEffectItem[] | nil (Optional)
--- @field spawn_decorations_on_expansion boolean | nil (Optional)
--- @field starting_attack_animation RotatedAnimation4Way | nil (Optional)
--- @field starting_attack_sound Sound | nil (Optional)
--- @field starting_attack_speed float | nil (Optional)
--- @field turret_base_has_direction boolean | nil (Optional)


--- @shape Prototype_Tutorial : PrototypeBase
--- https://wiki.factorio.com/Prototype/Tutorial
--- @field scenario string              


--- @shape Prototype_UndergroundBelt : Prototype_TransportBeltConnectable
--- https://wiki.factorio.com/Prototype/UndergroundBelt
--- @field max_distance uint8           
--- @field structure table<string, Animation | Sprite4Way>
--- @field underground_sprite Sprite    
--- @field underground_remove_belts_sprite Sprite | nil (Optional)


--- @shape Prototype_Unit : Prototype_EntityWithOwner
--- https://wiki.factorio.com/Prototype/Unit
--- @field attack_parameters AttackParameters
--- @field distance_per_frame float     
--- @field distraction_cooldown uint32  
--- @field movement_speed float         
--- @field pollution_to_join_attack float
--- @field run_animation RotatedAnimation
--- @field vision_distance double       
--- @field affected_by_tiles boolean | nil (Optional)
--- @field ai_settings UnitAISettings | nil (Optional)
--- @field alternative_attacking_frame_sequence table<string, number[] | number> | nil (Optional)
--- @field can_open_gates boolean | nil  (Optional)
--- @field dying_sound Sound | nil       (Optional)
--- @field has_belt_immunity boolean | nil (Optional)
--- @field light LightDefinition | nil   (Optional)
--- @field max_pursue_distance double | nil (Optional)
--- @field min_pursue_time uint32 | nil  (Optional)
--- @field move_while_shooting boolean | nil (Optional)
--- @field radar_range uint32 | nil      (Optional)
--- @field render_layer RenderLayer | nil (Optional)
--- @field rotation_speed float | nil    (Optional)
--- @field running_sound_animation_positions float[] | nil (Optional)
--- @field spawning_time_modifier double | nil (Optional)
--- @field walking_sound Sound | nil     (Optional)


--- @shape Prototype_UpgradeItem : Prototype_SelectionTool
--- https://wiki.factorio.com/Prototype/UpgradeItem
--- @field mapper_count ItemStackIndex | nil (Optional)


--- @shape Prototype_UtilityConstants : PrototypeBase
--- https://wiki.factorio.com/Prototype/UtilityConstants
--- @field artillery_range_visualization_color Color
--- @field bonus_gui_ordering table<string, Order>
--- @field building_buildable_tint Color
--- @field building_buildable_too_far_tint Color
--- @field building_ignorable_tint Color
--- @field building_no_tint Color       
--- @field building_not_buildable_tint Color
--- @field capsule_range_visualization_color Color
--- @field chart table<string, Color | number | table<string, Color>>
--- @field checkerboard_black Color     
--- @field checkerboard_white Color     
--- @field clipboard_history_size uint32
--- @field color_filters table<string, string | LocalisedString | number[][]>[]
--- @field count_button_size int        
--- @field daytime_color_lookup DaytimeColorLookupTable
--- @field deconstruct_mark_tint Color  
--- @field default_alert_icon_scale float
--- @field default_enemy_force_color Color
--- @field default_other_force_color Color
--- @field default_player_force_color Color
--- @field default_scorch_mark_color Color
--- @field disabled_recipe_slot_background_tint Color
--- @field disabled_recipe_slot_tint Color
--- @field dynamic_recipe_overload_factor double
--- @field enabled_recipe_slot_tint Color
--- @field entity_button_background_color Color
--- @field entity_renderer_search_box_limits table<string, number>
--- @field equipment_default_background_border_color Color
--- @field equipment_default_background_color Color
--- @field equipment_default_grabbed_background_color Color
--- @field filter_outline_color Color   
--- @field flying_text_ttl uint32       
--- @field forced_enabled_recipe_slot_background_tint Color
--- @field ghost_tint Color             
--- @field gui_remark_color Color       
--- @field icon_shadow_color Color      
--- @field icon_shadow_inset float      
--- @field icon_shadow_radius float     
--- @field icon_shadow_sharpness float  
--- @field inventory_width uint32       
--- @field item_outline_color Color     
--- @field item_outline_inset float     
--- @field item_outline_radius float    
--- @field item_outline_sharpness float 
--- @field light_renderer_search_distance_limit uint8
--- @field main_menu_background_image_location FileName
--- @field main_menu_background_vignette_intensity float
--- @field main_menu_background_vignette_sharpness float
--- @field main_menu_simulations table<string, SimulationDefinition>
--- @field manual_rail_building_reach_modifier double
--- @field map_editor table<string, Color | number>
--- @field max_terrain_building_size uint8
--- @field maximum_recipe_overload_multiplier uint32
--- @field medium_area_size float       
--- @field medium_blueprint_area_size float
--- @field minimum_recipe_overload_multiplier uint32
--- @field missing_preview_sprite_location FileName
--- @field module_inventory_width uint32
--- @field normalised_achievement_icon_size uint32
--- @field player_colors table<string, string | Color>[]
--- @field rail_planner_count_button_color Color
--- @field rail_segment_colors Color[]  
--- @field recipe_step_limit uint32     
--- @field script_command_console_chat_color Color
--- @field select_group_row_count uint32
--- @field select_slot_row_count uint32 
--- @field server_command_console_chat_color Color
--- @field small_area_size float        
--- @field small_blueprint_area_size float
--- @field tile_ghost_tint Color        
--- @field tooltip_monitor_edge_border int32
--- @field train_button_hovered_tint Color
--- @field train_destination_full_color Color
--- @field train_inactivity_wait_condition_default uint32
--- @field train_no_path_color Color    
--- @field train_path_finding table<string, number>
--- @field train_temporary_stop_wait_time uint32
--- @field train_time_wait_condition_default uint32
--- @field tree_leaf_distortion_distortion_far Vector
--- @field tree_leaf_distortion_distortion_near Vector
--- @field tree_leaf_distortion_speed_far Vector
--- @field tree_leaf_distortion_speed_near Vector
--- @field tree_leaf_distortion_strength_far Vector
--- @field tree_leaf_distortion_strength_near Vector
--- @field tree_shadow_roughness float  
--- @field tree_shadow_speed float      
--- @field turret_range_visualization_color Color
--- @field tutorial_notice_icon_size uint32
--- @field unit_group_max_pursue_distance double
--- @field unit_group_pathfind_resolution int8
--- @field zoom_to_world_can_use_nightvision boolean
--- @field zoom_to_world_daytime_color_lookup DaytimeColorLookupTable
--- @field zoom_to_world_effect_strength float
--- @field default_alert_icon_scale_by_type table<string, float> | nil (Optional)
--- @field default_alert_icon_shift_by_type table<string, Vector> | nil (Optional)
--- @field default_trigger_target_mask_by_type table<string, TriggerTargetMask> | nil (Optional)


--- @shape Prototype_UtilitySounds : PrototypeBase
--- https://wiki.factorio.com/Prototype/UtilitySounds
--- @field achievement_unlocked Sound   
--- @field alert_destroyed Sound        
--- @field armor_insert Sound           
--- @field armor_remove Sound           
--- @field axe_fighting Sound           
--- @field axe_mining_ore Sound         
--- @field blueprint_selection_ended Sound
--- @field blueprint_selection_started Sound
--- @field build_blueprint_large Sound  
--- @field build_blueprint_medium Sound 
--- @field build_blueprint_small Sound  
--- @field build_large Sound            
--- @field build_medium Sound           
--- @field build_small Sound            
--- @field cancel_deconstruction_selection_ended Sound
--- @field cancel_deconstruction_selection_started Sound
--- @field cannot_build Sound           
--- @field clear_cursor Sound           
--- @field confirm Sound                
--- @field console_message Sound        
--- @field copy_activated Sound         
--- @field crafting_finished Sound      
--- @field cut_activated Sound          
--- @field deconstruct_big Sound        
--- @field deconstruct_medium Sound     
--- @field deconstruct_robot Sound      
--- @field deconstruct_small Sound      
--- @field deconstruction_selection_ended Sound
--- @field deconstruction_selection_started Sound
--- @field default_manual_repair Sound  
--- @field drop_item Sound              
--- @field entity_settings_copied Sound 
--- @field entity_settings_pasted Sound 
--- @field game_lost Sound              
--- @field game_won Sound               
--- @field gui_click Sound              
--- @field inventory_click Sound        
--- @field inventory_move Sound         
--- @field item_deleted Sound           
--- @field item_spawned Sound           
--- @field list_box_click Sound         
--- @field metal_walking_sound Sound    
--- @field mining_wood Sound            
--- @field new_objective Sound          
--- @field paste_activated Sound        
--- @field picked_up_item Sound         
--- @field rail_plan_start Sound        
--- @field research_completed Sound     
--- @field rotated_big Sound            
--- @field rotated_medium Sound         
--- @field rotated_small Sound          
--- @field scenario_message Sound       
--- @field smart_pipette Sound          
--- @field switch_gun Sound             
--- @field tutorial_notice Sound        
--- @field undo Sound                   
--- @field upgrade_selection_ended Sound
--- @field upgrade_selection_started Sound
--- @field wire_connect_pole Sound      
--- @field wire_disconnect Sound        
--- @field wire_pickup Sound            


--- @shape Prototype_UtilitySprites : PrototypeBase
--- https://wiki.factorio.com/Prototype/UtilitySprites
--- @field achievement_label_failed Sprite
--- @field achievement_label_locked Sprite
--- @field achievement_label_unlocked Sprite
--- @field achievement_label_unlocked_off Sprite
--- @field add Sprite                   
--- @field alert_arrow Sprite           
--- @field ammo_damage_modifier_icon Sprite
--- @field ammo_icon Sprite             
--- @field and_or Sprite                
--- @field area_icon Sprite             
--- @field arrow_button Animation       
--- @field artillery_range_modifier_icon Sprite
--- @field bar_gray_pip Sprite          
--- @field battery Sprite               
--- @field brush_circle_shape Sprite    
--- @field brush_icon Sprite            
--- @field brush_square_shape Sprite    
--- @field cable_editor_icon Sprite     
--- @field center Sprite                
--- @field change_recipe Sprite         
--- @field character_additional_mining_categories_modifier_icon Sprite
--- @field character_build_distance_modifier_icon Sprite
--- @field character_crafting_speed_modifier_icon Sprite
--- @field character_health_bonus_modifier_icon Sprite
--- @field character_inventory_slots_bonus_modifier_icon Sprite
--- @field character_item_drop_distance_modifier_icon Sprite
--- @field character_item_pickup_distance_modifier_icon Sprite
--- @field character_logistic_requests_modifier_icon Sprite
--- @field character_logistic_slots_modifier_icon Sprite
--- @field character_logistic_trash_slots_modifier_icon Sprite
--- @field character_loot_pickup_distance_modifier_icon Sprite
--- @field character_mining_speed_modifier_icon Sprite
--- @field character_reach_distance_modifier_icon Sprite
--- @field character_resource_reach_distance_modifier_icon Sprite
--- @field character_running_speed_modifier_icon Sprite
--- @field check_mark Sprite            
--- @field check_mark_dark_green Sprite 
--- @field check_mark_green Sprite      
--- @field check_mark_white Sprite      
--- @field circuit_network_panel_black Sprite
--- @field circuit_network_panel_white Sprite
--- @field cliff_editor_icon Sprite     
--- @field clock Sprite                 
--- @field clone Sprite                 
--- @field clone_editor_icon Sprite     
--- @field close_black Sprite           
--- @field close_fat Sprite             
--- @field close_map_preview Sprite     
--- @field close_white Sprite           
--- @field clouds Animation             
--- @field collapse Sprite              
--- @field collapse_dark Sprite         
--- @field color_effect Sprite          
--- @field color_picker Sprite          
--- @field confirm_slot Sprite          
--- @field construction_radius_visualization Sprite
--- @field copper_wire Sprite           
--- @field copy Sprite                  
--- @field covered_chunk Sprite         
--- @field crafting_machine_recipe_not_unlocked Sprite
--- @field cursor_box table<string, BoxSpecification[]>
--- @field cursor_icon Sprite           
--- @field custom_tag_icon Sprite       
--- @field custom_tag_in_map_view Sprite
--- @field danger_icon Sprite           
--- @field deconstruction_mark Sprite   
--- @field deconstruction_time_to_live_modifier_icon Sprite
--- @field decorative_editor_icon Sprite
--- @field default_ammo_damage_modifier_icon Sprite
--- @field default_gun_speed_modifier_icon Sprite
--- @field default_turret_attack_modifier_icon Sprite
--- @field destroyed_icon Sprite        
--- @field down_arrow Sprite            
--- @field downloaded Sprite            
--- @field downloaded_white Sprite      
--- @field downloading Sprite           
--- @field downloading_white Sprite     
--- @field dropdown Sprite              
--- @field editor_pause Sprite          
--- @field editor_play Sprite           
--- @field editor_selection Sprite      
--- @field editor_speed_down Sprite     
--- @field editor_speed_up Sprite       
--- @field electricity_icon Sprite      
--- @field electricity_icon_unplugged Sprite
--- @field enemy_force_icon Sprite      
--- @field enter Sprite                 
--- @field entity_editor_icon Sprite    
--- @field entity_info_dark_background Sprite
--- @field equipment_collision Sprite   
--- @field equipment_grid Sprite        
--- @field equipment_slot Sprite        
--- @field expand Sprite                
--- @field expand_dark Sprite           
--- @field expand_dots Sprite           
--- @field expand_dots_white Sprite     
--- @field explosion_chart_visualization Animation
--- @field export Sprite                
--- @field export_slot Sprite           
--- @field favourite_server_icon Sprite 
--- @field fluid_icon Sprite            
--- @field fluid_indication_arrow Sprite
--- @field fluid_indication_arrow_both_ways Sprite
--- @field follower_robot_lifetime_modifier_icon Sprite
--- @field force_editor_icon Sprite     
--- @field fuel_icon Sprite             
--- @field game_stopped_visualization Sprite
--- @field ghost_bar_pip Sprite         
--- @field ghost_cursor Sprite          
--- @field ghost_time_to_live_modifier_icon Sprite
--- @field give_item_modifier_icon Sprite
--- @field go_to_arrow Sprite           
--- @field gps_map_icon Sprite          
--- @field gradient Sprite              
--- @field green_circle Sprite          
--- @field green_dot Sprite             
--- @field green_wire Sprite            
--- @field green_wire_hightlight Sprite 
--- @field grey_placement_indicator_leg Sprite
--- @field grey_rail_signal_placement_indicator Sprite
--- @field grid_view Sprite             
--- @field gun_speed_modifier_icon Sprite
--- @field hand Sprite                  
--- @field hand_black Sprite            
--- @field health_bar_green_pip Sprite  
--- @field health_bar_red_pip Sprite    
--- @field health_bar_yellow_pip Sprite 
--- @field heat_exchange_indication Sprite
--- @field hint_arrow_down Sprite       
--- @field hint_arrow_left Sprite       
--- @field hint_arrow_right Sprite      
--- @field hint_arrow_up Sprite         
--- @field import Sprite                
--- @field import_slot Sprite           
--- @field indication_arrow Sprite      
--- @field indication_line Sprite       
--- @field inserter_stack_size_bonus_modifier_icon Sprite
--- @field item_editor_icon Sprite      
--- @field laboratory_productivity_modifier_icon Sprite
--- @field laboratory_speed_modifier_icon Sprite
--- @field left_arrow Sprite            
--- @field light_cone Sprite            
--- @field light_medium Sprite          
--- @field light_small Sprite           
--- @field line_icon Sprite             
--- @field list_view Sprite             
--- @field logistic_network_panel_black Sprite
--- @field logistic_network_panel_white Sprite
--- @field logistic_radius_visualization Sprite
--- @field lua_snippet_tool_icon Sprite 
--- @field map Sprite                   
--- @field map_exchange_string Sprite   
--- @field max_failed_attempts_per_tick_per_construction_queue_modifier_icon Sprite
--- @field max_successful_attempts_per_tick_per_construction_queue_modifier_icon Sprite
--- @field maximum_following_robots_count_modifier_icon Sprite
--- @field medium_gui_arrow Sprite      
--- @field mining_drill_productivity_bonus_modifier_icon Sprite
--- @field missing_icon Sprite          
--- @field missing_mod_icon Sprite      
--- @field mod_dependency_arrow Sprite  
--- @field mouse_cursor Sprite          
--- @field multiplayer_waiting_icon Sprite
--- @field nature_icon Sprite           
--- @field neutral_force_icon Sprite    
--- @field no_building_material_icon Sprite
--- @field no_nature_icon Sprite        
--- @field no_storage_space_icon Sprite 
--- @field none_editor_icon Sprite      
--- @field not_available Sprite         
--- @field not_enough_construction_robots_icon Sprite
--- @field not_enough_repair_packs_icon Sprite
--- @field not_played_yet_dark_green Sprite
--- @field not_played_yet_green Sprite  
--- @field nothing_modifier_icon Sprite 
--- @field notification Sprite          
--- @field output_console_gradient Sprite
--- @field paint_bucket_icon Sprite     
--- @field pause Sprite                 
--- @field placement_indicator_leg Sprite
--- @field play Sprite                  
--- @field played_dark_green Sprite     
--- @field played_green Sprite          
--- @field player_force_icon Sprite     
--- @field preset Sprite                
--- @field pump_cannot_connect_icon Sprite
--- @field questionmark Sprite          
--- @field rail_path_not_possible Sprite
--- @field rail_planner_indication_arrow Sprite
--- @field rail_planner_indication_arrow_too_far Sprite
--- @field rail_signal_placement_indicator Sprite
--- @field reassign Sprite              
--- @field recharge_icon Sprite         
--- @field red_wire Sprite              
--- @field red_wire_hightlight Sprite   
--- @field reference_point Sprite       
--- @field refresh Sprite               
--- @field refresh_white Animation      
--- @field rename_icon_normal Sprite    
--- @field rename_icon_small_black Sprite
--- @field rename_icon_small_white Sprite
--- @field reset Sprite                 
--- @field reset_white Sprite           
--- @field resource_editor_icon Sprite  
--- @field right_arrow Sprite           
--- @field robot_slot Sprite            
--- @field scripting_editor_icon Sprite 
--- @field search_black Sprite          
--- @field search_icon Sprite           
--- @field search_white Sprite          
--- @field select_icon_black Sprite     
--- @field select_icon_white Sprite     
--- @field set_bar_slot Sprite          
--- @field shield_bar_pip Sprite        
--- @field shoot_cursor_green Sprite    
--- @field shoot_cursor_red Sprite      
--- @field short_indication_line Sprite 
--- @field short_indication_line_green Sprite
--- @field show_electric_network_in_map_view Sprite
--- @field show_electric_network_in_map_view_black Sprite
--- @field show_logistics_network_in_map_view Sprite
--- @field show_logistics_network_in_map_view_black Sprite
--- @field show_player_names_in_map_view Sprite
--- @field show_player_names_in_map_view_black Sprite
--- @field show_pollution_in_map_view Sprite
--- @field show_pollution_in_map_view_black Sprite
--- @field show_rail_signal_states_in_map_view Sprite
--- @field show_rail_signal_states_in_map_view_black Sprite
--- @field show_recipe_icons_in_map_view Sprite
--- @field show_recipe_icons_in_map_view_black Sprite
--- @field show_tags_in_map_view Sprite 
--- @field show_tags_in_map_view_black Sprite
--- @field show_train_station_names_in_map_view Sprite
--- @field show_train_station_names_in_map_view_black Sprite
--- @field show_turret_range_in_map_view Sprite
--- @field show_turret_range_in_map_view_black Sprite
--- @field show_worker_robots_in_map_view Sprite
--- @field show_worker_robots_in_map_view_black Sprite
--- @field shuffle Sprite               
--- @field side_menu_achievements_hover_icon Sprite
--- @field side_menu_achievements_icon Sprite
--- @field side_menu_blueprint_library_hover_icon Sprite
--- @field side_menu_blueprint_library_icon Sprite
--- @field side_menu_bonus_hover_icon Sprite
--- @field side_menu_bonus_icon Sprite  
--- @field side_menu_map_hover_icon Sprite
--- @field side_menu_map_icon Sprite    
--- @field side_menu_menu_hover_icon Sprite
--- @field side_menu_menu_icon Sprite   
--- @field side_menu_production_hover_icon Sprite
--- @field side_menu_production_icon Sprite
--- @field side_menu_train_hover_icon Sprite
--- @field side_menu_train_icon Sprite  
--- @field side_menu_tutorials_hover_icon Sprite
--- @field side_menu_tutorials_icon Sprite
--- @field slot Sprite                  
--- @field slot_icon_ammo Sprite        
--- @field slot_icon_ammo_black Sprite  
--- @field slot_icon_armor Sprite       
--- @field slot_icon_armor_black Sprite 
--- @field slot_icon_fuel Sprite        
--- @field slot_icon_fuel_black Sprite  
--- @field slot_icon_gun Sprite         
--- @field slot_icon_gun_black Sprite   
--- @field slot_icon_inserter_hand Sprite
--- @field slot_icon_inserter_hand_black Sprite
--- @field slot_icon_module Sprite      
--- @field slot_icon_module_black Sprite
--- @field slot_icon_resource Sprite    
--- @field slot_icon_resource_black Sprite
--- @field slot_icon_result Sprite      
--- @field slot_icon_result_black Sprite
--- @field slot_icon_robot Sprite       
--- @field slot_icon_robot_black Sprite 
--- @field slot_icon_robot_material Sprite
--- @field slot_icon_robot_material_black Sprite
--- @field small_gui_arrow Sprite       
--- @field spawn_flag Sprite            
--- @field speed_down Sprite            
--- @field speed_up Sprite              
--- @field spray_icon Sprite            
--- @field stack_inserter_capacity_bonus_modifier_icon Sprite
--- @field station_name Sprite          
--- @field status_not_working Sprite    
--- @field status_working Sprite        
--- @field status_yellow Sprite         
--- @field stop Sprite                  
--- @field surface_editor_icon Sprite   
--- @field sync_mods Sprite             
--- @field technology_black Sprite      
--- @field technology_white Sprite      
--- @field tick_custom Sprite           
--- @field tick_once Sprite             
--- @field tick_sixty Sprite            
--- @field tile_editor_icon Sprite      
--- @field tile_ghost_cursor Sprite     
--- @field time_editor_icon Sprite      
--- @field too_far Sprite               
--- @field too_far_from_roboport_icon Sprite
--- @field track_button Sprite          
--- @field train_braking_force_bonus_modifier_icon Sprite
--- @field train_stop_disabled_in_map_view Sprite
--- @field train_stop_full_in_map_view Sprite
--- @field train_stop_in_map_view Sprite
--- @field train_stop_placement_indicator Sprite
--- @field trash Sprite                 
--- @field trash_white Sprite           
--- @field turret_attack_modifier_icon Sprite
--- @field underground_pipe_connection Sprite
--- @field underground_remove_belts Sprite
--- @field underground_remove_pipes Sprite
--- @field unlock_recipe_modifier_icon Sprite
--- @field upgrade_blueprint Sprite     
--- @field upgrade_mark Sprite          
--- @field variations_tool_icon Sprite  
--- @field warning Sprite               
--- @field warning_icon Sprite          
--- @field warning_white Sprite         
--- @field white_mask Sprite            
--- @field white_square Sprite          
--- @field wire_shadow Sprite           
--- @field worker_robot_battery_modifier_icon Sprite
--- @field worker_robot_speed_modifier_icon Sprite
--- @field worker_robot_storage_modifier_icon Sprite
--- @field zoom_to_world_blueprint_enabled_modifier_icon Sprite
--- @field zoom_to_world_deconstruction_planner_enabled_modifier_icon Sprite
--- @field zoom_to_world_enabled_modifier_icon Sprite
--- @field zoom_to_world_ghost_building_enabled_modifier_icon Sprite
--- @field zoom_to_world_selection_tool_enabled_modifier_icon Sprite
--- @field zoom_to_world_upgrade_planner_enabled_modifier_icon Sprite
--- @field ammo_damage_modifier_constant Sprite | nil (Optional)
--- @field artillery_range_modifier_constant Sprite | nil (Optional)
--- @field character_additional_mining_categories_modifier_constant Sprite | nil (Optional)
--- @field character_build_distance_modifier_constant Sprite | nil (Optional)
--- @field character_crafting_speed_modifier_constant Sprite | nil (Optional)
--- @field character_health_bonus_modifier_constant Sprite | nil (Optional)
--- @field character_inventory_slots_bonus_modifier_constant Sprite | nil (Optional)
--- @field character_item_drop_distance_modifier_constant Sprite | nil (Optional)
--- @field character_item_pickup_distance_modifier_constant Sprite | nil (Optional)
--- @field character_logistic_requests_modifier_constant Sprite | nil (Optional)
--- @field character_logistic_slots_modifier_constant Sprite | nil (Optional)
--- @field character_logistic_trash_slots_modifier_constant Sprite | nil (Optional)
--- @field character_loot_pickup_distance_modifier_constant Sprite | nil (Optional)
--- @field character_mining_speed_modifier_constant Sprite | nil (Optional)
--- @field character_reach_distance_modifier_constant Sprite | nil (Optional)
--- @field character_resource_reach_distance_modifier_constant Sprite | nil (Optional)
--- @field character_running_speed_modifier_constant Sprite | nil (Optional)
--- @field deconstruction_time_to_live_modifier_constant Sprite | nil (Optional)
--- @field follower_robot_lifetime_modifier_constant Sprite | nil (Optional)
--- @field ghost_time_to_live_modifier_constant Sprite | nil (Optional)
--- @field give_item_modifier_constant Sprite | nil (Optional)
--- @field gun_speed_modifier_constant Sprite | nil (Optional)
--- @field inserter_stack_size_bonus_modifier_constant Sprite | nil (Optional)
--- @field laboratory_productivity_modifier_constant Sprite | nil (Optional)
--- @field laboratory_speed_modifier_constant Sprite | nil (Optional)
--- @field max_failed_attempts_per_tick_per_construction_queue_modifier_constant Sprite | nil (Optional)
--- @field max_successful_attempts_per_tick_per_construction_queue_modifier_constant Sprite | nil (Optional)
--- @field maximum_following_robots_count_modifier_constant Sprite | nil (Optional)
--- @field mining_drill_productivity_bonus_modifier_constant Sprite | nil (Optional)
--- @field nothing_modifier_constant Sprite | nil (Optional)
--- @field stack_inserter_capacity_bonus_modifier_constant Sprite | nil (Optional)
--- @field train_braking_force_bonus_modifier_constant Sprite | nil (Optional)
--- @field turret_attack_modifier_constant Sprite | nil (Optional)
--- @field unlock_recipe_modifier_constant Sprite | nil (Optional)
--- @field worker_robot_battery_modifier_constant Sprite | nil (Optional)
--- @field worker_robot_speed_modifier_constant Sprite | nil (Optional)
--- @field worker_robot_storage_modifier_constant Sprite | nil (Optional)
--- @field zoom_to_world_blueprint_enabled_modifier_constant Sprite | nil (Optional)
--- @field zoom_to_world_deconstruction_planner_enabled_modifier_constant Sprite | nil (Optional)
--- @field zoom_to_world_enabled_modifier_constant Sprite | nil (Optional)
--- @field zoom_to_world_ghost_building_enabled_modifier_constant Sprite | nil (Optional)
--- @field zoom_to_world_selection_tool_enabled_modifier_constant Sprite | nil (Optional)
--- @field zoom_to_world_upgrade_planner_enabled_modifier_constant Sprite | nil (Optional)


--- @shape Prototype_Vehicle : Prototype_EntityWithOwner
--- Abstract prototype.
--- https://wiki.factorio.com/Prototype/Vehicle
--- @field braking_power Energy | double
--- @field energy_per_hit_point double  
--- @field friction double              
--- @field weight double                
--- @field allow_passengers boolean | nil (Optional)
--- @field crash_trigger TriggerEffect | nil (Optional)
--- @field equipment_grid string | nil   (Optional)
--- @field minimap_representation Sprite | nil (Optional)
--- @field selected_minimap_representation Sprite | nil (Optional)
--- @field sound_minimum_speed double | nil (Optional)
--- @field sound_scaling_ratio double | nil (Optional)
--- @field stop_trigger TriggerEffect | nil (Optional)
--- @field stop_trigger_speed double | nil (Optional)
--- @field terrain_friction_modifier float | nil (Optional)


--- @shape Prototype_VirtualSignal : PrototypeBase
--- https://wiki.factorio.com/Prototype/VirtualSignal
--- @field icons IconData[] | nil        (Optional)
--- @field icon FileName | nil           (Optional)
--- @field icon_size SpriteSizeType | nil (Optional)
--- @field icon_mipmaps uint8 | nil      (Optional)
--- @field subgroup string | nil         (Optional)


--- @shape Prototype_Wall : Prototype_EntityWithOwner
--- https://wiki.factorio.com/Prototype/Wall
--- @field pictures table<string, Sprite | Sprite4Way | Sprite8Way | Animation | RailPieceLayers | SpriteVariations>
--- @field circuit_connector_sprites CircuitConnectorSprites | nil (Optional)
--- @field circuit_wire_connection_point WireConnectionPoint | nil (Optional)
--- @field circuit_wire_max_distance double | nil (Optional)
--- @field connected_gate_visualization Sprite | nil (Optional)
--- @field default_output_signal SignalIDConnector | nil (Optional)
--- @field draw_circuit_wires boolean | nil (Optional)
--- @field draw_copper_wires boolean | nil (Optional)
--- @field visual_merge_group uint32 | nil (Optional)
--- @field wall_diode_green Sprite4Way | nil (Optional)
--- @field wall_diode_green_light_bottom LightDefinition | nil (Optional)
--- @field wall_diode_green_light_left LightDefinition | nil (Optional)
--- @field wall_diode_green_light_right LightDefinition | nil (Optional)
--- @field wall_diode_green_light_top LightDefinition | nil (Optional)
--- @field wall_diode_red Sprite4Way | nil (Optional)
--- @field wall_diode_red_light_bottom LightDefinition | nil (Optional)
--- @field wall_diode_red_light_left LightDefinition | nil (Optional)
--- @field wall_diode_red_light_right LightDefinition | nil (Optional)
--- @field wall_diode_red_light_top LightDefinition | nil (Optional)


--- @shape Prototype_WindSound
--- https://wiki.factorio.com/Prototype/WindSound
--- @field name string                  
--- @field sound Sound                  
--- @field type string                  


--- @shape PrototypeBase
--- Abstract prototype.
--- https://wiki.factorio.com/Prototype/PrototypeBase
--- @field name string                  
--- @field type string                  
--- @field localised_description LocalisedString | nil (Optional)
--- @field localised_name LocalisedString | nil (Optional)
--- @field order Order | nil             (Optional)
