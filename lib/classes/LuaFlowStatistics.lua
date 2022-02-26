

--- @class LuaFlowStatistics
--- Encapsulates statistic data for different parts of the game. In the context of flow statistics, `input` and
--- `output` describe on which side of the associated GUI the values are shown. Input values are shown on the left
--- side, output values on the right side.
--- Examples:
--- - The item production GUI shows "consumption" on the right, thus `output` describes the item consumption numbers.
--- The same goes for fluid consumption.
--- - The kills gui shows "losses" on the right, so `output` describes how many of the force's entities were killed by
--- enemies.
--- - The electric network GUI shows "power consumption" on the left side, so in this case `input` describes the power
--- consumption numbers.
local flow_statistics = {}


--- @type table<string, uint64 | double>
---  (R)
--- List of input counts indexed by prototype name. Represents the data that is shown on the left side of the GUI for
--- the given statistics.
flow_statistics.input_counts = nil

--- @type table<string, uint64 | double>
---  (R)
--- List of output counts indexed by prototype name. Represents the data that is shown on the right side of the GUI for
--- the given statistics.
flow_statistics.output_counts = nil

--- @type LuaForce
---  (R)
--- The force these statistics belong to or `nil` for pollution statistics.
flow_statistics.force = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
flow_statistics.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
flow_statistics.object_name = nil



--- Gets the total input count for a given prototype.
--- 
--- @param name string                  
function flow_statistics.get_input_count(name)
    name = nil
end


--- Sets the total input count for a given prototype.
--- 
--- @param name string                  
--- @param count uint64 | double        
function flow_statistics.set_input_count(name, count)
    name = nil
    count = nil
end


--- Gets the total output count for a given prototype.
--- 
--- @param name string                  
function flow_statistics.get_output_count(name)
    name = nil
end


--- Sets the total output count for a given prototype.
--- 
--- @param name string                  
--- @param count uint64 | double        
function flow_statistics.set_output_count(name, count)
    name = nil
    count = nil
end


--- @alias LuaFlowStatistics_get_flow_count_p
--- @field name string                   The prototype name.
--- @field input boolean                 Read the input values or the output values
--- @field precision_index defines_flow_precision_index The precision to read.
--- @field count boolean | nil           (Optional)  If true, the count is returned instead of the per-time-frame value.

--- Gets the flow count value for the given time frame.
--- 
--- @param params LuaFlowStatistics_get_flow_count_p
function flow_statistics.get_flow_count(params)
    params = nil
end


--- Adds a value to this flow statistics.
--- 
--- @param name string                  
--- @param count float                  
function flow_statistics.on_flow(name, count)
    name = nil
    count = nil
end


--- Reset all the statistics data to 0.
--- @return nil                         
function flow_statistics.clear()
    return nil
end


--- All methods and properties that this object supports.
--- @return nil                         
function flow_statistics.help()
    return nil
end

