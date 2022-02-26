

--- @class LuaLogisticCell
--- Logistic cell of a particular LuaEntity. A "Logistic Cell" is the given name for settings and properties used by
--- what would normally be seen as a "Roboport". A logistic cell however doesn't have to be attached to the roboport
--- entity (the character has one for the personal roboport).
--- 
--- @see LuaEntity @
local logistic_cell = {}


--- @type float
---  (R)
--- Logistic radius of this cell.
logistic_cell.logistic_radius = nil

--- @type float
---  (R)
--- Logistic connection distance of this cell.
logistic_cell.logistics_connection_distance = nil

--- @type float
---  (R)
--- Construction radius of this cell.
logistic_cell.construction_radius = nil

--- @type uint
---  (R)
--- Number of stationed logistic robots in this cell.
logistic_cell.stationed_logistic_robot_count = nil

--- @type uint
---  (R)
--- Number of stationed construction robots in this cell.
logistic_cell.stationed_construction_robot_count = nil

--- @type boolean
---  (R)
--- `true` if this is a mobile cell. In vanilla, only the logistic cell created by a character's personal roboport is
--- mobile.
logistic_cell.mobile = nil

--- @type boolean
---  (R)
--- `true` if this cell is active.
logistic_cell.transmitting = nil

--- @type float
---  (R)
--- Radius at which the robots hover when waiting to be charged.
logistic_cell.charge_approach_distance = nil

--- @type uint
---  (R)
--- Number of robots currently charging.
logistic_cell.charging_robot_count = nil

--- @type uint
---  (R)
--- Number of robots waiting to charge.
logistic_cell.to_charge_robot_count = nil

--- @type LuaEntity
---  (R)
--- This cell's owner.
logistic_cell.owner = nil

--- @type LuaLogisticNetwork
---  (R)
--- The network that owns this cell or `nil`.
logistic_cell.logistic_network = nil

--- @type LuaLogisticCell[]
---  (R)
--- Neighbouring cells.
logistic_cell.neighbours = {}

--- @type LuaEntity[]
---  (R)
--- Robots currently being charged.
logistic_cell.charging_robots = {}

--- @type LuaEntity[]
---  (R)
--- Robots waiting to charge.
logistic_cell.to_charge_robots = {}

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
logistic_cell.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
logistic_cell.object_name = nil



--- Is a given position within the logistic range of this cell?
--- 
--- @param position MapPosition         
function logistic_cell.is_in_logistic_range(position)
    position = nil
end


--- Is a given position within the construction range of this cell?
--- 
--- @param position MapPosition         
function logistic_cell.is_in_construction_range(position)
    position = nil
end


--- Are two cells neighbours?
--- 
--- @param other LuaLogisticCell        
function logistic_cell.is_neighbour_with(other)
    other = nil
end


--- All methods and properties that this object supports.
--- @return nil                         
function logistic_cell.help()
    return nil
end

