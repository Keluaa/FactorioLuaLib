

--- @class LuaControl
--- This is an abstract base class containing the common functionality between LuaPlayer and entities (see LuaEntity).
--- When accessing player-related functions through a LuaEntity, it must refer to a character entity.
--- 
--- @see LuaEntity @
--- @see LuaPlayer @
local control = {}


--- @type LuaSurface
---  (R)
--- The surface this entity is currently on.
control.surface = nil

--- @type MapPosition
---  (R)
--- Current position of the entity.
control.position = nil

--- @type LuaEntity
---  (R)
--- The vehicle the player is currently sitting in; `nil` if none.
control.vehicle = nil

--- @type ForceIdentification
---  (RW)
--- The force of this entity. Reading will always give a LuaForce, but it is possible to assign either string or
--- LuaForce to this attribute to change the force.
--- 
--- @see LuaForce @
--- @see string @
control.force = nil

--- @type LuaEntity
---  (RW)
--- The currently selected entity; `nil` if none. Assigning an entity will select it if selectable otherwise clears
--- selection.
control.selected = nil

--- @type LuaEntity | LuaItemStack | LuaEquipment | LuaEquipmentGrid | LuaPlayer | LuaGuiElement | defines_gui_type
---  (RW)
--- The GUI the player currently has open, or `nil` if no GUI is open.
--- This is the GUI that will asked to close (by firing the on_gui_closed event) when the `Esc` or `E` keys are
--- pressed. If this attribute is not `nil`, and a new GUI is written to it, the existing one will be asked to close.
--- 
--- @see on_gui_closed @
control.opened = nil

--- @type uint
---  (R)
--- Size of the crafting queue.
control.crafting_queue_size = nil

--- @type double
---  (R)
--- The crafting queue progress [0-1] 0 when no recipe is being crafted.
control.crafting_queue_progress = nil

--- @type table
---  (RW)
--- Current walking state.
control.walking_state = nil

--- @type RidingState
---  (RW)
--- Current riding state of this car or the vehicle this player is riding in.
control.riding_state = nil

--- @type table
---  (RW)
--- Current mining state.
control.mining_state = nil

--- @type table
---  (RW)
--- Current shooting state.
control.shooting_state = nil

--- @type boolean
---  (RW)
--- Current item-picking state.
control.picking_state = nil

--- @type table
---  (RW)
--- Current repair state.
control.repair_state = nil

--- @type LuaItemStack
---  (R)
--- The player's cursor stack, or `nil` if the player controller is a spectator. Even though this property is marked as
--- read-only, it returns a LuaItemStack, meaning it can be manipulated like so:
--- 
--- @see LuaItemStack @
control.cursor_stack = nil

--- @type ItemPrototypeIdentification
---  (RW)
--- The ghost prototype in the player's cursor.
control.cursor_ghost = nil

--- @type boolean
---  (RW)
--- `true` if the player is in a vehicle. Writing to this attribute puts the player in or out of a vehicle.
control.driving = nil

--- @type CraftingQueueItem[]
---  (R)
--- Gets the current crafting queue items.
control.crafting_queue = {}

--- @type LuaEntity[]
---  (R)
--- The current combat robots following the character
control.following_robots = {}

--- @type boolean
---  (RW)
--- When `true` hand crafting is free and instant
control.cheat_mode = nil

--- @type double
---  (RW)
control.character_crafting_speed_modifier = nil

--- @type double
---  (RW)
control.character_mining_speed_modifier = nil

--- @type string[]
---  (RW)
control.character_additional_mining_categories = {}

--- @type double
---  (RW)
--- Modifies the running speed of this character by the given value as a percentage. Setting the running modifier to
--- `0.5` makes the character run 50% faster. The minimum value of `-1` reduces the movement speed by 100%, resulting
--- in a speed of `0`.
control.character_running_speed_modifier = nil

--- @type uint
---  (RW)
control.character_build_distance_bonus = nil

--- @type uint
---  (RW)
control.character_item_drop_distance_bonus = nil

--- @type uint
---  (RW)
control.character_reach_distance_bonus = nil

--- @type uint
---  (RW)
control.character_resource_reach_distance_bonus = nil

--- @type uint
---  (RW)
control.character_item_pickup_distance_bonus = nil

--- @type uint
---  (RW)
control.character_loot_pickup_distance_bonus = nil

--- @type uint
---  (RW)
control.character_inventory_slots_bonus = nil

--- @type uint
---  (RW)
control.character_trash_slot_count_bonus = nil

--- @type uint
---  (RW)
control.character_maximum_following_robot_count_bonus = nil

--- @type float
---  (RW)
control.character_health_bonus = nil

--- @type boolean
---  (RW)
--- If personal logistic requests are enabled for this character or players character.
control.character_personal_logistic_requests_enabled = nil

--- @type boolean
---  (RW)
--- If personal logistic requests are enabled for this vehicle (spidertron).
control.vehicle_logistic_requests_enabled = nil

--- @type defines_gui_type
---  (R)
--- Returns the defines.gui_type or `nil`.
--- 
--- @see defines.gui_type @
control.opened_gui_type = nil

--- @type uint
---  (R)
--- The build distance of this character or max uint when not a character or player connected to a character.
control.build_distance = nil

--- @type uint
---  (R)
--- The item drop distance of this character or max uint when not a character or player connected to a character.
control.drop_item_distance = nil

--- @type uint
---  (R)
--- The reach distance of this character or max uint when not a character or player connected to a character.
control.reach_distance = nil

--- @type double
---  (R)
--- The item pickup distance of this character or max double when not a character or player connected to a character.
control.item_pickup_distance = nil

--- @type double
---  (R)
--- The loot pickup distance of this character or max double when not a character or player connected to a character.
control.loot_pickup_distance = nil

--- @type double
---  (R)
--- The resource reach distance of this character or max double when not a character or player connected to a
--- character.
control.resource_reach_distance = nil

--- @type boolean
---  (R)
--- If this character entity is in combat.
control.in_combat = nil

--- @type double
---  (R)
--- Gets the current movement speed of this character, including effects from exoskeletons, tiles, stickers and
--- shooting.
control.character_running_speed = nil

--- @type double
---  (R)
--- Gets the current mining progress between 0 and 1 of this character, or 0 if they aren't mining.
control.character_mining_progress = nil



--- Get an inventory belonging to this entity. This can be either the "main" inventory or some auxiliary one, like the
--- module slots or logistic trash slots.
--- 
--- @param inventory defines_inventory  
function control.get_inventory(inventory)
    inventory = nil
end


--- Gets the main inventory for this character or player if this is a character or player.
--- @return nil                         
function control.get_main_inventory()
    return nil
end


--- Can at least some items be inserted?
--- 
--- @param items ItemStackIdentification
function control.can_insert(items)
    items = nil
end


--- Insert items into this entity. This works the same way as inserters or shift-clicking: the "best" inventory is
--- chosen automatically.
--- 
--- @param items ItemStackIdentification
function control.insert(items)
    items = nil
end


--- @alias LuaControl_set_gui_arrow_p
--- @field type string                   Where to point to. This field determines what other fields are mandatory. May be `"nowhere"`, `"goal"`, `"entity_info"`, `"active_window"`, `"entity"`, `"position"`, `"crafting_queue"`, or `"item_stack"`.
--- @field entity LuaEntity | nil        (Optional)
--- @field position MapPosition | nil    (Optional)
--- @field crafting_queueindex uint | nil (Optional)
--- @field inventory_index defines_inventory | nil (Optional)
--- @field item_stack_index uint | nil   (Optional)
--- @field source string | nil           (Optional)

--- Create an arrow which points at this entity. This is used in the tutorial. For examples, see `control.lua` in the
--- campaign missions.
--- 
--- @param params LuaControl_set_gui_arrow_p
function control.set_gui_arrow(params)
    params = nil
end


--- Removes the arrow created by `set_gui_arrow`.
--- @return nil                         
function control.clear_gui_arrow()
    return nil
end


--- Get the number of all or some items in this entity.
--- 
--- @overload fun()
--- @param item string | nil             (Optional) 
function control.get_item_count(item)
    item = nil
end


--- Does this entity have any item inside it?
--- @return nil                         
function control.has_items_inside()
    return nil
end


--- Can a given entity be opened or accessed?
--- 
--- @param entity LuaEntity             
function control.can_reach_entity(entity)
    entity = nil
end


--- Remove all items from this entity.
--- @return nil                         
function control.clear_items_inside()
    return nil
end


--- Remove items from this entity.
--- 
--- @param items ItemStackIdentification
function control.remove_item(items)
    items = nil
end


--- Teleport the entity to a given position, possibly on another surface.
--- 
--- @overload fun(position: MapPosition)
--- @param position MapPosition         
--- @param surface SurfaceIdentification | nil (Optional) 
function control.teleport(position, surface)
    position = nil
    surface = nil
end


--- Select an entity, as if by hovering the mouse above it.
--- 
--- @param position MapPosition         
function control.update_selected_entity(position)
    position = nil
end


--- Unselect any selected entity.
--- @return nil                         
function control.clear_selected_entity()
    return nil
end


--- Disable the flashlight.
--- @return nil                         
function control.disable_flashlight()
    return nil
end


--- Enable the flashlight.
--- @return nil                         
function control.enable_flashlight()
    return nil
end


--- Is the flashlight enabled.
--- @return nil                         
function control.is_flashlight_enabled()
    return nil
end


--- Gets the count of the given recipe that can be crafted.
--- 
--- @param recipe string | LuaRecipe    
function control.get_craftable_count(recipe)
    recipe = nil
end


--- @alias LuaControl_begin_crafting_p
--- @field count uint                    The count to craft.
--- @field recipe string | LuaRecipe     The recipe to craft.
--- @field silent boolean | nil          (Optional)  If false and the recipe can't be crafted the requested number of times printing the failure is skipped.

--- Begins crafting the given count of the given recipe.
--- 
--- @param params LuaControl_begin_crafting_p
function control.begin_crafting(params)
    params = nil
end


--- @alias LuaControl_cancel_crafting_p
--- @field index uint                    The crafting queue index.
--- @field count uint                    The count to cancel crafting.

--- Cancels crafting the given count of the given crafting queue index.
--- 
--- @param params LuaControl_cancel_crafting_p
function control.cancel_crafting(params)
    params = nil
end


--- Mines the given entity as if this player (or character) mined it.
--- 
--- @overload fun(entity: LuaEntity)
--- @param entity LuaEntity             
--- @param force boolean | nil           (Optional) 
function control.mine_entity(entity, force)
    entity = nil
    force = nil
end


--- Mines the given tile as if this player (or character) mined it.
--- 
--- @param tile LuaTile                 
function control.mine_tile(tile)
    tile = nil
end


--- When `true` control adapter is a LuaPlayer object, `false` for entities including characters with players.
--- @return nil                         
function control.is_player()
    return nil
end


--- Open the technology GUI and select a given technology.
--- 
--- @overload fun()
--- @param technology TechnologyIdentification | nil (Optional) 
function control.open_technology_gui(technology)
    technology = nil
end


--- Sets a personal logistic request and auto-trash slot to the given value.
--- 
--- @param slot_index uint              
--- @param value LogisticParameters     
function control.set_personal_logistic_slot(slot_index, value)
    slot_index = nil
    value = nil
end


--- Sets a vehicle logistic request and auto-trash slot to the given value. Only used on `spider-vehicule`s.
--- 
--- @param slot_index uint              
--- @param value LogisticParameters     
function control.set_vehicle_logistic_slot(slot_index, value)
    slot_index = nil
    value = nil
end


--- Gets the parameters of a personal logistic request and auto-trash slot.
--- 
--- @param slot_index uint              
function control.get_personal_logistic_slot(slot_index)
    slot_index = nil
end


--- Gets the parameters of a vehicle logistic request and auto-trash slot.
--- 
--- @param slot_index uint              
function control.get_vehicle_logistic_slot(slot_index)
    slot_index = nil
end


--- @param slot_index uint              
function control.clear_personal_logistic_slot(slot_index)
    slot_index = nil
end


--- @param slot_index uint              
function control.clear_vehicle_logistic_slot(slot_index)
    slot_index = nil
end


--- Returns whether the player is holding a blueprint. This takes both blueprint items as well as blueprint records
--- from the blueprint library into account.
--- Note that both this method and LuaControl::get_blueprint_entities refer to the currently selected blueprint,
--- meaning a blueprint book with a selected blueprint will return the information as well.
--- 
--- @see LuaControl#get_blueprint_entities @
--- @return nil                         
function control.is_cursor_blueprint()
    return nil
end


--- Gets the entities that are part of the currently selected blueprint, regardless of it being in a blueprint book or
--- picked from the blueprint library.
--- @return nil                         
function control.get_blueprint_entities()
    return nil
end


--- Returns whether the player is holding something in the cursor. It takes into account items from the blueprint
--- library, as well as items and ghost cursor.
--- @return nil                         
function control.is_cursor_empty()
    return nil
end

