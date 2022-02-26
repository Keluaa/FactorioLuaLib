
--- @class defines
--- @field alert_type defines_alert_type_enum
--- @field behavior_result defines_behavior_result_enum
--- @field build_check_type defines_build_check_type_enum
--- @field chain_signal_state defines_chain_signal_state_enum
--- @field chunk_generated_status defines_chunk_generated_status_enum
--- @field circuit_condition_index defines_circuit_condition_index_enum
--- @field circuit_connector_id defines_circuit_connector_id_enum
--- @field command defines_command_enum
--- @field compound_command defines_compound_command_enum
--- @field control_behavior defines_control_behavior
--- @field controllers defines_controllers_enum
--- @field deconstruction_item defines_deconstruction_item
--- @field difficulty defines_difficulty_enum
--- @field difficulty_settings defines_difficulty_settings
--- @field direction defines_direction_enum
--- @field disconnect_reason defines_disconnect_reason_enum
--- @field distraction defines_distraction_enum
--- @field entity_status defines_entity_status_enum
--- @field events defines_events_enum
--- @field flow_precision_index defines_flow_precision_index_enum
--- @field group_state defines_group_state_enum
--- @field gui_type defines_gui_type_enum
--- @field input_action defines_input_action_enum
--- @field inventory defines_inventory_enum
--- @field logistic_member_index defines_logistic_member_index_enum
--- @field logistic_mode defines_logistic_mode_enum
--- @field mouse_button_type defines_mouse_button_type_enum
--- @field prototypes defines_prototypes
--- @field rail_connection_direction defines_rail_connection_direction_enum
--- @field rail_direction defines_rail_direction_enum
--- @field relative_gui_position defines_relative_gui_position_enum
--- @field relative_gui_type defines_relative_gui_type_enum
--- @field render_mode defines_render_mode_enum
--- @field rich_text_setting defines_rich_text_setting_enum
--- @field riding defines_riding
--- @field shooting defines_shooting_enum
--- @field signal_state defines_signal_state_enum
--- @field train_state defines_train_state_enum
--- @field transport_line defines_transport_line_enum
--- @field wire_connection_id defines_wire_connection_id_enum
--- @field wire_type defines_wire_type_enum


--- @alias defines_alert_type number

--- @class defines_alert_type_enum
--- @field entity_destroyed defines_alert_type
--- @field entity_under_attack defines_alert_type
--- @field not_enough_construction_robots defines_alert_type
--- @field no_material_for_construction defines_alert_type
--- @field not_enough_repair_packs defines_alert_type
--- @field turret_fire defines_alert_type
--- @field custom defines_alert_type
--- @field no_storage defines_alert_type
--- @field train_out_of_fuel defines_alert_type


--- @alias defines_behavior_result number

--- @class defines_behavior_result_enum
--- AI command exit status. See LuaEntity::set_command
--- 
--- @see LuaEntity#set_command @
--- @field in_progress defines_behavior_result
--- @field fail defines_behavior_result
--- @field success defines_behavior_result
--- @field deleted defines_behavior_result


--- @alias defines_build_check_type number

--- @class defines_build_check_type_enum
--- @field script defines_build_check_type
--- @field manual defines_build_check_type
--- @field manual_ghost defines_build_check_type
--- @field script_ghost defines_build_check_type
--- @field blueprint_ghost defines_build_check_type
--- @field ghost_revive defines_build_check_type


--- @alias defines_chain_signal_state number

--- @class defines_chain_signal_state_enum
--- State of a chain signal.
--- @field none defines_chain_signal_state
--- @field all_open defines_chain_signal_state
--- @field partially_open defines_chain_signal_state
--- @field none_open defines_chain_signal_state


--- @alias defines_chunk_generated_status number

--- @class defines_chunk_generated_status_enum
--- @field nothing defines_chunk_generated_status
--- @field custom_tiles defines_chunk_generated_status
--- @field basic_tiles defines_chunk_generated_status
--- @field corrected_tiles defines_chunk_generated_status
--- @field tiles defines_chunk_generated_status
--- @field entities defines_chunk_generated_status


--- @alias defines_circuit_condition_index number

--- @class defines_circuit_condition_index_enum
--- @field inserter_circuit defines_circuit_condition_index
--- @field inserter_logistic defines_circuit_condition_index
--- @field lamp defines_circuit_condition_index
--- @field arithmetic_combinator defines_circuit_condition_index
--- @field decider_combinator defines_circuit_condition_index
--- @field constant_combinator defines_circuit_condition_index
--- @field offshore_pump defines_circuit_condition_index
--- @field pump defines_circuit_condition_index


--- @alias defines_circuit_connector_id number

--- @class defines_circuit_connector_id_enum
--- @field accumulator defines_circuit_connector_id
--- @field constant_combinator defines_circuit_connector_id
--- @field container defines_circuit_connector_id
--- @field programmable_speaker defines_circuit_connector_id
--- @field rail_signal defines_circuit_connector_id
--- @field rail_chain_signal defines_circuit_connector_id
--- @field roboport defines_circuit_connector_id
--- @field storage_tank defines_circuit_connector_id
--- @field wall defines_circuit_connector_id
--- @field electric_pole defines_circuit_connector_id
--- @field inserter defines_circuit_connector_id
--- @field lamp defines_circuit_connector_id
--- @field combinator_input defines_circuit_connector_id
--- @field combinator_output defines_circuit_connector_id
--- @field offshore_pump defines_circuit_connector_id
--- @field pump defines_circuit_connector_id


--- @alias defines_command number

--- @class defines_command_enum
--- Command given to units describing what they should do.
--- @field attack defines_command        Attack another entity.
--- @field go_to_location defines_command Go to a specific position.
--- @field compound defines_command      Chain commands together, see defines.compound_command.
--- @field group defines_command         Do what your group wants you to do.
--- @field attack_area defines_command   Go to a place and attack what you see.
--- @field wander defines_command        Chill.
--- @field flee defines_command          Flee from another entity.
--- @field stop defines_command          Stop moving and stay where you are.
--- @field build_base defines_command    Go to a position and build a base there.


--- @alias defines_compound_command number

--- @class defines_compound_command_enum
--- How commands are joined together in a compound command (see defines.command.compound).
--- 
--- @see defines.command#compound @
--- @field logical_and defines_compound_command Fail on first failure. Only succeeds if all commands (executed one after another) succeed.
--- @field logical_or defines_compound_command Succeed on first success. Only fails if all commands (executed one after another) fail.
--- @field return_last defines_compound_command Execute all commands in sequence and fail or succeed depending on the return status of the last command.


--- @class defines_control_behavior
--- @field inserter defines_control_behavior_inserter
--- @field logistic_container defines_control_behavior_logistic_container
--- @field lamp defines_control_behavior_lamp
--- @field mining_drill defines_control_behavior_mining_drill
--- @field transport_belt defines_control_behavior_transport_belt
--- @field type defines_control_behavior_type_enum


--- @class defines_control_behavior_inserter
--- @field circuit_mode_of_operation defines_control_behavior_inserter_circuit_mode_of_operation_enum
--- @field hand_read_mode defines_control_behavior_inserter_hand_read_mode_enum


--- @alias defines_control_behavior_inserter_circuit_mode_of_operation number

--- @class defines_control_behavior_inserter_circuit_mode_of_operation_enum
--- @field none defines_control_behavior_inserter_circuit_mode_of_operation
--- @field enable_disable defines_control_behavior_inserter_circuit_mode_of_operation
--- @field set_filters defines_control_behavior_inserter_circuit_mode_of_operation
--- @field read_hand_contents defines_control_behavior_inserter_circuit_mode_of_operation
--- @field set_stack_size defines_control_behavior_inserter_circuit_mode_of_operation


--- @alias defines_control_behavior_inserter_hand_read_mode number

--- @class defines_control_behavior_inserter_hand_read_mode_enum
--- @field hold defines_control_behavior_inserter_hand_read_mode
--- @field pulse defines_control_behavior_inserter_hand_read_mode


--- @class defines_control_behavior_logistic_container
--- @field circuit_mode_of_operation defines_control_behavior_logistic_container_circuit_mode_of_operation_enum


--- @alias defines_control_behavior_logistic_container_circuit_mode_of_operation number

--- @class defines_control_behavior_logistic_container_circuit_mode_of_operation_enum
--- @field send_contents defines_control_behavior_logistic_container_circuit_mode_of_operation
--- @field set_requests defines_control_behavior_logistic_container_circuit_mode_of_operation


--- @class defines_control_behavior_lamp
--- @field circuit_mode_of_operation defines_control_behavior_lamp_circuit_mode_of_operation_enum


--- @alias defines_control_behavior_lamp_circuit_mode_of_operation number

--- @class defines_control_behavior_lamp_circuit_mode_of_operation_enum
--- @field use_colors defines_control_behavior_lamp_circuit_mode_of_operation


--- @class defines_control_behavior_mining_drill
--- @field resource_read_mode defines_control_behavior_mining_drill_resource_read_mode_enum


--- @alias defines_control_behavior_mining_drill_resource_read_mode number

--- @class defines_control_behavior_mining_drill_resource_read_mode_enum
--- @field this_miner defines_control_behavior_mining_drill_resource_read_mode
--- @field entire_patch defines_control_behavior_mining_drill_resource_read_mode


--- @class defines_control_behavior_transport_belt
--- @field content_read_mode defines_control_behavior_transport_belt_content_read_mode_enum


--- @alias defines_control_behavior_transport_belt_content_read_mode number

--- @class defines_control_behavior_transport_belt_content_read_mode_enum
--- @field pulse defines_control_behavior_transport_belt_content_read_mode
--- @field hold defines_control_behavior_transport_belt_content_read_mode


--- @alias defines_control_behavior_type number

--- @class defines_control_behavior_type_enum
--- @field container defines_control_behavior_type LuaContainerControlBehavior
--- @field generic_on_off defines_control_behavior_type LuaGenericOnOffControlBehavior
--- @field inserter defines_control_behavior_type LuaInserterControlBehavior
--- @field lamp defines_control_behavior_type LuaLampControlBehavior
--- @field logistic_container defines_control_behavior_type LuaLogisticContainerControlBehavior
--- @field roboport defines_control_behavior_type LuaRoboportControlBehavior
--- @field storage_tank defines_control_behavior_type LuaStorageTankControlBehavior
--- @field train_stop defines_control_behavior_type LuaTrainStopControlBehavior
--- @field decider_combinator defines_control_behavior_type LuaDeciderCombinatorControlBehavior
--- @field arithmetic_combinator defines_control_behavior_type LuaArithmeticCombinatorControlBehavior
--- @field constant_combinator defines_control_behavior_type LuaConstantCombinatorControlBehavior
--- @field transport_belt defines_control_behavior_type LuaTransportBeltControlBehavior
--- @field accumulator defines_control_behavior_type LuaAccumulatorControlBehavior
--- @field rail_signal defines_control_behavior_type LuaRailSignalControlBehavior
--- @field rail_chain_signal defines_control_behavior_type LuaRailChainSignalControlBehavior
--- @field wall defines_control_behavior_type LuaWallControlBehavior
--- @field mining_drill defines_control_behavior_type LuaMiningDrillControlBehavior
--- @field programmable_speaker defines_control_behavior_type LuaProgrammableSpeakerControlBehavior


--- @alias defines_controllers number

--- @class defines_controllers_enum
--- @field ghost defines_controllers     Can't interact with the world, can only observe. Used in the multiplayer waiting-to-respawn screen.
--- @field character defines_controllers The controller controls a character. This is the default controller in freeplay.
--- @field god defines_controllers       The controller isn't tied to a character. This is the default controller in sandbox.
--- @field editor defines_controllers    The Editor Controller near ultimate power to do almost anything in the game.
--- @field cutscene defines_controllers  The player can't interact with the world, and the camera pans around in a predefined manner.
--- @field spectator defines_controllers Can't change anything in the world but can view anything.


--- @class defines_deconstruction_item
--- @field entity_filter_mode defines_deconstruction_item_entity_filter_mode_enum
--- @field tile_filter_mode defines_deconstruction_item_tile_filter_mode_enum
--- @field tile_selection_mode defines_deconstruction_item_tile_selection_mode_enum


--- @alias defines_deconstruction_item_entity_filter_mode number

--- @class defines_deconstruction_item_entity_filter_mode_enum
--- @field whitelist defines_deconstruction_item_entity_filter_mode
--- @field blacklist defines_deconstruction_item_entity_filter_mode


--- @alias defines_deconstruction_item_tile_filter_mode number

--- @class defines_deconstruction_item_tile_filter_mode_enum
--- @field whitelist defines_deconstruction_item_tile_filter_mode
--- @field blacklist defines_deconstruction_item_tile_filter_mode


--- @alias defines_deconstruction_item_tile_selection_mode number

--- @class defines_deconstruction_item_tile_selection_mode_enum
--- @field normal defines_deconstruction_item_tile_selection_mode
--- @field always defines_deconstruction_item_tile_selection_mode
--- @field never defines_deconstruction_item_tile_selection_mode
--- @field only defines_deconstruction_item_tile_selection_mode


--- @alias defines_difficulty number

--- @class defines_difficulty_enum
--- @field easy defines_difficulty
--- @field normal defines_difficulty
--- @field hard defines_difficulty


--- @class defines_difficulty_settings
--- @field recipe_difficulty defines_difficulty_settings_recipe_difficulty_enum
--- @field technology_difficulty defines_difficulty_settings_technology_difficulty_enum


--- @alias defines_difficulty_settings_recipe_difficulty number

--- @class defines_difficulty_settings_recipe_difficulty_enum
--- @field normal defines_difficulty_settings_recipe_difficulty
--- @field expensive defines_difficulty_settings_recipe_difficulty


--- @alias defines_difficulty_settings_technology_difficulty number

--- @class defines_difficulty_settings_technology_difficulty_enum
--- @field normal defines_difficulty_settings_technology_difficulty
--- @field expensive defines_difficulty_settings_technology_difficulty


--- @alias defines_direction number

--- @class defines_direction_enum
--- @field north defines_direction
--- @field northeast defines_direction
--- @field east defines_direction
--- @field southeast defines_direction
--- @field south defines_direction
--- @field southwest defines_direction
--- @field west defines_direction
--- @field northwest defines_direction


--- @alias defines_disconnect_reason number

--- @class defines_disconnect_reason_enum
--- @field quit defines_disconnect_reason
--- @field dropped defines_disconnect_reason
--- @field reconnect defines_disconnect_reason
--- @field wrong_input defines_disconnect_reason
--- @field desync_limit_reached defines_disconnect_reason
--- @field cannot_keep_up defines_disconnect_reason
--- @field afk defines_disconnect_reason
--- @field kicked defines_disconnect_reason
--- @field kicked_and_deleted defines_disconnect_reason
--- @field banned defines_disconnect_reason
--- @field switching_servers defines_disconnect_reason


--- @alias defines_distraction number

--- @class defines_distraction_enum
--- @field none defines_distraction      Perform command even if someone attacks the unit.
--- @field by_enemy defines_distraction  Attack closer enemy entities with force.
--- @field by_anything defines_distraction Attack closer enemy entities, including entities "built" by player (belts, inserters, chests).
--- @field by_damage defines_distraction Attack when attacked.


--- @alias defines_entity_status number

--- @class defines_entity_status_enum
--- @field working defines_entity_status
--- @field normal defines_entity_status
--- @field no_power defines_entity_status
--- @field low_power defines_entity_status
--- @field no_fuel defines_entity_status
--- @field disabled_by_control_behavior defines_entity_status
--- @field opened_by_circuit_network defines_entity_status
--- @field closed_by_circuit_network defines_entity_status
--- @field disabled_by_script defines_entity_status
--- @field marked_for_deconstruction defines_entity_status
--- @field not_plugged_in_electric_network defines_entity_status Used by generators and solar panels.
--- @field networks_connected defines_entity_status Used by power switches.
--- @field networks_disconnected defines_entity_status Used by power switches.
--- @field charging defines_entity_status Used by accumulators.
--- @field discharging defines_entity_status Used by accumulators.
--- @field fully_charged defines_entity_status Used by accumulators.
--- @field out_of_logistic_network defines_entity_status Used by logistic containers.
--- @field no_recipe defines_entity_status Used by assembling machines.
--- @field no_ingredients defines_entity_status Used by furnaces.
--- @field no_input_fluid defines_entity_status Used by boilers, fluid turrets and fluid energy sources: Boiler has no fluid to work with.
--- @field no_research_in_progress defines_entity_status Used by labs.
--- @field no_minable_resources defines_entity_status Used by mining drills.
--- @field low_input_fluid defines_entity_status Used by boilers and fluid turrets: Boiler still has some fluid but is about to run out.
--- @field fluid_ingredient_shortage defines_entity_status Used by crafting machines.
--- @field full_output defines_entity_status Used by crafting machines, boilers, burner energy sources and reactors: Reactor/burner has full burnt result inventory, boiler has full output fluidbox.
--- @field item_ingredient_shortage defines_entity_status Used by crafting machines.
--- @field missing_required_fluid defines_entity_status Used by mining drills when the mining fluid is missing.
--- @field missing_science_packs defines_entity_status Used by labs.
--- @field waiting_for_source_items defines_entity_status Used by inserters.
--- @field waiting_for_space_in_destination defines_entity_status Used by inserters and mining drills.
--- @field preparing_rocket_for_launch defines_entity_status Used by the rocket silo.
--- @field waiting_to_launch_rocket defines_entity_status Used by the rocket silo.
--- @field launching_rocket defines_entity_status Used by the rocket silo.
--- @field no_modules_to_transmit defines_entity_status Used by beacons.
--- @field recharging_after_power_outage defines_entity_status Used by roboports.
--- @field waiting_for_target_to_be_built defines_entity_status Used by inserters targeting entity ghosts.
--- @field waiting_for_train defines_entity_status Used by inserters targeting rails.
--- @field no_ammo defines_entity_status Used by ammo turrets.
--- @field low_temperature defines_entity_status Used by heat energy sources.
--- @field disabled defines_entity_status Used by constant combinators: Combinator is turned off via switch in GUI.
--- @field turned_off_during_daytime defines_entity_status Used by lamps.
--- @field not_connected_to_rail defines_entity_status Used by rail signals.
--- @field cant_divide_segments defines_entity_status Used by rail signals.


--- @alias defines_events number

--- @class defines_events_enum
--- See the events page for more info on what events contain and when they get raised.
--- @field on_tick
--- @see on_tick @
--- 
--- @field on_gui_click
--- @see on_gui_click @
--- 
--- @field on_gui_confirmed
--- @see on_gui_confirmed @
--- 
--- @field on_gui_text_changed
--- @see on_gui_text_changed @
--- 
--- @field on_gui_checked_state_changed
--- @see on_gui_checked_state_changed @
--- 
--- @field on_entity_died
--- @see on_entity_died @
--- 
--- @field on_post_entity_died
--- @see on_post_entity_died @
--- 
--- @field on_entity_damaged
--- @see on_entity_damaged @
--- 
--- @field on_picked_up_item
--- @see on_picked_up_item @
--- 
--- @field on_built_entity
--- @see on_built_entity @
--- 
--- @field on_sector_scanned
--- @see on_sector_scanned @
--- 
--- @field on_player_mined_item
--- @see on_player_mined_item @
--- 
--- @field on_pre_build
--- @see on_pre_build @
--- 
--- @field on_rocket_launched
--- @see on_rocket_launched @
--- 
--- @field on_pre_player_mined_item
--- @see on_pre_player_mined_item @
--- 
--- @field on_chunk_generated
--- @see on_chunk_generated @
--- 
--- @field on_player_crafted_item
--- @see on_player_crafted_item @
--- 
--- @field on_robot_built_entity
--- @see on_robot_built_entity @
--- 
--- @field on_robot_pre_mined
--- @see on_robot_pre_mined @
--- 
--- @field on_robot_mined
--- @see on_robot_mined @
--- 
--- @field on_research_started
--- @see on_research_started @
--- 
--- @field on_research_finished
--- @see on_research_finished @
--- 
--- @field on_research_reversed
--- @see on_research_reversed @
--- 
--- @field on_player_rotated_entity
--- @see on_player_rotated_entity @
--- 
--- @field on_marked_for_deconstruction
--- @see on_marked_for_deconstruction @
--- 
--- @field on_cancelled_deconstruction
--- @see on_cancelled_deconstruction @
--- 
--- @field on_trigger_created_entity
--- @see on_trigger_created_entity @
--- 
--- @field on_trigger_fired_artillery
--- @see on_trigger_fired_artillery @
--- 
--- @field on_train_changed_state
--- @see on_train_changed_state @
--- 
--- @field on_player_created
--- @see on_player_created @
--- 
--- @field on_resource_depleted
--- @see on_resource_depleted @
--- 
--- @field on_player_driving_changed_state
--- @see on_player_driving_changed_state @
--- 
--- @field on_force_created
--- @see on_force_created @
--- 
--- @field on_forces_merging
--- @see on_forces_merging @
--- 
--- @field on_player_cursor_stack_changed
--- @see on_player_cursor_stack_changed @
--- 
--- @field on_pre_entity_settings_pasted
--- @see on_pre_entity_settings_pasted @
--- 
--- @field on_entity_settings_pasted
--- @see on_entity_settings_pasted @
--- 
--- @field on_player_main_inventory_changed
--- @see on_player_main_inventory_changed @
--- 
--- @field on_player_armor_inventory_changed
--- @see on_player_armor_inventory_changed @
--- 
--- @field on_player_ammo_inventory_changed
--- @see on_player_ammo_inventory_changed @
--- 
--- @field on_player_gun_inventory_changed
--- @see on_player_gun_inventory_changed @
--- 
--- @field on_player_placed_equipment
--- @see on_player_placed_equipment @
--- 
--- @field on_player_removed_equipment
--- @see on_player_removed_equipment @
--- 
--- @field on_pre_player_died
--- @see on_pre_player_died @
--- 
--- @field on_player_died
--- @see on_player_died @
--- 
--- @field on_player_respawned
--- @see on_player_respawned @
--- 
--- @field on_player_joined_game
--- @see on_player_joined_game @
--- 
--- @field on_player_left_game
--- @see on_player_left_game @
--- 
--- @field on_player_built_tile
--- @see on_player_built_tile @
--- 
--- @field on_player_mined_tile
--- @see on_player_mined_tile @
--- 
--- @field on_robot_built_tile
--- @see on_robot_built_tile @
--- 
--- @field on_robot_mined_tile
--- @see on_robot_mined_tile @
--- 
--- @field on_player_selected_area
--- @see on_player_selected_area @
--- 
--- @field on_player_alt_selected_area
--- @see on_player_alt_selected_area @
--- 
--- @field on_player_changed_surface
--- @see on_player_changed_surface @
--- 
--- @field on_selected_entity_changed
--- @see on_selected_entity_changed @
--- 
--- @field on_market_item_purchased
--- @see on_market_item_purchased @
--- 
--- @field on_player_dropped_item
--- @see on_player_dropped_item @
--- 
--- @field on_biter_base_built
--- @see on_biter_base_built @
--- 
--- @field on_player_changed_force
--- @see on_player_changed_force @
--- 
--- @field on_entity_renamed
--- @see on_entity_renamed @
--- 
--- @field on_gui_selection_state_changed
--- @see on_gui_selection_state_changed @
--- 
--- @field on_runtime_mod_setting_changed
--- @see on_runtime_mod_setting_changed @
--- 
--- @field on_difficulty_settings_changed
--- @see on_difficulty_settings_changed @
--- 
--- @field on_surface_created
--- @see on_surface_created @
--- 
--- @field on_surface_deleted
--- @see on_surface_deleted @
--- 
--- @field on_pre_surface_deleted
--- @see on_pre_surface_deleted @
--- 
--- @field on_player_mined_entity
--- @see on_player_mined_entity @
--- 
--- @field on_robot_mined_entity
--- @see on_robot_mined_entity @
--- 
--- @field on_train_created
--- @see on_train_created @
--- 
--- @field on_gui_elem_changed
--- @see on_gui_elem_changed @
--- 
--- @field on_player_setup_blueprint
--- @see on_player_setup_blueprint @
--- 
--- @field on_player_deconstructed_area
--- @see on_player_deconstructed_area @
--- 
--- @field on_player_configured_blueprint
--- @see on_player_configured_blueprint @
--- 
--- @field on_console_chat
--- @see on_console_chat @
--- 
--- @field on_console_command
--- @see on_console_command @
--- 
--- @field on_player_removed
--- @see on_player_removed @
--- 
--- @field on_pre_player_removed
--- @see on_pre_player_removed @
--- 
--- @field on_player_used_capsule
--- @see on_player_used_capsule @
--- 
--- @field script_raised_built
--- @see script_raised_built @
--- 
--- @field script_raised_destroy
--- @see script_raised_destroy @
--- 
--- @field script_raised_revive
--- @see script_raised_revive @
--- 
--- @field script_raised_set_tiles
--- @see script_raised_set_tiles @
--- 
--- @field on_player_promoted
--- @see on_player_promoted @
--- 
--- @field on_player_demoted
--- @see on_player_demoted @
--- 
--- @field on_combat_robot_expired
--- @see on_combat_robot_expired @
--- 
--- @field on_worker_robot_expired
--- @see on_worker_robot_expired @
--- 
--- @field on_player_changed_position
--- @see on_player_changed_position @
--- 
--- @field on_mod_item_opened
--- @see on_mod_item_opened @
--- 
--- @field on_gui_opened
--- @see on_gui_opened @
--- 
--- @field on_gui_closed
--- @see on_gui_closed @
--- 
--- @field on_gui_value_changed
--- @see on_gui_value_changed @
--- 
--- @field on_player_muted
--- @see on_player_muted @
--- 
--- @field on_player_unmuted
--- @see on_player_unmuted @
--- 
--- @field on_player_cheat_mode_enabled
--- @see on_player_cheat_mode_enabled @
--- 
--- @field on_player_cheat_mode_disabled
--- @see on_player_cheat_mode_disabled @
--- 
--- @field on_character_corpse_expired
--- @see on_character_corpse_expired @
--- 
--- @field on_pre_ghost_deconstructed
--- @see on_pre_ghost_deconstructed @
--- 
--- @field on_player_pipette
--- @see on_player_pipette @
--- 
--- @field on_player_display_resolution_changed
--- @see on_player_display_resolution_changed @
--- 
--- @field on_player_display_scale_changed
--- @see on_player_display_scale_changed @
--- 
--- @field on_pre_player_crafted_item
--- @see on_pre_player_crafted_item @
--- 
--- @field on_player_cancelled_crafting
--- @see on_player_cancelled_crafting @
--- 
--- @field on_chunk_charted
--- @see on_chunk_charted @
--- 
--- @field on_technology_effects_reset
--- @see on_technology_effects_reset @
--- 
--- @field on_force_reset
--- @see on_force_reset @
--- 
--- @field on_land_mine_armed
--- @see on_land_mine_armed @
--- 
--- @field on_forces_merged
--- @see on_forces_merged @
--- 
--- @field on_player_trash_inventory_changed
--- @see on_player_trash_inventory_changed @
--- 
--- @field on_pre_player_left_game
--- @see on_pre_player_left_game @
--- 
--- @field on_pre_surface_cleared
--- @see on_pre_surface_cleared @
--- 
--- @field on_surface_cleared
--- @see on_surface_cleared @
--- 
--- @field on_chunk_deleted
--- @see on_chunk_deleted @
--- 
--- @field on_pre_chunk_deleted
--- @see on_pre_chunk_deleted @
--- 
--- @field on_train_schedule_changed
--- @see on_train_schedule_changed @
--- 
--- @field on_player_banned
--- @see on_player_banned @
--- 
--- @field on_player_kicked
--- @see on_player_kicked @
--- 
--- @field on_player_unbanned
--- @see on_player_unbanned @
--- 
--- @field on_rocket_launch_ordered
--- @see on_rocket_launch_ordered @
--- 
--- @field on_script_path_request_finished
--- @see on_script_path_request_finished @
--- 
--- @field on_ai_command_completed
--- @see on_ai_command_completed @
--- 
--- @field on_marked_for_upgrade
--- @see on_marked_for_upgrade @
--- 
--- @field on_cancelled_upgrade
--- @see on_cancelled_upgrade @
--- 
--- @field on_player_toggled_map_editor
--- @see on_player_toggled_map_editor @
--- 
--- @field on_entity_cloned
--- @see on_entity_cloned @
--- 
--- @field on_area_cloned
--- @see on_area_cloned @
--- 
--- @field on_brush_cloned
--- @see on_brush_cloned @
--- 
--- @field on_game_created_from_scenario
--- @see on_game_created_from_scenario @
--- 
--- @field on_surface_imported
--- @see on_surface_imported @
--- 
--- @field on_surface_renamed
--- @see on_surface_renamed @
--- 
--- @field on_player_toggled_alt_mode
--- @see on_player_toggled_alt_mode @
--- 
--- @field on_player_repaired_entity
--- @see on_player_repaired_entity @
--- 
--- @field on_player_fast_transferred
--- @see on_player_fast_transferred @
--- 
--- @field on_pre_robot_exploded_cliff
--- @see on_pre_robot_exploded_cliff @
--- 
--- @field on_robot_exploded_cliff
--- @see on_robot_exploded_cliff @
--- 
--- @field on_entity_spawned
--- @see on_entity_spawned @
--- 
--- @field on_cutscene_waypoint_reached
--- @see on_cutscene_waypoint_reached @
--- 
--- @field on_unit_group_created
--- @see on_unit_group_created @
--- 
--- @field on_unit_added_to_group
--- @see on_unit_added_to_group @
--- 
--- @field on_unit_removed_from_group
--- @see on_unit_removed_from_group @
--- 
--- @field on_unit_group_finished_gathering
--- @see on_unit_group_finished_gathering @
--- 
--- @field on_build_base_arrived
--- @see on_build_base_arrived @
--- 
--- @field on_chart_tag_added
--- @see on_chart_tag_added @
--- 
--- @field on_chart_tag_modified
--- @see on_chart_tag_modified @
--- 
--- @field on_chart_tag_removed
--- @see on_chart_tag_removed @
--- 
--- @field on_lua_shortcut
--- @see on_lua_shortcut @
--- 
--- @field on_gui_location_changed
--- @see on_gui_location_changed @
--- 
--- @field on_gui_selected_tab_changed
--- @see on_gui_selected_tab_changed @
--- 
--- @field on_gui_switch_state_changed
--- @see on_gui_switch_state_changed @
--- 
--- @field on_force_cease_fire_changed
--- @see on_force_cease_fire_changed @
--- 
--- @field on_force_friends_changed
--- @see on_force_friends_changed @
--- 
--- @field on_string_translated
--- @see on_string_translated @
--- 
--- @field on_script_trigger_effect
--- @see on_script_trigger_effect @
--- 
--- @field on_player_set_quick_bar_slot
--- @see on_player_set_quick_bar_slot @
--- 
--- @field on_pre_player_toggled_map_editor
--- @see on_pre_player_toggled_map_editor @
--- 
--- @field on_pre_script_inventory_resized
--- @see on_pre_script_inventory_resized @
--- 
--- @field on_script_inventory_resized
--- @see on_script_inventory_resized @
--- 
--- @field on_entity_destroyed
--- @see on_entity_destroyed @
--- 
--- @field on_player_clicked_gps_tag
--- @see on_player_clicked_gps_tag @
--- 
--- @field on_player_flushed_fluid
--- @see on_player_flushed_fluid @
--- 
--- @field on_permission_group_edited
--- @see on_permission_group_edited @
--- 
--- @field on_pre_permission_string_imported
--- @see on_pre_permission_string_imported @
--- 
--- @field on_permission_string_imported
--- @see on_permission_string_imported @
--- 
--- @field on_pre_permission_group_deleted
--- @see on_pre_permission_group_deleted @
--- 
--- @field on_permission_group_deleted
--- @see on_permission_group_deleted @
--- 
--- @field on_permission_group_added
--- @see on_permission_group_added @
--- 
--- @field on_cutscene_cancelled
--- @see on_cutscene_cancelled @
--- 
--- @field on_player_configured_spider_remote
--- @see on_player_configured_spider_remote @
--- 
--- @field on_player_used_spider_remote
--- @see on_player_used_spider_remote @
--- 
--- @field on_spider_command_completed
--- @see on_spider_command_completed @
--- 
--- @field on_entity_logistic_slot_changed
--- @see on_entity_logistic_slot_changed @
--- 
--- @field on_equipment_inserted
--- @see on_equipment_inserted @
--- 
--- @field on_equipment_removed
--- @see on_equipment_removed @
--- 


--- @alias defines_flow_precision_index number

--- @class defines_flow_precision_index_enum
--- @field five_seconds defines_flow_precision_index
--- @field one_minute defines_flow_precision_index
--- @field ten_minutes defines_flow_precision_index
--- @field one_hour defines_flow_precision_index
--- @field ten_hours defines_flow_precision_index
--- @field fifty_hours defines_flow_precision_index
--- @field two_hundred_fifty_hours defines_flow_precision_index
--- @field one_thousand_hours defines_flow_precision_index


--- @alias defines_group_state number

--- @class defines_group_state_enum
--- @field gathering defines_group_state
--- @field moving defines_group_state
--- @field attacking_distraction defines_group_state
--- @field attacking_target defines_group_state
--- @field finished defines_group_state
--- @field pathfinding defines_group_state
--- @field wander_in_group defines_group_state


--- @alias defines_gui_type number

--- @class defines_gui_type_enum
--- @field none defines_gui_type
--- @field entity defines_gui_type
--- @field research defines_gui_type
--- @field controller defines_gui_type
--- @field production defines_gui_type
--- @field item defines_gui_type
--- @field bonus defines_gui_type
--- @field trains defines_gui_type
--- @field achievement defines_gui_type
--- @field blueprint_library defines_gui_type
--- @field equipment defines_gui_type
--- @field logistic defines_gui_type
--- @field other_player defines_gui_type
--- @field permissions defines_gui_type
--- @field tutorials defines_gui_type
--- @field custom defines_gui_type
--- @field server_management defines_gui_type
--- @field player_management defines_gui_type
--- @field tile defines_gui_type


--- @alias defines_input_action number

--- @class defines_input_action_enum
--- @field activate_copy defines_input_action
--- @field activate_cut defines_input_action
--- @field activate_paste defines_input_action
--- @field add_permission_group defines_input_action
--- @field add_train_station defines_input_action
--- @field admin_action defines_input_action
--- @field alt_select_area defines_input_action
--- @field alt_select_blueprint_entities defines_input_action
--- @field alternative_copy defines_input_action
--- @field begin_mining defines_input_action
--- @field begin_mining_terrain defines_input_action
--- @field build defines_input_action
--- @field build_rail defines_input_action
--- @field build_terrain defines_input_action
--- @field cancel_craft defines_input_action
--- @field cancel_deconstruct defines_input_action
--- @field cancel_new_blueprint defines_input_action
--- @field cancel_research defines_input_action
--- @field cancel_upgrade defines_input_action
--- @field change_active_character_tab defines_input_action
--- @field change_active_item_group_for_crafting defines_input_action
--- @field change_active_item_group_for_filters defines_input_action
--- @field change_active_quick_bar defines_input_action
--- @field change_arithmetic_combinator_parameters defines_input_action
--- @field change_decider_combinator_parameters defines_input_action
--- @field change_entity_label defines_input_action
--- @field change_item_description defines_input_action
--- @field change_item_label defines_input_action
--- @field change_multiplayer_config defines_input_action
--- @field change_picking_state defines_input_action
--- @field change_programmable_speaker_alert_parameters defines_input_action
--- @field change_programmable_speaker_circuit_parameters defines_input_action
--- @field change_programmable_speaker_parameters defines_input_action
--- @field change_riding_state defines_input_action
--- @field change_shooting_state defines_input_action
--- @field change_train_stop_station defines_input_action
--- @field change_train_wait_condition defines_input_action
--- @field change_train_wait_condition_data defines_input_action
--- @field clear_cursor defines_input_action
--- @field connect_rolling_stock defines_input_action
--- @field copy defines_input_action
--- @field copy_entity_settings defines_input_action
--- @field copy_opened_blueprint defines_input_action
--- @field copy_opened_item defines_input_action
--- @field craft defines_input_action
--- @field cursor_split defines_input_action
--- @field cursor_transfer defines_input_action
--- @field custom_input defines_input_action
--- @field cycle_blueprint_book_backwards defines_input_action
--- @field cycle_blueprint_book_forwards defines_input_action
--- @field deconstruct defines_input_action
--- @field delete_blueprint_library defines_input_action
--- @field delete_blueprint_record defines_input_action
--- @field delete_custom_tag defines_input_action
--- @field delete_permission_group defines_input_action
--- @field destroy_item defines_input_action
--- @field destroy_opened_item defines_input_action
--- @field disconnect_rolling_stock defines_input_action
--- @field drag_train_schedule defines_input_action
--- @field drag_train_wait_condition defines_input_action
--- @field drop_blueprint_record defines_input_action
--- @field drop_item defines_input_action
--- @field edit_blueprint_tool_preview defines_input_action
--- @field edit_custom_tag defines_input_action
--- @field edit_permission_group defines_input_action
--- @field export_blueprint defines_input_action
--- @field fast_entity_split defines_input_action
--- @field fast_entity_transfer defines_input_action
--- @field flush_opened_entity_fluid defines_input_action
--- @field flush_opened_entity_specific_fluid defines_input_action
--- @field go_to_train_station defines_input_action
--- @field grab_blueprint_record defines_input_action
--- @field gui_checked_state_changed defines_input_action
--- @field gui_click defines_input_action
--- @field gui_confirmed defines_input_action
--- @field gui_elem_changed defines_input_action
--- @field gui_location_changed defines_input_action
--- @field gui_selected_tab_changed defines_input_action
--- @field gui_selection_state_changed defines_input_action
--- @field gui_switch_state_changed defines_input_action
--- @field gui_text_changed defines_input_action
--- @field gui_value_changed defines_input_action
--- @field import_blueprint defines_input_action
--- @field import_blueprint_string defines_input_action
--- @field import_blueprints_filtered defines_input_action
--- @field import_permissions_string defines_input_action
--- @field inventory_split defines_input_action
--- @field inventory_transfer defines_input_action
--- @field launch_rocket defines_input_action
--- @field lua_shortcut defines_input_action
--- @field map_editor_action defines_input_action
--- @field market_offer defines_input_action
--- @field mod_settings_changed defines_input_action
--- @field open_achievements_gui defines_input_action
--- @field open_blueprint_library_gui defines_input_action
--- @field open_blueprint_record defines_input_action
--- @field open_bonus_gui defines_input_action
--- @field open_character_gui defines_input_action
--- @field open_current_vehicle_gui defines_input_action
--- @field open_equipment defines_input_action
--- @field open_gui defines_input_action
--- @field open_item defines_input_action
--- @field open_logistic_gui defines_input_action
--- @field open_mod_item defines_input_action
--- @field open_parent_of_opened_item defines_input_action
--- @field open_production_gui defines_input_action
--- @field open_technology_gui defines_input_action
--- @field open_tips_and_tricks_gui defines_input_action
--- @field open_train_gui defines_input_action
--- @field open_train_station_gui defines_input_action
--- @field open_trains_gui defines_input_action
--- @field paste_entity_settings defines_input_action
--- @field place_equipment defines_input_action
--- @field quick_bar_pick_slot defines_input_action
--- @field quick_bar_set_selected_page defines_input_action
--- @field quick_bar_set_slot defines_input_action
--- @field reassign_blueprint defines_input_action
--- @field remove_cables defines_input_action
--- @field remove_train_station defines_input_action
--- @field reset_assembling_machine defines_input_action
--- @field reset_item defines_input_action
--- @field rotate_entity defines_input_action
--- @field select_area defines_input_action
--- @field select_blueprint_entities defines_input_action
--- @field select_entity_slot defines_input_action
--- @field select_item defines_input_action
--- @field select_mapper_slot defines_input_action
--- @field select_next_valid_gun defines_input_action
--- @field select_tile_slot defines_input_action
--- @field send_spidertron defines_input_action
--- @field set_auto_launch_rocket defines_input_action
--- @field set_autosort_inventory defines_input_action
--- @field set_behavior_mode defines_input_action
--- @field set_car_weapons_control defines_input_action
--- @field set_circuit_condition defines_input_action
--- @field set_circuit_mode_of_operation defines_input_action
--- @field set_controller_logistic_trash_filter_item defines_input_action
--- @field set_deconstruction_item_tile_selection_mode defines_input_action
--- @field set_deconstruction_item_trees_and_rocks_only defines_input_action
--- @field set_entity_color defines_input_action
--- @field set_entity_energy_property defines_input_action
--- @field set_entity_logistic_trash_filter_item defines_input_action
--- @field set_filter defines_input_action
--- @field set_flat_controller_gui defines_input_action
--- @field set_heat_interface_mode defines_input_action
--- @field set_heat_interface_temperature defines_input_action
--- @field set_infinity_container_filter_item defines_input_action
--- @field set_infinity_container_remove_unfiltered_items defines_input_action
--- @field set_infinity_pipe_filter defines_input_action
--- @field set_inserter_max_stack_size defines_input_action
--- @field set_inventory_bar defines_input_action
--- @field set_linked_container_link_i_d defines_input_action
--- @field set_logistic_filter_item defines_input_action
--- @field set_logistic_filter_signal defines_input_action
--- @field set_player_color defines_input_action
--- @field set_recipe_notifications defines_input_action
--- @field set_request_from_buffers defines_input_action
--- @field set_research_finished_stops_game defines_input_action
--- @field set_signal defines_input_action
--- @field set_splitter_priority defines_input_action
--- @field set_train_stopped defines_input_action
--- @field set_trains_limit defines_input_action
--- @field set_vehicle_automatic_targeting_parameters defines_input_action
--- @field setup_assembling_machine defines_input_action
--- @field setup_blueprint defines_input_action
--- @field setup_single_blueprint_record defines_input_action
--- @field smart_pipette defines_input_action
--- @field spawn_item defines_input_action
--- @field stack_split defines_input_action
--- @field stack_transfer defines_input_action
--- @field start_repair defines_input_action
--- @field start_research defines_input_action
--- @field start_walking defines_input_action
--- @field stop_building_by_moving defines_input_action
--- @field switch_connect_to_logistic_network defines_input_action
--- @field switch_constant_combinator_state defines_input_action
--- @field switch_inserter_filter_mode_state defines_input_action
--- @field switch_power_switch_state defines_input_action
--- @field switch_to_rename_stop_gui defines_input_action
--- @field take_equipment defines_input_action
--- @field toggle_deconstruction_item_entity_filter_mode defines_input_action
--- @field toggle_deconstruction_item_tile_filter_mode defines_input_action
--- @field toggle_driving defines_input_action
--- @field toggle_enable_vehicle_logistics_while_moving defines_input_action
--- @field toggle_entity_logistic_requests defines_input_action
--- @field toggle_equipment_movement_bonus defines_input_action
--- @field toggle_map_editor defines_input_action
--- @field toggle_personal_logistic_requests defines_input_action
--- @field toggle_personal_roboport defines_input_action
--- @field toggle_show_entity_info defines_input_action
--- @field translate_string defines_input_action
--- @field undo defines_input_action
--- @field upgrade defines_input_action
--- @field upgrade_opened_blueprint_by_item defines_input_action
--- @field upgrade_opened_blueprint_by_record defines_input_action
--- @field use_artillery_remote defines_input_action
--- @field use_item defines_input_action
--- @field wire_dragging defines_input_action
--- @field write_to_console defines_input_action


--- @alias defines_inventory number

--- @class defines_inventory_enum
--- @field fuel defines_inventory
--- @field burnt_result defines_inventory
--- @field chest defines_inventory
--- @field furnace_source defines_inventory
--- @field furnace_result defines_inventory
--- @field furnace_modules defines_inventory
--- @field character_main defines_inventory
--- @field character_guns defines_inventory
--- @field character_ammo defines_inventory
--- @field character_armor defines_inventory
--- @field character_vehicle defines_inventory
--- @field character_trash defines_inventory
--- @field god_main defines_inventory
--- @field editor_main defines_inventory
--- @field editor_guns defines_inventory
--- @field editor_ammo defines_inventory
--- @field editor_armor defines_inventory
--- @field roboport_robot defines_inventory
--- @field roboport_material defines_inventory
--- @field robot_cargo defines_inventory
--- @field robot_repair defines_inventory
--- @field assembling_machine_input defines_inventory
--- @field assembling_machine_output defines_inventory
--- @field assembling_machine_modules defines_inventory
--- @field lab_input defines_inventory
--- @field lab_modules defines_inventory
--- @field mining_drill_modules defines_inventory
--- @field item_main defines_inventory
--- @field rocket_silo_rocket defines_inventory
--- @field rocket_silo_result defines_inventory
--- @field rocket defines_inventory
--- @field car_trunk defines_inventory
--- @field car_ammo defines_inventory
--- @field cargo_wagon defines_inventory
--- @field turret_ammo defines_inventory
--- @field beacon_modules defines_inventory
--- @field character_corpse defines_inventory
--- @field artillery_turret_ammo defines_inventory
--- @field artillery_wagon_ammo defines_inventory
--- @field spider_trunk defines_inventory
--- @field spider_ammo defines_inventory
--- @field spider_trash defines_inventory


--- @alias defines_logistic_member_index number

--- @class defines_logistic_member_index_enum
--- @field logistic_container defines_logistic_member_index
--- @field vehicle_storage defines_logistic_member_index
--- @field character_requester defines_logistic_member_index
--- @field character_storage defines_logistic_member_index
--- @field character_provider defines_logistic_member_index
--- @field generic_on_off_behavior defines_logistic_member_index


--- @alias defines_logistic_mode number

--- @class defines_logistic_mode_enum
--- @field none defines_logistic_mode
--- @field active_provider defines_logistic_mode
--- @field storage defines_logistic_mode
--- @field requester defines_logistic_mode
--- @field passive_provider defines_logistic_mode
--- @field buffer defines_logistic_mode


--- @alias defines_mouse_button_type number

--- @class defines_mouse_button_type_enum
--- @field none defines_mouse_button_type
--- @field left defines_mouse_button_type
--- @field right defines_mouse_button_type
--- @field middle defines_mouse_button_type


--- @class defines_prototypes
--- A dictionary mapping all top-level prototypes by name to a list of their associated subtypes. This list is
--- organized as a lookup table, meaning it maps the sub-prototype names to `0`. As an example,
--- `defines.prototypes['entity']` looks like this: `{furnace=0, inserter=0, container=0, ...}`.
--- @field [string] table<string, number> 


--- @alias defines_rail_connection_direction number

--- @class defines_rail_connection_direction_enum
--- @field left defines_rail_connection_direction
--- @field straight defines_rail_connection_direction
--- @field right defines_rail_connection_direction
--- @field none defines_rail_connection_direction


--- @alias defines_rail_direction number

--- @class defines_rail_direction_enum
--- @field front defines_rail_direction
--- @field back defines_rail_direction


--- @alias defines_relative_gui_position number

--- @class defines_relative_gui_position_enum
--- @field top defines_relative_gui_position
--- @field bottom defines_relative_gui_position
--- @field left defines_relative_gui_position
--- @field right defines_relative_gui_position


--- @alias defines_relative_gui_type number

--- @class defines_relative_gui_type_enum
--- @field accumulator_gui defines_relative_gui_type
--- @field achievement_gui defines_relative_gui_type
--- @field additional_entity_info_gui defines_relative_gui_type
--- @field admin_gui defines_relative_gui_type
--- @field arithmetic_combinator_gui defines_relative_gui_type
--- @field armor_gui defines_relative_gui_type
--- @field assembling_machine_gui defines_relative_gui_type
--- @field assembling_machine_select_recipe_gui defines_relative_gui_type
--- @field beacon_gui defines_relative_gui_type
--- @field blueprint_book_gui defines_relative_gui_type
--- @field blueprint_library_gui defines_relative_gui_type
--- @field blueprint_setup_gui defines_relative_gui_type
--- @field bonus_gui defines_relative_gui_type
--- @field burner_equipment_gui defines_relative_gui_type
--- @field car_gui defines_relative_gui_type
--- @field constant_combinator_gui defines_relative_gui_type
--- @field container_gui defines_relative_gui_type
--- @field controller_gui defines_relative_gui_type
--- @field decider_combinator_gui defines_relative_gui_type
--- @field deconstruction_item_gui defines_relative_gui_type
--- @field electric_energy_interface_gui defines_relative_gui_type
--- @field electric_network_gui defines_relative_gui_type
--- @field entity_variations_gui defines_relative_gui_type
--- @field entity_with_energy_source_gui defines_relative_gui_type
--- @field equipment_grid_gui defines_relative_gui_type
--- @field furnace_gui defines_relative_gui_type
--- @field generic_on_off_entity_gui defines_relative_gui_type
--- @field heat_interface_gui defines_relative_gui_type
--- @field infinity_pipe_gui defines_relative_gui_type
--- @field inserter_gui defines_relative_gui_type
--- @field item_with_inventory_gui defines_relative_gui_type
--- @field lab_gui defines_relative_gui_type
--- @field lamp_gui defines_relative_gui_type
--- @field linked_container_gui defines_relative_gui_type
--- @field loader_gui defines_relative_gui_type
--- @field logistic_gui defines_relative_gui_type
--- @field market_gui defines_relative_gui_type
--- @field mining_drill_gui defines_relative_gui_type
--- @field other_player_gui defines_relative_gui_type
--- @field permissions_gui defines_relative_gui_type
--- @field pipe_gui defines_relative_gui_type
--- @field power_switch_gui defines_relative_gui_type
--- @field production_gui defines_relative_gui_type
--- @field programmable_speaker_gui defines_relative_gui_type
--- @field rail_chain_signal_gui defines_relative_gui_type
--- @field rail_signal_gui defines_relative_gui_type
--- @field reactor_gui defines_relative_gui_type
--- @field rename_stop_gui defines_relative_gui_type
--- @field resource_entity_gui defines_relative_gui_type
--- @field roboport_gui defines_relative_gui_type
--- @field rocket_silo_gui defines_relative_gui_type
--- @field server_config_gui defines_relative_gui_type
--- @field spider_vehicle_gui defines_relative_gui_type
--- @field splitter_gui defines_relative_gui_type
--- @field standalone_character_gui defines_relative_gui_type
--- @field storage_tank_gui defines_relative_gui_type
--- @field tile_variations_gui defines_relative_gui_type
--- @field train_gui defines_relative_gui_type
--- @field train_stop_gui defines_relative_gui_type
--- @field trains_gui defines_relative_gui_type
--- @field transport_belt_gui defines_relative_gui_type
--- @field upgrade_item_gui defines_relative_gui_type
--- @field wall_gui defines_relative_gui_type


--- @alias defines_render_mode number

--- @class defines_render_mode_enum
--- @field game defines_render_mode
--- @field chart defines_render_mode
--- @field chart_zoomed_in defines_render_mode


--- @alias defines_rich_text_setting number

--- @class defines_rich_text_setting_enum
--- @field enabled defines_rich_text_setting
--- @field disabled defines_rich_text_setting
--- @field highlight defines_rich_text_setting


--- @class defines_riding
--- @field acceleration defines_riding_acceleration_enum
--- @field direction defines_riding_direction_enum


--- @alias defines_riding_acceleration number

--- @class defines_riding_acceleration_enum
--- @field nothing defines_riding_acceleration
--- @field accelerating defines_riding_acceleration
--- @field braking defines_riding_acceleration
--- @field reversing defines_riding_acceleration


--- @alias defines_riding_direction number

--- @class defines_riding_direction_enum
--- @field left defines_riding_direction
--- @field straight defines_riding_direction
--- @field right defines_riding_direction


--- @alias defines_shooting number

--- @class defines_shooting_enum
--- @field not_shooting defines_shooting
--- @field shooting_enemies defines_shooting
--- @field shooting_selected defines_shooting


--- @alias defines_signal_state number

--- @class defines_signal_state_enum
--- State of an ordinary rail signal.
--- @field open defines_signal_state     Green.
--- @field closed defines_signal_state   Red.
--- @field reserved defines_signal_state Orange.
--- @field reserved_by_circuit_network defines_signal_state Red - From circuit network.


--- @alias defines_train_state number

--- @class defines_train_state_enum
--- @field on_the_path defines_train_state Normal state -- following the path.
--- @field path_lost defines_train_state Had path and lost it -- must stop.
--- @field no_schedule defines_train_state Doesn't have anywhere to go.
--- @field no_path defines_train_state   Has no path and is stopped.
--- @field arrive_signal defines_train_state Braking before a rail signal.
--- @field wait_signal defines_train_state Waiting at a signal.
--- @field arrive_station defines_train_state Braking before a station.
--- @field wait_station defines_train_state Waiting at a station.
--- @field manual_control_stop defines_train_state Switched to manual control and has to stop.
--- @field manual_control defines_train_state Can move if user explicitly sits in and rides the train.
--- @field destination_full defines_train_state Same as no_path but all candidate train stops are full


--- @alias defines_transport_line number

--- @class defines_transport_line_enum
--- @field left_line defines_transport_line
--- @field right_line defines_transport_line
--- @field left_underground_line defines_transport_line
--- @field right_underground_line defines_transport_line
--- @field secondary_left_line defines_transport_line
--- @field secondary_right_line defines_transport_line
--- @field left_split_line defines_transport_line
--- @field right_split_line defines_transport_line
--- @field secondary_left_split_line defines_transport_line
--- @field secondary_right_split_line defines_transport_line


--- @alias defines_wire_connection_id number

--- @class defines_wire_connection_id_enum
--- @field electric_pole defines_wire_connection_id
--- @field power_switch_left defines_wire_connection_id
--- @field power_switch_right defines_wire_connection_id


--- @alias defines_wire_type number

--- @class defines_wire_type_enum
--- @field red defines_wire_type
--- @field green defines_wire_type
--- @field copper defines_wire_type


