

--- @class LuaFluidBoxPrototype
--- A prototype of a fluidbox owned by some LuaEntityPrototype.
--- 
--- @see LuaEntityPrototype @
local fluid_box_prototype = {}


--- @type LuaEntityPrototype
---  (R)
--- The entity that this belongs to.
fluid_box_prototype.entity = nil

--- @type uint
---  (R)
--- The index of this fluidbox prototype in the owning entity.
fluid_box_prototype.index = nil

--- @type FluidBoxConnection[]
---  (R)
--- The pipe connection points.
fluid_box_prototype.pipe_connections = {}

--- @type string
---  (R)
--- The production type. "input", "output", "input-output", or "none".
fluid_box_prototype.production_type = nil

--- @type double
---  (R)
fluid_box_prototype.base_area = nil

--- @type double
---  (R)
fluid_box_prototype.base_level = nil

--- @type double
---  (R)
fluid_box_prototype.height = nil

--- @type double
---  (R)
fluid_box_prototype.volume = nil

--- @type LuaFluidPrototype
---  (R)
--- The filter or `nil` if no filter is set.
fluid_box_prototype.filter = nil

--- @type double
---  (R)
--- The minimum temperature or `nil` if none is set.
fluid_box_prototype.minimum_temperature = nil

--- @type double
---  (R)
--- The maximum temperature or `nil` if none is set.
fluid_box_prototype.maximum_temperature = nil

--- @type int[]
---  (R)
--- The secondary draw orders for the 4 possible connection directions.
fluid_box_prototype.secondary_draw_orders = {}

--- @type string
---  (R)
--- The render layer.
fluid_box_prototype.render_layer = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
fluid_box_prototype.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
fluid_box_prototype.object_name = nil



--- All methods and properties that this object supports.
--- 
--- @return string
function fluid_box_prototype.help()
    return nil
end

