
--- @shape ClusterTriggerItem
--- https://wiki.factorio.com/Types/ClusterTriggerItem
--- @field cluster_count double         
--- @field distance float               
--- @field distance_deviation float | nil (Optional)


--- @shape LightFlickeringDefinition
--- https://wiki.factorio.com/Types/LightFlickeringDefinition
--- @field minimum_intensity float | nil (Optional)
--- @field maximum_intensity float | nil (Optional)
--- @field derivation_change_frequency float | nil (Optional)
--- @field derivation_change_deviation float | nil (Optional)
--- @field border_fix_speed float | nil  (Optional)
--- @field minimum_light_size float | nil (Optional)
--- @field light_intensity_to_size_coefficient float | nil (Optional)
--- @field color Color | nil             (Optional)


--- @shape SpriteVariations
--- https://wiki.factorio.com/Types/SpriteVariations


--- @shape MinableProperties
--- https://wiki.factorio.com/Types/MinableProperties
--- @field mining_time double           
--- @field results ProductPrototype[] | nil (Optional)
--- @field result string | nil           (Optional)
--- @field fluid_amount double | nil     (Optional)
--- @field mining_particle string | nil  (Optional)
--- @field required_fluid string | nil   (Optional)
--- @field count uint16 | nil            (Optional)
--- @field mining_trigger Trigger | nil  (Optional)


--- @shape HeatBuffer
--- https://wiki.factorio.com/Types/HeatBuffer
--- @field max_temperature double       
--- @field specific_heat Energy         
--- @field max_transfer Energy          
--- @field default_temperature double | nil (Optional)
--- @field min_temperature_gradient double | nil (Optional)
--- @field min_working_temperature double | nil (Optional)
--- @field minimum_glow_temperature float | nil (Optional)
--- @field pipe_covers Sprite4Way | nil  (Optional)
--- @field heat_pipe_covers Sprite4Way | nil (Optional)
--- @field heat_picture Sprite4Way | nil (Optional)
--- @field heat_glow Sprite4Way | nil    (Optional)
--- @field connections HeatConnection[] | nil (Optional)


--- @shape AnimatedVector
--- https://wiki.factorio.com/Types/AnimatedVector
--- @field rotations table[]            
--- @field render_layer RenderLayer | nil (Optional)
--- @field direction_shift table | nil   (Optional)


--- @shape RadiusVisualisationSpecification
--- https://wiki.factorio.com/Types/RadiusVisualisationSpecification
--- @field sprite Sprite | nil           (Optional)
--- @field distance double | nil         (Optional)
--- @field offset Vector | nil           (Optional)
--- @field draw_in_cursor boolean | nil  (Optional)
--- @field draw_on_selection boolean | nil (Optional)


--- @shape CircuitConnectorSprites
--- https://wiki.factorio.com/Types/CircuitConnectorSprites
--- @field led_red Sprite               
--- @field led_green Sprite             
--- @field led_blue Sprite              
--- @field led_light LightDefinition    
--- @field connector_main Sprite | nil   (Optional)
--- @field connector_shadow Sprite | nil (Optional)
--- @field wire_pins Sprite | nil        (Optional)
--- @field wire_pins_shadow Sprite | nil (Optional)
--- @field led_blue_off Sprite | nil     (Optional)
--- @field blue_led_light_offset Vector | nil (Optional)
--- @field red_green_led_light_offset Vector | nil (Optional)


--- @shape RotatedAnimation4Way
--- https://wiki.factorio.com/Types/RotatedAnimation4Way
--- @field north RotatedAnimation       
--- @field east RotatedAnimation        
--- @field south RotatedAnimation       
--- @field west RotatedAnimation        


--- @shape IconData
--- https://wiki.factorio.com/Types/IconData
--- @field icon FileName                
--- @field icon_size SpriteSizeType     
--- @field tint Color | nil              (Optional)
--- @field shift Vector | nil            (Optional)
--- @field scale double | nil            (Optional)
--- @field icon_mipmaps uint8 | nil      (Optional)


--- @shape SpiderLegSpecification
--- https://wiki.factorio.com/Types/SpiderLegSpecification
--- @field leg string                   
--- @field mount_position Vector        
--- @field ground_position Vector       
--- @field blocking_legs uint32[]       
--- @field leg_hit_the_ground_trigger TriggerEffect | nil (Optional)


--- @shape RotatedAnimation
--- https://wiki.factorio.com/Types/RotatedAnimation
--- @field direction_count uint32       
--- @field layers RotatedAnimation[] | nil (Optional)
--- @field hr_version RotatedAnimation | nil (Optional)
--- @field filename FileName | nil       (Optional)
--- @field filenames FileName[] | nil    (Optional)
--- @field slice uint32 | nil            (Optional)
--- @field lines_per_file uint32 | nil   (Optional)
--- @field priority SpritePriority | nil (Optional)
--- @field flags SpriteFlags | nil       (Optional)
--- @field size SpriteSizeType | SpriteSizeType[] | nil (Optional)
--- @field width SpriteSizeType | nil    (Optional)
--- @field height SpriteSizeType | nil   (Optional)
--- @field x SpriteSizeType | nil        (Optional)
--- @field y SpriteSizeType | nil        (Optional)
--- @field position SpriteSizeType[] | nil (Optional)
--- @field shift Vector | nil            (Optional)
--- @field scale double | nil            (Optional)
--- @field draw_as_shadow boolean | nil  (Optional)
--- @field draw_as_glow boolean | nil    (Optional)
--- @field draw_as_light boolean | nil   (Optional)
--- @field mipmap_count uint8 | nil      (Optional)
--- @field apply_runtime_tint boolean | nil (Optional)
--- @field tint Color | nil              (Optional)
--- @field blend_mode BlendMode | nil    (Optional)
--- @field load_in_minimal_mode boolean | nil (Optional)
--- @field premul_alpha boolean | nil    (Optional)
--- @field generate_sdf boolean | nil    (Optional)
--- @field run_mode string | nil         (Optional)
--- @field frame_count uint32 | nil      (Optional)
--- @field line_length uint32 | nil      (Optional)
--- @field animation_speed float | nil   (Optional)
--- @field max_advance float | nil       (Optional)
--- @field repeat_count uint8 | nil      (Optional)
--- @field dice uint8 | nil              (Optional)
--- @field dice_x uint8 | nil            (Optional)
--- @field dice_y uint8 | nil            (Optional)
--- @field frame_sequence AnimationFrameSequence | nil (Optional)
--- @field still_frame uint32 | nil      (Optional)
--- @field axially_symmetrical boolean | nil (Optional)
--- @field counterclockwise boolean | nil (Optional)
--- @field middle_orientation RealOrientation | nil (Optional)
--- @field orientation_range float | nil (Optional)
--- @field apply_projection boolean | nil (Optional)
--- @field stripes Stripe[] | nil        (Optional)


--- @shape BoxSpecification
--- https://wiki.factorio.com/Types/BoxSpecification
--- @field sprite Sprite                
--- @field is_whole_box boolean | nil    (Optional)
--- @field side_length double | nil      (Optional)
--- @field side_height double | nil      (Optional)
--- @field max_side_length double | nil  (Optional)


--- @shape TileTransitions
--- https://wiki.factorio.com/Types/TileTransitions
--- @field side TileTransitionSprite    
--- @field side_mask TileTransitionSprite
--- @field inner_corner TileTransitionSprite
--- @field inner_corner_mask TileTransitionSprite
--- @field outer_corner TileTransitionSprite
--- @field outer_corner_mask TileTransitionSprite
--- @field empty_transitions boolean | nil (Optional)
--- @field side_background TileTransitionSprite | nil (Optional)
--- @field side_background_mask TileTransitionSprite | nil (Optional)
--- @field side_effect_map TileTransitionSprite | nil (Optional)
--- @field side_weights float[] | nil    (Optional)
--- @field inner_corner_background TileTransitionSprite | nil (Optional)
--- @field inner_corner_background_mask TileTransitionSprite | nil (Optional)
--- @field inner_corner_effect_map TileTransitionSprite | nil (Optional)
--- @field inner_corner_weights float[] | nil (Optional)
--- @field outer_corner_background TileTransitionSprite | nil (Optional)
--- @field outer_corner_background_mask TileTransitionSprite | nil (Optional)
--- @field outer_corner_effect_map TileTransitionSprite | nil (Optional)
--- @field outer_corner_weights float[] | nil (Optional)
--- @field u_transition TileTransitionSprite | nil (Optional)
--- @field u_transition_mask TileTransitionSprite | nil (Optional)
--- @field u_transition_background TileTransitionSprite | nil (Optional)
--- @field u_transition_background_mask TileTransitionSprite | nil (Optional)
--- @field u_transition_effect_map TileTransitionSprite | nil (Optional)
--- @field u_transition_weights float[] | nil (Optional)
--- @field o_transition TileSprite | nil (Optional)
--- @field o_transition_mask TileSprite | nil (Optional)
--- @field o_transition_background TileSprite | nil (Optional)
--- @field o_transition_background_mask TileSprite | nil (Optional)
--- @field o_transition_effect_map TileSprite | nil (Optional)
--- @field water_patch Sprite | nil      (Optional)
--- @field effect_mask Animation | nil   (Optional)
--- @field layer uint8 | nil             (Optional)
--- @field overlay_layer_group string | nil (Optional)
--- @field background_layer_group string | nil (Optional)
--- @field overlay_layer_offset int8 | nil (Optional)
--- @field masked_overlay_layer_offset int8 | nil (Optional)
--- @field background_layer_offset int8 | nil (Optional)
--- @field masked_background_layer_offset int8 | nil (Optional)
--- @field apply_effect_color_to_overlay boolean | nil (Optional)
--- @field offset_background_layer_by_tile_layer boolean | nil (Optional)


--- @shape ConnectableEntityGraphics
--- https://wiki.factorio.com/Types/ConnectableEntityGraphics
--- @field single SpriteVariations      
--- @field straight_vertical SpriteVariations
--- @field straight_horizontal SpriteVariations
--- @field corner_right_down SpriteVariations
--- @field corner_left_down SpriteVariations
--- @field corner_right_up SpriteVariations
--- @field corner_left_up SpriteVariations
--- @field t_up SpriteVariations        
--- @field t_right SpriteVariations     
--- @field t_down SpriteVariations      
--- @field t_left SpriteVariations      
--- @field ending_up SpriteVariations   
--- @field ending_right SpriteVariations
--- @field ending_down SpriteVariations 
--- @field ending_left SpriteVariations 
--- @field cross SpriteVariations       


--- @shape SimulationDefinition
--- https://wiki.factorio.com/Types/SimulationDefinition
--- @field save FileName | nil           (Optional)
--- @field init_file FileName | nil      (Optional)
--- @field init string | nil             (Optional)
--- @field update_file FileName | nil    (Optional)
--- @field update string | nil           (Optional)
--- @field init_update_count uint32 | nil (Optional)
--- @field length uint32 | nil           (Optional)
--- @field generate_map boolean | nil    (Optional)
--- @field checkboard boolean | nil      (Optional)
--- @field volume_modifier float | nil   (Optional)
--- @field override_volume boolean | nil (Optional)


--- @shape FluidIngredientPrototype
--- https://wiki.factorio.com/Types/FluidIngredientPrototype
--- @field name string | nil             (Optional)
--- @field amount number | nil           (Optional)
--- @field temperature double | nil      (Optional)
--- @field minimum_temperature double | nil (Optional)
--- @field maximum_temperature double | nil (Optional)
--- @field catalyst_amount double | nil  (Optional)
--- @field fluidbox_index uint32 | nil   (Optional)
--- @field type string | nil             (Optional)
--- @field [1] string | nil              (Optional)
--- @field [2] number | nil              (Optional)


--- @shape UnitAISettings
--- https://wiki.factorio.com/Types/UnitAISettings
--- @field destroy_when_commands_fail boolean | nil (Optional)
--- @field allow_try_return_to_spawner boolean | nil (Optional)
--- @field do_separation boolean | nil   (Optional)
--- @field path_resolution_modifier int8 | nil (Optional)


--- @shape ModuleSpecification
--- https://wiki.factorio.com/Types/ModuleSpecification
--- @field module_slots ItemStackIndex | nil (Optional)
--- @field module_info_max_icons_per_row uint8 | nil (Optional)
--- @field module_info_max_icon_rows uint8 | nil (Optional)
--- @field module_info_icon_shift Vector | nil (Optional)
--- @field module_info_icon_scale float | nil (Optional)
--- @field module_info_separation_multiplier float | nil (Optional)
--- @field module_info_multi_row_initial_height_modifier float | nil (Optional)


--- @shape RailPieceLayers
--- https://wiki.factorio.com/Types/RailPieceLayers
--- @field metals SpriteVariations      
--- @field backplates SpriteVariations  
--- @field ties SpriteVariations        
--- @field stone_path SpriteVariations  
--- @field stone_path_background SpriteVariations | nil (Optional)
--- @field segment_visualisation_middle Sprite | nil (Optional)
--- @field segment_visualisation_ending_front Sprite | nil (Optional)
--- @field segment_visualisation_ending_back Sprite | nil (Optional)
--- @field segment_visualisation_continuing_front Sprite | nil (Optional)
--- @field segment_visualisation_continuing_back Sprite | nil (Optional)


--- @shape Sprite8Way
--- https://wiki.factorio.com/Types/Sprite8Way
--- @field north Sprite                 
--- @field north_east Sprite            
--- @field east Sprite                  
--- @field south_east Sprite            
--- @field south Sprite                 
--- @field south_west Sprite            
--- @field west Sprite                  
--- @field north_west Sprite            
--- @field sheets SpriteNWaySheet       
--- @field sheet SpriteNWaySheet        


--- @shape FluidBox
--- https://wiki.factorio.com/Types/FluidBox
--- @field pipe_connections PipeConnectionDefinition[]
--- @field base_area double | nil        (Optional)
--- @field base_level double | nil       (Optional)
--- @field height double | nil           (Optional)
--- @field filter string | nil           (Optional)
--- @field render_layer RenderLayer | nil (Optional)
--- @field pipe_covers Sprite4Way | nil  (Optional)
--- @field pipe_picture Sprite4Way | nil (Optional)
--- @field minimum_temperature double | nil (Optional)
--- @field maximum_temperature double | nil (Optional)
--- @field production_type string | nil  (Optional)
--- @field secondary_draw_order int8 | nil (Optional)
--- @field secondary_draw_orders int8[] | nil (Optional)


--- @shape DirectTriggerItem
--- https://wiki.factorio.com/Types/DirectTriggerItem


--- @shape Animation
--- https://wiki.factorio.com/Types/Animation
--- @field layers Animation[] | nil      (Optional)
--- @field hr_version Animation | nil    (Optional)
--- @field filename FileName | nil       (Optional)
--- @field priority SpritePriority | nil (Optional)
--- @field flags SpriteFlags | nil       (Optional)
--- @field size SpriteSizeType | SpriteSizeType[] | nil (Optional)
--- @field width SpriteSizeType | nil    (Optional)
--- @field height SpriteSizeType | nil   (Optional)
--- @field x SpriteSizeType | nil        (Optional)
--- @field y SpriteSizeType | nil        (Optional)
--- @field position SpriteSizeType[] | nil (Optional)
--- @field shift Vector | nil            (Optional)
--- @field scale double | nil            (Optional)
--- @field draw_as_shadow boolean | nil  (Optional)
--- @field draw_as_glow boolean | nil    (Optional)
--- @field draw_as_light boolean | nil   (Optional)
--- @field mipmap_count uint8 | nil      (Optional)
--- @field apply_runtime_tint boolean | nil (Optional)
--- @field tint Color | nil              (Optional)
--- @field blend_mode BlendMode | nil    (Optional)
--- @field load_in_minimal_mode boolean | nil (Optional)
--- @field premul_alpha boolean | nil    (Optional)
--- @field generate_sdf boolean | nil    (Optional)
--- @field run_mode string | nil         (Optional)
--- @field frame_count uint32 | nil      (Optional)
--- @field line_length uint32 | nil      (Optional)
--- @field animation_speed float | nil   (Optional)
--- @field max_advance float | nil       (Optional)
--- @field repeat_count uint8 | nil      (Optional)
--- @field dice uint8 | nil              (Optional)
--- @field dice_x uint8 | nil            (Optional)
--- @field dice_y uint8 | nil            (Optional)
--- @field frame_sequence AnimationFrameSequence | nil (Optional)
--- @field stripes Stripe[] | nil        (Optional)


--- @shape Sprite
--- https://wiki.factorio.com/Types/Sprite
--- @field filename FileName | nil       (Optional)
--- @field layers Sprite[] | nil         (Optional)
--- @field hr_version Sprite | nil       (Optional)
--- @field slice SpriteSizeType | nil    (Optional)
--- @field slice_x SpriteSizeType | nil  (Optional)
--- @field slice_y SpriteSizeType | nil  (Optional)
--- @field priority SpritePriority | nil (Optional)
--- @field flags SpriteFlags | nil       (Optional)
--- @field size SpriteSizeType | SpriteSizeType[] | nil (Optional)
--- @field width SpriteSizeType | nil    (Optional)
--- @field height SpriteSizeType | nil   (Optional)
--- @field x SpriteSizeType | nil        (Optional)
--- @field y SpriteSizeType | nil        (Optional)
--- @field position SpriteSizeType[] | nil (Optional)
--- @field shift Vector | nil            (Optional)
--- @field scale double | nil            (Optional)
--- @field draw_as_shadow boolean | nil  (Optional)
--- @field draw_as_glow boolean | nil    (Optional)
--- @field draw_as_light boolean | nil   (Optional)
--- @field mipmap_count uint8 | nil      (Optional)
--- @field apply_runtime_tint boolean | nil (Optional)
--- @field tint Color | nil              (Optional)
--- @field blend_mode BlendMode | nil    (Optional)
--- @field load_in_minimal_mode boolean | nil (Optional)
--- @field premul_alpha boolean | nil    (Optional)
--- @field generate_sdf boolean | nil    (Optional)


--- @shape LineTriggerItem
--- https://wiki.factorio.com/Types/LineTriggerItem
--- @field range double                 
--- @field width double                 
--- @field range_effects TriggerEffect | nil (Optional)


--- @shape SpiderVehicleGraphicsSet
--- https://wiki.factorio.com/Types/SpiderVehicleGraphicsSet
--- @field base_animation RotatedAnimation | nil (Optional)
--- @field shadow_base_animation RotatedAnimation | nil (Optional)
--- @field animation RotatedAnimation | nil (Optional)
--- @field shadow_animation RotatedAnimation | nil (Optional)
--- @field base_render_layer RenderLayer | nil (Optional)
--- @field render_layer RenderLayer | nil (Optional)
--- @field autopilot_destination_visualisation_render_layer RenderLayer | nil (Optional)
--- @field light LightDefinition | nil   (Optional)
--- @field eye_light LightDefinition | nil (Optional)
--- @field autopilot_destination_on_map_visualisation Animation | nil (Optional)
--- @field autopilot_destination_queue_on_map_visualisation Animation | nil (Optional)
--- @field autopilot_destination_visualisation Animation | nil (Optional)
--- @field autopilot_destination_queue_visualisation Animation | nil (Optional)
--- @field autopilot_path_visualisation_line_width float | nil (Optional)
--- @field autopilot_path_visualisation_on_map_line_width float | nil (Optional)
--- @field light_positions Vector[][] | nil (Optional)


--- @shape Sound
--- https://wiki.factorio.com/Types/Sound
--- @field aggregation table<string, number | boolean> | nil (Optional)
--- @field allow_random_repeat boolean | nil (Optional)
--- @field audible_distance_modifier double | nil (Optional)
--- @field variations table<string, FileName | number | boolean>[] | nil (Optional)
--- @field filename FileName | nil       (Optional)
--- @field volume float | nil            (Optional)
--- @field preload boolean | nil         (Optional)
--- @field speed float | nil             (Optional)
--- @field min_speed float | nil         (Optional)
--- @field max_speed float | nil         (Optional)


--- @shape CreateDecorativesTriggerEffectItem
--- https://wiki.factorio.com/Types/CreateDecorativesTriggerEffectItem
--- @field decorative string            
--- @field spawn_max uint16             
--- @field spawn_min_radius float       
--- @field spawn_max_radius float       
--- @field spawn_min uint16 | nil        (Optional)
--- @field radius_curve float | nil      (Optional)
--- @field apply_projection boolean | nil (Optional)
--- @field spread_evenly boolean | nil   (Optional)


--- @shape OrientedCliffPrototype
--- https://wiki.factorio.com/Types/OrientedCliffPrototype
--- @field collision_bounding_box BoundingBox
--- @field pictures table<string, Sprite | Sprite4Way | Sprite8Way | Animation | RailPieceLayers | SpriteVariations>
--- @field fill_volume uint32           


--- @shape FootprintParticle
--- https://wiki.factorio.com/Types/FootprintParticle
--- @field tiles string[]               
--- @field particle_name string | nil    (Optional)
--- @field use_as_default boolean | nil  (Optional)


--- @shape InterruptibleSound
--- https://wiki.factorio.com/Types/InterruptibleSound
--- @field sound Sound                  
--- @field fade_ticks uint32 | nil       (Optional)


--- @shape WorkingSound
--- https://wiki.factorio.com/Types/WorkingSound
--- @field sound Sound                  
--- @field apparent_volume float | nil   (Optional)
--- @field max_sounds_per_type uint8 | nil (Optional)
--- @field match_progress_to_activity boolean | nil (Optional)
--- @field match_volume_to_activity boolean | nil (Optional)
--- @field match_speed_to_activity boolean | nil (Optional)
--- @field persistent boolean | nil      (Optional)
--- @field use_doppler_shift boolean | nil (Optional)
--- @field audible_distance_modifier double | nil (Optional)
--- @field probability double | nil      (Optional)
--- @field fade_in_ticks uint32 | nil    (Optional)
--- @field fade_out_ticks uint32 | nil   (Optional)
--- @field idle_sound Sound | nil        (Optional)
--- @field activate_sound Sound | nil    (Optional)
--- @field deactivate_sound Sound | nil  (Optional)


--- @shape Animation4Way
--- https://wiki.factorio.com/Types/Animation4Way
--- @field north Animation              
--- @field east Animation               
--- @field south Animation              
--- @field west Animation               


--- @shape AnimationVariations
--- https://wiki.factorio.com/Types/AnimationVariations
--- @field sheet Animation              
--- @field sheets Animation[]           


--- @shape PlaceAsTile
--- https://wiki.factorio.com/Types/PlaceAsTile
--- @field result string                
--- @field condition CollisionMask      
--- @field condition_size int32         


--- @shape CreateTrivialSmokeEffectItem
--- https://wiki.factorio.com/Types/CreateTrivialSmokeEffectItem
--- @field smoke_name string            
--- @field offset_deviation BoundingBox | nil (Optional)
--- @field offsets Vector[] | nil        (Optional)
--- @field initial_height float | nil    (Optional)
--- @field max_radius float | nil        (Optional)
--- @field speed Vector | nil            (Optional)
--- @field speed_multiplier float | nil  (Optional)
--- @field speed_multiplier_deviation float | nil (Optional)
--- @field starting_frame float | nil    (Optional)
--- @field starting_frame_deviation float | nil (Optional)
--- @field starting_frame_speed float | nil (Optional)
--- @field starting_frame_speed_deviation float | nil (Optional)
--- @field speed_from_center float | nil (Optional)
--- @field speed_from_center_deviation float | nil (Optional)


--- @shape MiningDrillGraphicsSet
--- https://wiki.factorio.com/Types/MiningDrillGraphicsSet
--- @field animation Animation4Way | nil (Optional)
--- @field idle_animation Animation4Way | nil (Optional)
--- @field always_draw_idle_animation boolean | nil (Optional)
--- @field default_recipe_tint table<string, Color> | nil (Optional)
--- @field working_visualisations WorkingVisualisation | nil (Optional)
--- @field shift_animation_waypoints table<string, Vector[]> | nil (Optional)
--- @field shift_animation_waypoint_stop_duration uint16 | nil (Optional)
--- @field shift_animation_transition_duration uint16 | nil (Optional)
--- @field status_colors table<string, Color> | nil (Optional)
--- @field drilling_vertical_movement_duration uint16 | nil (Optional)
--- @field animation_progress float | nil (Optional)
--- @field max_animation_progress float | nil (Optional)
--- @field min_animation_progress float | nil (Optional)
--- @field circuit_connector_layer RenderLayer | RenderLayer[] | nil (Optional)
--- @field circuit_connector_secondary_draw_order int8 | int8[] | nil (Optional)


--- @shape AttackReactionItem
--- https://wiki.factorio.com/Types/AttackReactionItem
--- @field range float                  
--- @field action Trigger | nil          (Optional)
--- @field reaction_modifier float | nil (Optional)
--- @field damage_type string | nil      (Optional)


--- @shape PumpConnectorGraphics
--- https://wiki.factorio.com/Types/PumpConnectorGraphics
--- @field north table[]                
--- @field east table[]                 
--- @field south table[]                
--- @field west table[]                 


--- @shape Stripe
--- https://wiki.factorio.com/Types/Stripe
--- @field width_in_frames uint32       
--- @field height_in_frames uint32      
--- @field filename FileName            
--- @field x uint32 | nil                (Optional)
--- @field y uint32 | nil                (Optional)


--- @shape MapGenPreset
--- https://wiki.factorio.com/Types/MapGenPreset
--- @field order Order                  
--- @field default boolean | nil         (Optional)
--- @field basic_settings table | nil    (Optional)
--- @field advanced_settings table | nil (Optional)


--- @shape DamagePrototype
--- https://wiki.factorio.com/Types/DamagePrototype


--- @shape AreaTriggerItem
--- https://wiki.factorio.com/Types/AreaTriggerItem
--- @field radius double                
--- @field trigger_from_target boolean | nil (Optional)
--- @field target_entities boolean | nil (Optional)
--- @field show_in_tooltip boolean | nil (Optional)
--- @field collision_mode string | nil   (Optional)


--- @shape TransportBeltConnectorFrame
--- https://wiki.factorio.com/Types/TransportBeltConnectorFrame
--- @field frame_main AnimationVariations
--- @field frame_shadow AnimationVariations
--- @field frame_main_scanner Animation 
--- @field frame_main_scanner_movement_speed float
--- @field frame_main_scanner_horizontal_start_shift Vector
--- @field frame_main_scanner_horizontal_end_shift Vector
--- @field frame_main_scanner_horizontal_y_scale float
--- @field frame_main_scanner_horizontal_rotation RealOrientation
--- @field frame_main_scanner_vertical_start_shift Vector
--- @field frame_main_scanner_vertical_end_shift Vector
--- @field frame_main_scanner_vertical_y_scale float
--- @field frame_main_scanner_vertical_rotation RealOrientation
--- @field frame_main_scanner_cross_horizontal_start_shift Vector
--- @field frame_main_scanner_cross_horizontal_end_shift Vector
--- @field frame_main_scanner_cross_horizontal_y_scale float
--- @field frame_main_scanner_cross_horizontal_rotation RealOrientation
--- @field frame_main_scanner_cross_vertical_start_shift Vector
--- @field frame_main_scanner_cross_vertical_end_shift Vector
--- @field frame_main_scanner_cross_vertical_y_scale float
--- @field frame_main_scanner_cross_vertical_rotation RealOrientation
--- @field frame_main_scanner_nw_ne Animation
--- @field frame_main_scanner_sw_se Animation
--- @field frame_back_patch SpriteVariations | nil (Optional)
--- @field frame_front_patch SpriteVariations | nil (Optional)


--- @shape Effect
--- https://wiki.factorio.com/Types/Effect
--- @field consumption table | nil       (Optional)
--- @field speed table | nil             (Optional)
--- @field productivity table | nil      (Optional)
--- @field pollution table<string, number | boolean> | nil (Optional)


--- @shape SpiderLegGraphicsSet
--- https://wiki.factorio.com/Types/SpiderLegGraphicsSet
--- @field joint_turn_offset float | nil (Optional)
--- @field joint Sprite | nil            (Optional)
--- @field joint_shadow Sprite | nil     (Optional)
--- @field upper_part SpiderLegPart | nil (Optional)
--- @field lower_part SpiderLegPart | nil (Optional)
--- @field upper_part_shadow SpiderLegPart | nil (Optional)
--- @field lower_part_shadow SpiderLegPart | nil (Optional)
--- @field upper_part_water_reflection SpiderLegPart | nil (Optional)
--- @field lower_part_water_reflection SpiderLegPart | nil (Optional)


--- @shape CreateParticleTriggerEffectItem
--- https://wiki.factorio.com/Types/CreateParticleTriggerEffectItem
--- @field particle_name string         
--- @field initial_height float         
--- @field offset_deviation BoundingBox | nil (Optional)
--- @field show_in_tooltip boolean | nil (Optional)
--- @field tile_collision_mask CollisionMask | nil (Optional)
--- @field offsets Vector[] | nil        (Optional)
--- @field initial_height_deviation float | nil (Optional)
--- @field initial_vertical_speed float | nil (Optional)
--- @field initial_vertical_speed_deviation float | nil (Optional)
--- @field speed_from_center float | nil (Optional)
--- @field speed_from_center_deviation float | nil (Optional)
--- @field frame_speed float | nil       (Optional)
--- @field frame_speed_deviation float | nil (Optional)
--- @field tail_length uint8 | nil       (Optional)
--- @field tail_length_deviation uint8 | nil (Optional)
--- @field tail_width float | nil        (Optional)
--- @field rotate_offsets boolean | nil  (Optional)


--- @shape WirePosition
--- https://wiki.factorio.com/Types/WirePosition
--- @field copper Vector | nil           (Optional)
--- @field red Vector | nil              (Optional)
--- @field green Vector | nil            (Optional)


--- @shape LightDefinition
--- https://wiki.factorio.com/Types/LightDefinition
--- @field type string                  
--- @field intensity float              
--- @field size float                   
--- @field source_orientation_offset RealOrientation | nil (Optional)
--- @field add_perspective boolean | nil (Optional)
--- @field shift Vector | nil            (Optional)
--- @field color Color | nil             (Optional)
--- @field minimum_darkness float | nil  (Optional)


--- @shape SignalColorMapping
--- https://wiki.factorio.com/Types/SignalColorMapping
--- @field type string                  
--- @field name string                  
--- @field color Color                  


--- @shape CharacterArmorAnimation
--- https://wiki.factorio.com/Types/CharacterArmorAnimation
--- @field idle RotatedAnimation        
--- @field idle_with_gun RotatedAnimation
--- @field running RotatedAnimation     
--- @field running_with_gun RotatedAnimation
--- @field mining_with_tool RotatedAnimation
--- @field flipped_shadow_running_with_gun RotatedAnimation | nil (Optional)
--- @field armors string[] | nil         (Optional)


--- @shape RotatedSprite
--- https://wiki.factorio.com/Types/RotatedSprite
--- @field direction_count uint16       
--- @field filename FileName | nil       (Optional)
--- @field filenames FileName[] | nil    (Optional)
--- @field layers RotatedSprite[] | nil  (Optional)
--- @field hr_version RotatedSprite | nil (Optional)
--- @field slice SpriteSizeType | nil    (Optional)
--- @field slice_x SpriteSizeType | nil  (Optional)
--- @field slice_y SpriteSizeType | nil  (Optional)
--- @field priority SpritePriority | nil (Optional)
--- @field flags SpriteFlags | nil       (Optional)
--- @field size SpriteSizeType | SpriteSizeType[] | nil (Optional)
--- @field width SpriteSizeType | nil    (Optional)
--- @field height SpriteSizeType | nil   (Optional)
--- @field x SpriteSizeType | nil        (Optional)
--- @field y SpriteSizeType | nil        (Optional)
--- @field position SpriteSizeType[] | nil (Optional)
--- @field shift Vector | nil            (Optional)
--- @field scale double | nil            (Optional)
--- @field draw_as_shadow boolean | nil  (Optional)
--- @field draw_as_glow boolean | nil    (Optional)
--- @field draw_as_light boolean | nil   (Optional)
--- @field mipmap_count uint8 | nil      (Optional)
--- @field apply_runtime_tint boolean | nil (Optional)
--- @field tint Color | nil              (Optional)
--- @field blend_mode BlendMode | nil    (Optional)
--- @field load_in_minimal_mode boolean | nil (Optional)
--- @field premul_alpha boolean | nil    (Optional)
--- @field generate_sdf boolean | nil    (Optional)
--- @field axially_symmetrical boolean | nil (Optional)
--- @field back_equals_front boolean | nil (Optional)
--- @field apply_projection boolean | nil (Optional)
--- @field counterclockwise boolean | nil (Optional)
--- @field line_length uint32 | nil      (Optional)
--- @field allow_low_quality_rotation boolean | nil (Optional)
--- @field lines_per_file uint64 | nil   (Optional)


--- @shape WaterReflectionDefinition
--- https://wiki.factorio.com/Types/WaterReflectionDefinition
--- @field pictures table<string, Sprite | Sprite4Way | Sprite8Way | Animation | RailPieceLayers | SpriteVariations> | nil (Optional)
--- @field orientation_to_variation boolean | nil (Optional)
--- @field rotate boolean | nil          (Optional)


--- @shape Resistances
--- https://wiki.factorio.com/Types/Resistances
--- @field type string                  
--- @field decrease float | nil          (Optional)
--- @field percent float | nil           (Optional)


--- @shape WorkingVisualisation
--- https://wiki.factorio.com/Types/WorkingVisualisation
--- @field render_layer RenderLayer | nil (Optional)
--- @field fadeout boolean | nil         (Optional)
--- @field synced_fadeout boolean | nil  (Optional)
--- @field constant_speed boolean | nil  (Optional)
--- @field always_draw boolean | nil     (Optional)
--- @field animated_shift boolean | nil  (Optional)
--- @field align_to_waypoint boolean | nil (Optional)
--- @field secondary_draw_order int8 | nil (Optional)
--- @field draw_as_sprite boolean | nil  (Optional)
--- @field draw_as_light boolean | nil   (Optional)
--- @field light LightDefinition | nil   (Optional)
--- @field effect string | nil           (Optional)
--- @field apply_recipe_tint string | nil (Optional)
--- @field apply_tint string | nil       (Optional)
--- @field north_animation Animation | nil (Optional)
--- @field west_animation Animation | nil (Optional)
--- @field south_animation Animation | nil (Optional)
--- @field east_animation Animation | nil (Optional)
--- @field animation Animation | nil     (Optional)
--- @field north_position Vector | nil   (Optional)
--- @field west_position Vector | nil    (Optional)
--- @field south_position Vector | nil   (Optional)
--- @field east_position Vector | nil    (Optional)


--- @shape BeaconGraphicsSet
--- https://wiki.factorio.com/Types/BeaconGraphicsSet
--- @field draw_animation_when_idle boolean | nil (Optional)
--- @field draw_light_when_idle boolean | nil (Optional)
--- @field random_animation_offset boolean | nil (Optional)
--- @field module_icons_suppressed boolean | nil (Optional)
--- @field base_layer RenderLayer | nil  (Optional)
--- @field animation_layer RenderLayer | nil (Optional)
--- @field top_layer RenderLayer | nil   (Optional)
--- @field animation_progress float | nil (Optional)
--- @field min_animation_progress float | nil (Optional)
--- @field max_animation_progress float | nil (Optional)
--- @field apply_module_tint string | nil (Optional)
--- @field apply_module_tint_to_light string | nil (Optional)
--- @field no_modules_tint Color | nil   (Optional)
--- @field animation_list AnimationElement[] | nil (Optional)
--- @field light LightDefinition | nil   (Optional)
--- @field module_visualisations BeaconModuleVisualizations[] | nil (Optional)
--- @field module_tint_mode string | nil (Optional)


--- @shape EquipmentShape
--- https://wiki.factorio.com/Types/EquipmentShape
--- @field width uint32                 
--- @field height uint32                
--- @field type string                  
--- @field points uint32[][] | nil       (Optional)


--- @shape SpriteNWaySheet
--- https://wiki.factorio.com/Types/SpriteNWaySheet
--- @field filename FileName            
--- @field frames uint32 | nil           (Optional)
--- @field hr_version SpriteNWaySheet | nil (Optional)
--- @field priority SpritePriority | nil (Optional)
--- @field flags SpriteFlags | nil       (Optional)
--- @field size SpriteSizeType | SpriteSizeType[] | nil (Optional)
--- @field width SpriteSizeType | nil    (Optional)
--- @field height SpriteSizeType | nil   (Optional)
--- @field x SpriteSizeType | nil        (Optional)
--- @field y SpriteSizeType | nil        (Optional)
--- @field position SpriteSizeType[] | nil (Optional)
--- @field shift Vector | nil            (Optional)
--- @field scale double | nil            (Optional)
--- @field draw_as_shadow boolean | nil  (Optional)
--- @field draw_as_glow boolean | nil    (Optional)
--- @field draw_as_light boolean | nil   (Optional)
--- @field mipmap_count uint8 | nil      (Optional)
--- @field apply_runtime_tint boolean | nil (Optional)
--- @field tint Color | nil              (Optional)
--- @field blend_mode BlendMode | nil    (Optional)
--- @field load_in_minimal_mode boolean | nil (Optional)
--- @field premul_alpha boolean | nil    (Optional)
--- @field generate_sdf boolean | nil    (Optional)


--- @shape TileTransitionSprite
--- https://wiki.factorio.com/Types/TileTransitionSprite
--- @field count uint32                 
--- @field picture FileName             
--- @field hr_version TileTransitionSprite | nil (Optional)
--- @field tall boolean | nil            (Optional)
--- @field scale float | nil             (Optional)
--- @field x SpriteSizeType | nil        (Optional)
--- @field y SpriteSizeType | nil        (Optional)


--- @shape TileSprite
--- https://wiki.factorio.com/Types/TileSprite
--- @field count uint32                 
--- @field picture FileName             
--- @field hr_version TileSprite | nil   (Optional)
--- @field scale float | nil             (Optional)
--- @field x SpriteSizeType | nil        (Optional)
--- @field y SpriteSizeType | nil        (Optional)
--- @field line_length uint32 | nil      (Optional)


--- @shape BeaconModuleVisualizations
--- https://wiki.factorio.com/Types/BeaconModuleVisualizations
--- @field art_style string             
--- @field use_for_empty_slots boolean | nil (Optional)
--- @field tier_offset int32 | nil       (Optional)
--- @field slots BeaconModuleVisualization[][] | nil (Optional)


--- @shape PipeConnectionDefinition
--- https://wiki.factorio.com/Types/PipeConnectionDefinition
--- @field position Vector              
--- @field positions Vector[]           
--- @field max_underground_distance uint32 | nil (Optional)
--- @field type string | nil             (Optional)


--- @shape SpiderLegPart
--- https://wiki.factorio.com/Types/SpiderLegPart
--- @field top_end Sprite | nil          (Optional)
--- @field middle Sprite | nil           (Optional)
--- @field bottom_end Sprite | nil       (Optional)
--- @field middle_offset_from_top float | nil (Optional)
--- @field middle_offset_from_bottom float | nil (Optional)
--- @field top_end_length float | nil    (Optional)
--- @field bottom_end_length float | nil (Optional)


--- @shape AnimationElement
--- https://wiki.factorio.com/Types/AnimationElement
--- @field render_layer RenderLayer | nil (Optional)
--- @field secondary_draw_order int8 | nil (Optional)
--- @field draw_as_sprite boolean | nil  (Optional)
--- @field draw_as_light boolean | nil   (Optional)
--- @field apply_tint boolean | nil      (Optional)
--- @field always_draw boolean | nil     (Optional)
--- @field animation Animation | nil     (Optional)


--- @shape BeaconModuleVisualization
--- https://wiki.factorio.com/Types/BeaconModuleVisualization
--- @field has_empty_slot boolean | nil  (Optional)
--- @field draw_as_light boolean | nil   (Optional)
--- @field draw_as_sprite boolean | nil  (Optional)
--- @field secondary_draw_order int8 | nil (Optional)
--- @field apply_module_tint string | nil (Optional)
--- @field render_layer RenderLayer | nil (Optional)
--- @field pictures table<string, Sprite | Sprite4Way | Sprite8Way | Animation | RailPieceLayers | SpriteVariations> | nil (Optional)


--- @shape RecipeData
--- https://wiki.factorio.com/Types/RecipeData
--- @field ingredients IngredientPrototype
--- @field result string | nil           (Optional)
--- @field result_count uint32 | nil     (Optional)
--- @field results ProductPrototype[] | nil (Optional)
--- @field energy_required double | nil  (Optional)
--- @field emissions_multiplier double | nil (Optional)
--- @field requester_paste_multiplier uint32 | nil (Optional)
--- @field overload_multiplier uint32 | nil (Optional)
--- @field allow_inserter_overload boolean | nil (Optional)
--- @field enabled boolean | nil         (Optional)
--- @field hidden boolean | nil          (Optional)
--- @field hide_from_stats boolean | nil (Optional)
--- @field hide_from_player_crafting boolean | nil (Optional)
--- @field allow_decomposition boolean | nil (Optional)
--- @field allow_as_intermediate boolean | nil (Optional)
--- @field allow_intermediates boolean | nil (Optional)
--- @field always_show_made_in boolean | nil (Optional)
--- @field show_amount_in_title boolean | nil (Optional)
--- @field always_show_products boolean | nil (Optional)
--- @field unlock_results boolean | nil  (Optional)
--- @field main_product string | nil     (Optional)


--- @shape TechnologyUnit
--- https://wiki.factorio.com/Types/TechnologyUnit
--- @field count boolean | nil           (Optional)
--- @field count_formula string | nil    (Optional)
--- @field time double                  
--- @field ingredients IngredientPrototype[]


--- @shape TechnologyData
--- https://wiki.factorio.com/Types/TechnologyData
--- @field upgrade boolean | nil         (Optional)
--- @field enabled boolean | nil         (Optional)
--- @field hidden boolean | nil          (Optional)
--- @field visible_when_disabled boolean | nil (Optional)
--- @field ignore_tech_cost_multiplier boolean | nil (Optional)
--- @field unit TechnologyUnit          
--- @field max_level uint32 | string | nil (Optional)
--- @field prerequisites string[] | nil  (Optional)
--- @field effects ModifierPrototype[] | nil (Optional)


--- @shape ModifierPrototype
--- https://wiki.factorio.com/Types/ModifierPrototype
--- @field type string                  
--- @field icons FileName | nil          (Optional)
--- @field icon IconData[] | nil         (Optional)
--- @field icon_size SpriteSizeType | nil (Optional)
--- @field icon_mipmaps uint8 | nil      (Optional)


--- @shape DaytimeColor
--- https://wiki.factorio.com/Types/DaytimeColor
--- @field [1] double                   
--- @field [2] FileName | 'identity'    


--- @shape EnergySource
--- https://wiki.factorio.com/Types/EnergySource
--- @field type 'electric' | 'fluid' | 'burner' | 'heat' | 'void'
--- @field emissions_per_minute double | nil (Optional)
--- @field render_no_power_icon boolean | nil (Optional)
--- @field render_no_network_icon boolean | nil (Optional)


--- @shape ElectricEnergySource : EnergySource
--- https://wiki.factorio.com/Types/ElectricEnergySource
--- @field buffer_capacity Energy | nil  (Optional)
--- @field usage_priority ElectricUsagePriority
--- @field input_flow_limit Energy | nil (Optional)
--- @field output_flow_limit Energy | nil (Optional)
--- @field drain Energy | nil            (Optional)


--- @shape Burner : EnergySource
--- https://wiki.factorio.com/Types/Burner
--- @field fuel_inventory_size ItemStackIndex
--- @field burnt_inventory_size ItemStackIndex | nil (Optional)
--- @field smoke SmokeSource[] | nil     (Optional)
--- @field light_flicker LightFlickeringDefinition | nil (Optional)
--- @field effectivity double | nil      (Optional)
--- @field fuel_category string | nil    (Optional)
--- @field fuel_categories string[] | nil (Optional)


--- @shape HeatEnergySource : EnergySource
--- https://wiki.factorio.com/Types/HeatEnergySource
--- @field max_temperature double       
--- @field default_temperature double | nil (Optional)
--- @field specific_heat Energy         
--- @field max_transfer Energy          
--- @field min_temperature_gradient double | nil (Optional)
--- @field min_working_temperature double | nil (Optional)
--- @field minimum_glow_temperature float | nil (Optional)
--- @field pipe_covers Sprite4Way | nil  (Optional)
--- @field heat_pipe_covers Sprite4Way | nil (Optional)
--- @field heat_picture Sprite4Way | nil (Optional)
--- @field heat_glow Sprite4Way | nil    (Optional)
--- @field connections HeatConnection[] | nil (Optional)


--- @shape VoidEnergySource : EnergySource
--- https://wiki.factorio.com/Types/VoidEnergySource


--- @shape FluidEnergySource : EnergySource
--- https://wiki.factorio.com/Types/FluidEnergySource
--- @field fluid_box FluidBox           
--- @field smoke SmokeSource[] | nil     (Optional)
--- @field light_flicker LightFlickeringDefinition | nil (Optional)
--- @field effectivity double | nil      (Optional)
--- @field burns_fluid boolean | nil     (Optional)
--- @field scale_fluid_usage boolean | nil (Optional)
--- @field fluid_usage_per_tick double | nil (Optional)
--- @field maximum_temperature double | nil (Optional)


--- @shape Vector3D
--- https://wiki.factorio.com/Types/Vector3D
--- @field x float | nil                 (Optional)
--- @field y float | nil                 (Optional)
--- @field z float | nil                 (Optional)
--- @field [1] float | nil               (Optional)
--- @field [2] float | nil               (Optional)
--- @field [3] float | nil               (Optional)


--- @shape ItemToPlace
--- https://wiki.factorio.com/Types/ItemToPlace
--- @field item string                  
--- @field count uint32                 


--- @shape WireConnectionPoint
--- https://wiki.factorio.com/Types/WireConnectionPoint
--- @field wire WirePosition            
--- @field shadow WirePosition          


--- @shape SignalIDConnector
--- https://wiki.factorio.com/Types/SignalIDConnector
--- @field type string                  
--- @field name string                  


--- @shape SpiderEnginePrototype
--- https://wiki.factorio.com/Types/SpiderEnginePrototype
--- @field military_target string       
--- @field legs SpiderLegSpecification | SpiderLegSpecification[]


--- @shape ExplosionDefinition
--- https://wiki.factorio.com/Types/ExplosionDefinition
--- @field name string                  
--- @field offset Vector | nil           (Optional)


--- @shape TipTrigger
--- https://wiki.factorio.com/Types/TipTrigger
--- @field type string                  
--- @field [string] Any | nil            (Optional)


--- @shape Sprite4Way : Sprite
--- https://wiki.factorio.com/Types/Sprite4Way
--- @field north Sprite | nil            (Optional)
--- @field east Sprite | nil             (Optional)
--- @field south Sprite | nil            (Optional)
--- @field west Sprite | nil             (Optional)
--- @field sheets SpriteNWaySheet | nil  (Optional)
--- @field sheet SpriteNWaySheet | nil   (Optional)


--- @shape ItemIngredientPrototype
--- https://wiki.factorio.com/Types/ItemIngredientPrototype
--- @field type "item" | nil             (Optional)
--- @field name string | nil             (Optional)
--- @field amount uint16 | nil           (Optional)
--- @field [1] string | nil              (Optional)
--- @field [2] uint16 | nil              (Optional)
--- @field catalyst_amount uint16 | nil  (Optional)


--- @shape ItemProductPrototype
--- https://wiki.factorio.com/Types/ItemProductPrototype
--- @field type "item" | nil             (Optional)
--- @field name string | nil             (Optional)
--- @field amount uint16 | nil           (Optional)
--- @field [1] string | nil              (Optional)
--- @field [2] uint16 | nil              (Optional)
--- @field probability double | nil      (Optional)
--- @field amount_min uint16 | nil       (Optional)
--- @field amount_max uint16 | nil       (Optional)
--- @field catalyst_amount uint16 | nil  (Optional)


--- @shape FluidProductPrototype
--- https://wiki.factorio.com/Types/FluidProductPrototype
--- @field type string                  


--- @alias ItemCountType uint32
--- https://wiki.factorio.com/Types/ItemCountType


--- @alias IngredientPrototype ItemIngredientPrototype | FluidIngredientPrototype
--- https://wiki.factorio.com/Types/IngredientPrototype


--- @alias ProductPrototype ItemProductPrototype | FluidProductPrototype
--- https://wiki.factorio.com/Types/ProductPrototype


--- @alias Trigger DirectTriggerItem | AreaTriggerItem | LineTriggerItem | ClusterTriggerItem
--- https://wiki.factorio.com/Types/Trigger


--- @alias RotatedAnimationVariations RotatedAnimation | RotatedAnimation[]
--- https://wiki.factorio.com/Types/RotatedAnimationVariations


--- @alias AnimationFrameSequence uint16[]
--- https://wiki.factorio.com/Types/AnimationFrameSequence


--- @alias FootstepTriggerEffectList CreateParticleTriggerEffectItem[]
--- https://wiki.factorio.com/Types/FootstepTriggerEffectList


--- @alias CursorBoxType string
--- https://wiki.factorio.com/Types/CursorBoxType


--- @alias FileName string
--- https://wiki.factorio.com/Types/FileName


--- @alias EffectTypeLimitation string[]
--- https://wiki.factorio.com/Types/EffectTypeLimitation


--- @alias SpriteSizeType int16
--- https://wiki.factorio.com/Types/SpriteSizeType


--- @alias Order string
--- https://wiki.factorio.com/Types/Order


--- @alias MaterialAmountType double
--- https://wiki.factorio.com/Types/MaterialAmountType


--- @alias AttackReaction AttackReactionItem[]
--- https://wiki.factorio.com/Types/AttackReaction


--- @alias SpritePriority string
--- https://wiki.factorio.com/Types/SpritePriority


--- @alias Energy string
--- https://wiki.factorio.com/Types/Energy


--- @alias TriggerEffect TriggerEffectItem | TriggerEffectItem[]
--- https://wiki.factorio.com/Types/TriggerEffect


--- @alias TipStatus 'locked' | 'optional' | 'dependencies-not-met' | 'unlocked' | 'suggested' | 'not-to-be-suggested' | 'completed-without-tutorial' | 'completed'
--- https://wiki.factorio.com/Types/TipStatus


--- @alias ItemStackIndex uint16
--- https://wiki.factorio.com/Types/ItemStackIndex


--- @alias SpriteFlags string[]
--- https://wiki.factorio.com/Types/SpriteFlags


--- @alias DaytimeColorLookupTable DaytimeColor[]
--- https://wiki.factorio.com/Types/DaytimeColorLookupTable


--- @alias ConsumingType 'none' | 'game-only'
--- https://wiki.factorio.com/Types/ConsumingType


--- @alias BlendMode 'normal' | 'additive' | 'additive-soft' | 'multiplicative' | 'overwrite'
--- https://wiki.factorio.com/Types/BlendMode


--- @alias ElectricUsagePriority 'primary-input' | 'primary-output' | 'secondary-input' | 'secondary-output' | 'tertiary' | 'solar' | 'lamp'
--- https://wiki.factorio.com/Types/ElectricUsagePriority


--- @alias EntityPrototypeFlagsList EntityPrototypeFlags_val[]
--- https://wiki.factorio.com/Types/EntityPrototypeFlagsList


--- @alias ItemPrototypeFlagsList ItemPrototypeFlags_val[]
--- https://wiki.factorio.com/Types/ItemPrototypeFlagsList

