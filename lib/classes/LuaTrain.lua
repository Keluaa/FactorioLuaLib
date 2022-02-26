

--- @class LuaTrain
--- A train. Trains are a sequence of connected rolling stocks -- locomotives and wagons.
local train = {}


--- @type boolean
---  (RW)
--- When `true`, the train is explicitly controlled by the player or script. When `false`, the train moves autonomously
--- according to its schedule.
train.manual_mode = nil

--- @type double
---  (RW)
--- Current speed.
train.speed = nil

--- @type double
---  (R)
--- Current max speed when moving forward, depends on locomotive prototype and fuel.
train.max_forward_speed = nil

--- @type double
---  (R)
--- Current max speed when moving backwards, depends on locomotive prototype and fuel.
train.max_backward_speed = nil

--- @type double
---  (R)
--- The weight of this train.
train.weight = nil

--- @type LuaEntity[]
---  (R)
--- The rolling stocks this train is composed of, with the numbering starting at the front of the train.
--- 
--- @see LuaTrain#front_stock @
train.carriages = {}

--- @type table<string, LuaEntity[]>
---  (R)
--- Arrays of locomotives. The result is two arrays, indexed by `"front_movers"` and `"back_movers"` containing the
--- locomotives. E.g. `{front_movers={loco1, loco2}, back_movers={loco3}}`.
train.locomotives = nil

--- @type LuaEntity[]
---  (R)
--- The cargo carriages the train contains.
train.cargo_wagons = {}

--- @type LuaEntity[]
---  (R)
--- The fluid carriages the train contains.
train.fluid_wagons = {}

--- @type TrainSchedule
---  (RW)
--- The trains current schedule or `nil` if empty. Set to `nil` to clear.
train.schedule = nil

--- @type defines_train_state
---  (R)
--- This train's current state.
train.state = nil

--- @type LuaEntity
---  (R)
--- The rail at the front end of the train, possibly `nil`.
train.front_rail = nil

--- @type LuaEntity
---  (R)
--- The rail at the back end of the train, possibly `nil`.
train.back_rail = nil

--- @type defines_rail_direction
---  (R)
train.rail_direction_from_front_rail = nil

--- @type defines_rail_direction
---  (R)
train.rail_direction_from_back_rail = nil

--- @type LuaEntity
---  (R)
--- The front stock of this train, or `nil`. The front of the train is in the direction that a majority of locomotives
--- are pointing in. If it's a tie, the North and West directions take precedence.
train.front_stock = nil

--- @type LuaEntity
---  (R)
--- The back stock of this train, or `nil`. The back of the train is at the opposite end of the front.
--- 
--- @see LuaTrain#front_stock @
train.back_stock = nil

--- @type LuaEntity
---  (R)
--- The train stop this train is stopped at or `nil`.
train.station = nil

--- @type boolean
---  (R)
--- If this train has a path.
train.has_path = nil

--- @type LuaEntity
---  (R)
--- The destination rail this train is currently pathing to or `nil`.
train.path_end_rail = nil

--- @type LuaEntity
---  (R)
--- The destination train stop this train is currently pathing to or `nil`.
train.path_end_stop = nil

--- @type uint
---  (R)
--- The unique train ID.
train.id = nil

--- @type LuaPlayer[]
---  (R)
--- The player passengers on the train
train.passengers = {}

--- @type RidingState
---  (R)
--- The riding state of this train.
train.riding_state = nil

--- @type table<uint, uint>
---  (R)
--- The players killed by this train.
--- The keys are the player indices, the values are how often this train killed that player.
train.killed_players = nil

--- @type uint
---  (R)
--- The total number of kills by this train.
train.kill_count = nil

--- @type LuaRailPath
---  (R)
--- The path this train is using or `nil` if none.
train.path = nil

--- @type LuaEntity
---  (R)
--- The signal this train is arriving or waiting at or `nil` if none.
train.signal = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
train.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
train.object_name = nil



--- Get the amount of a particular item stored in the train.
--- 
--- @overload fun()
--- @param item string | nil             (Optional) 
function train.get_item_count(item)
    item = nil
end


--- Get a mapping of the train's inventory.
--- @return nil                         
function train.get_contents()
    return nil
end


--- Remove some items from the train.
--- 
--- @param stack ItemStackIdentification
function train.remove_item(stack)
    stack = nil
end


--- Insert a stack into the train.
--- 
--- @param stack ItemStackIdentification
function train.insert(stack)
    stack = nil
end


--- Clear all items in this train.
--- @return nil                         
function train.clear_items_inside()
    return nil
end


--- Checks if the path is invalid and tries to re-path if it isn't.
--- 
--- @overload fun()
--- @param force boolean | nil           (Optional) 
function train.recalculate_path(force)
    force = nil
end


--- Get the amount of a particular fluid stored in the train.
--- 
--- @overload fun()
--- @param fluid string | nil            (Optional) 
function train.get_fluid_count(fluid)
    fluid = nil
end


--- Gets a mapping of the train's fluid inventory.
--- @return nil                         
function train.get_fluid_contents()
    return nil
end


--- Remove some fluid from the train.
--- 
--- @param fluid Fluid                  
function train.remove_fluid(fluid)
    fluid = nil
end


--- Inserts the given fluid into the first available location in this train.
--- 
--- @param fluid Fluid                  
function train.insert_fluid(fluid)
    fluid = nil
end


--- Clears all fluids in this train.
--- @return nil                         
function train.clear_fluids_inside()
    return nil
end


--- Go to the station specified by the index in the train's schedule.
--- 
--- @param index uint                   
function train.go_to_station(index)
    index = nil
end


--- Gets all rails under the train.
--- @return nil                         
function train.get_rails()
    return nil
end


--- All methods and properties that this object supports.
--- @return nil                         
function train.help()
    return nil
end

