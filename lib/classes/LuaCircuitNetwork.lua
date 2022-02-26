

--- @class LuaCircuitNetwork
--- A circuit network associated with a given entity, connector, and wire type.
local circuit_network = {}


--- @type LuaEntity
---  (R)
--- The entity this circuit network reference is associated with
circuit_network.entity = nil

--- @type defines_wire_type
---  (R)
--- The wire type this network is associated with.
circuit_network.wire_type = nil

--- @type defines_circuit_connector_id
---  (R)
--- The circuit connector ID on the associated entity this network was gotten from.
circuit_network.circuit_connector_id = nil

--- @type Signal[]
---  (R)
--- The circuit network signals last tick. `nil` if there are no signals.
circuit_network.signals = {}

--- @type uint
---  (R)
--- The circuit networks ID.
circuit_network.network_id = nil

--- @type uint
---  (R)
--- The number of circuits connected to this network.
circuit_network.connected_circuit_count = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
circuit_network.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
circuit_network.object_name = nil



--- @param signal SignalID              
function circuit_network.get_signal(signal)
    signal = nil
end


--- All methods and properties that this object supports.
--- @return nil                         
function circuit_network.help()
    return nil
end

