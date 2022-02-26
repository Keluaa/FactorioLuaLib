

--- @class LuaControlBehavior
--- The control behavior for an entity. Inserters have logistic network and circuit network behavior logic, lamps have
--- circuit logic and so on. This is an abstract base class that concrete control behaviors inherit.
local control_behavior = {}


--- 
--- An control reference becomes invalid once the control behavior is removed or the entity (see LuaEntity) it resides
--- in is destroyed.
--- 
--- @see LuaEntity @
--- @type defines_control_behavior_type
---  (R)
--- The concrete type of this control behavior.
control_behavior.type = nil

--- @type LuaEntity
---  (R)
--- The entity this control behavior belongs to.
control_behavior.entity = nil



--- @overload fun(wire: defines_wire_type)
--- @param wire defines_wire_type       
--- @param circuit_connector defines_circuit_connector_id | nil (Optional) 
function control_behavior.get_circuit_network(wire, circuit_connector)
    wire = nil
    circuit_connector = nil
end

