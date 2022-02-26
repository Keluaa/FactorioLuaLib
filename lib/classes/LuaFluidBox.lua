

--- @class LuaFluidBox
--- An array of fluid boxes of an entity. Entities may contain more than one fluid box, and some can change the number
--- of fluid boxes -- for instance, an assembling machine will change its number of fluid boxes depending on its active
--- recipe.
--- See Fluid
--- Do note that reading from a LuaFluidBox creates a new table and writing will copy the given fields from the table
--- into the engine's own fluid box structure. Therefore, the correct way to update a fluidbox of an entity is to read
--- it first, modify the table, then write the modified table back. Directly accessing the returned table's attributes
--- won't have the desired effect.
--- 
--- @see LuaFluidBox @
--- @see Fluid @
local fluid_box = {}


--- @type LuaEntity
---  (R)
--- The entity that owns this fluidbox.
fluid_box.owner = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
fluid_box.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
fluid_box.object_name = nil



--- The prototype of this fluidbox index.
--- 
--- @param index uint                   
--- @return LuaFluidBoxPrototype
function fluid_box.get_prototype(index)
    index = nil
    return nil
end


--- The capacity of the given fluidbox index.
--- 
--- @param index uint                   
--- @return double
function fluid_box.get_capacity(index)
    index = nil
    return nil
end


--- The fluidbox connections for the given fluidbox index.
--- 
--- @param index uint                   
--- @return LuaFluidBox[]
function fluid_box.get_connections(index)
    index = nil
    return {}
end


--- Get a fluid box filter
--- 
--- @param index uint                   
--- @return FluidBoxFilter               The filter at the requested index, or `nil` if there isn't one.
function fluid_box.get_filter(index)
    index = nil
    return nil
end


--- Set a fluid box filter.
--- 
--- @overload fun(index: uint): boolean
--- 
--- @param index uint                   
--- @param filter FluidBoxFilterSpec | nil (Optional) 
--- @return boolean                      Whether the filter was set successfully.
function fluid_box.set_filter(index, filter)
    index = nil
    filter = nil
    return nil
end


--- Flow through the fluidbox in the last tick. It is the larger of in-flow and out-flow.
--- 
--- @param index uint                   
--- @return double
function fluid_box.get_flow(index)
    index = nil
    return nil
end


--- Returns the fluid the fluidbox is locked onto
--- 
--- @param index uint                   
--- @return string                       `nil` if the fluidbox is not locked to any fluid.
function fluid_box.get_locked_fluid(index)
    index = nil
    return nil
end


--- Gets unique fluid system identifier of selected fluid box. May return nil for fluid wagon, fluid turret's internal
--- buffer or a fluidbox which does not belong to a fluid system
--- 
--- @param index uint                   
--- @return uint
function fluid_box.get_fluid_system_id(index)
    index = nil
    return nil
end


--- Flushes all fluid from this fluidbox and its fluid system.
--- 
--- @overload fun(index: uint): table<string, float>
--- 
--- @param index uint                   
--- @param fluid FluidIdentification | nil (Optional) 
--- @return table<string, float>         The removed fluid.
function fluid_box.flush(index, fluid)
    index = nil
    fluid = nil
    return nil
end


--- All methods and properties that this object supports.
--- 
--- @return string
function fluid_box.help()
    return nil
end

