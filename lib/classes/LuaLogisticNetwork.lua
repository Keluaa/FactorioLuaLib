

--- @class LuaLogisticNetwork
--- A single logistic network of a given force on a given surface.
local logistic_network = {}


--- @type LuaForce
---  (R)
--- The force this logistic network belongs to.
logistic_network.force = nil

--- @type uint
---  (R)
--- Number of logistic robots available for a job.
logistic_network.available_logistic_robots = nil

--- @type uint
---  (R)
--- The total number of logistic robots in the network (idle and active + in roboports).
logistic_network.all_logistic_robots = nil

--- @type uint
---  (R)
--- Number of construction robots available for a job.
logistic_network.available_construction_robots = nil

--- @type uint
---  (R)
--- The total number of construction robots in the network (idle and active + in roboports).
logistic_network.all_construction_robots = nil

--- @type uint
---  (R)
--- Maximum number of robots the network can work with. Currently only used for the personal roboport.
logistic_network.robot_limit = nil

--- @type LuaLogisticCell[]
---  (R)
--- All cells in this network.
logistic_network.cells = {}

--- @type LuaEntity[]
---  (R)
--- All entities that have logistic provider points in this network.
logistic_network.providers = {}

--- @type LuaEntity[]
---  (R)
--- All entities that have empty logistic provider points in this network.
logistic_network.empty_providers = {}

--- @type LuaEntity[]
---  (R)
--- All entities that have logistic requester points in this network.
logistic_network.requesters = {}

--- @type LuaEntity[]
---  (R)
--- All entities that have logistic storage points in this network.
logistic_network.storages = {}

--- @type LuaEntity[]
---  (R)
--- All other entities that have logistic points in this network (inserters mostly).
logistic_network.logistic_members = {}

--- @type LuaLogisticPoint[]
---  (R)
--- All things that have provider points in this network.
logistic_network.provider_points = {}

--- @type LuaLogisticPoint[]
---  (R)
--- All passive provider points in this network.
logistic_network.passive_provider_points = {}

--- @type LuaLogisticPoint[]
---  (R)
--- All active provider points in this network.
logistic_network.active_provider_points = {}

--- @type LuaLogisticPoint[]
---  (R)
--- All things that have empty provider points in this network.
logistic_network.empty_provider_points = {}

--- @type LuaLogisticPoint[]
---  (R)
--- All things that have requester points in this network.
logistic_network.requester_points = {}

--- @type LuaLogisticPoint[]
---  (R)
--- All things that have storage points in this network.
logistic_network.storage_points = {}

--- @type LuaEntity[]
---  (R)
--- All robots in this logistic network.
logistic_network.robots = {}

--- @type LuaEntity[]
---  (R)
--- All construction robots in this logistic network.
logistic_network.construction_robots = {}

--- @type LuaEntity[]
---  (R)
--- All logistic robots in this logistic network.
logistic_network.logistic_robots = {}

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
logistic_network.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
logistic_network.object_name = nil



--- Count given or all items in the network or given members.
--- 
--- @overload fun()
--- @overload fun(item: string)
--- @param item string | nil             (Optional) 
--- @param member string | nil           (Optional) 
function logistic_network.get_item_count(item, member)
    item = nil
    member = nil
end


--- Get item counts for the entire network, similar to how LuaInventory::get_contents does.
--- 
--- @see LuaInventory#get_contents @
--- @return nil                         
function logistic_network.get_contents()
    return nil
end


--- Remove items from the logistic network. This will actually remove the items from some logistic chests.
--- 
--- @overload fun(item: ItemStackIdentification)
--- @param item ItemStackIdentification 
--- @param members string | nil          (Optional) 
function logistic_network.remove_item(item, members)
    item = nil
    members = nil
end


--- Insert items into the logistic network. This will actually insert the items into some logistic chests.
--- 
--- @overload fun(item: ItemStackIdentification)
--- @param item ItemStackIdentification 
--- @param members string | nil          (Optional) 
function logistic_network.insert(item, members)
    item = nil
    members = nil
end


--- Find logistic cell closest to a given position.
--- 
--- @param position MapPosition         
function logistic_network.find_cell_closest_to(position)
    position = nil
end


--- @alias LuaLogisticNetwork_select_pickup_point_p
--- @field name string                   Name of the item to select.
--- @field position MapPosition | nil    (Optional)  When given, it will find the storage 'best' storage point from this position.
--- @field include_buffers boolean | nil (Optional)  Whether to consider buffer chests or not. Defaults to false. Only considered if selecting with position.
--- @field members string | nil          (Optional)  When given, it will find from only the specific type of member. Must be `"storage"`, `"passive-provider"`, `"buffer"` or `"active-provider"`. If not specified, selects with normal priorities. Not considered if position is specified.

--- Find the 'best' logistic point with this item ID and from the given position or from given chest type.
--- 
--- @param params LuaLogisticNetwork_select_pickup_point_p
function logistic_network.select_pickup_point(params)
    params = nil
end


--- @alias LuaLogisticNetwork_select_drop_point_p
--- @field stack ItemStackIdentification Name of the item to select.
--- @field members string | nil          (Optional)  When given, it will find from only the specific type of member. Must be `"storage"`, `"storage-empty"`, `"storage-empty-slot"` or `"requester"`. If not specified, selects with normal priorities.

--- Find a logistic point to drop the specific item stack.
--- 
--- @param params LuaLogisticNetwork_select_drop_point_p
function logistic_network.select_drop_point(params)
    params = nil
end


--- All methods and properties that this object supports.
--- @return nil                         
function logistic_network.help()
    return nil
end

