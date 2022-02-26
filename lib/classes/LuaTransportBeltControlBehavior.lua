

--- @class LuaTransportBeltControlBehavior : LuaGenericOnOffControlBehavior
--- Control behavior for transport belts.
local transport_belt_control_behavior = {}


--- @type boolean
---  (RW)
--- If the belt will be enabled/disabled based off the circuit network.
transport_belt_control_behavior.enable_disable = nil

--- @type boolean
---  (RW)
--- If the belt will read the contents and send them to the circuit network.
transport_belt_control_behavior.read_contents = nil

--- @type defines_control_behavior_transport_belt_content_read_mode
---  (RW)
--- The read mode for the belt.
transport_belt_control_behavior.read_contents_mode = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
transport_belt_control_behavior.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
transport_belt_control_behavior.object_name = nil



--- All methods and properties that this object supports.
--- 
--- @return string
function transport_belt_control_behavior.help()
    return nil
end

