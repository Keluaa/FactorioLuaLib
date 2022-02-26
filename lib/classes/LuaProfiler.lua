

--- @class LuaProfiler
--- An object used to measure script performance.
local profiler = {}


--- 
--- Since performance is non-deterministic, these objects don't allow reading the raw time values from Lua. They can be
--- used anywhere a LocalisedString is used, except for LuaGuiElement::add's LocalisedString arguments,
--- LuaSurface::create_entity's `text` argument, and LuaEntity::add_market_item.
--- 
--- @see LuaEntity#add_market_item @
--- @see LuaSurface#create_entity @
--- @see LuaGuiElement#add @
--- @see LocalisedString @
--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
profiler.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
profiler.object_name = nil



--- Resets the clock, also restarting it.
--- 
--- @return nil
function profiler.reset()
    return nil
end


--- Stops the clock.
--- 
--- @return nil
function profiler.stop()
    return nil
end


--- Start the clock again, without resetting it.
--- 
--- @return nil
function profiler.restart()
    return nil
end


--- Add the duration of another timer to this timer. Useful to reduce start/stop overhead when accumulating time onto
--- many timers at once.
--- 
--- @param other LuaProfiler            
function profiler.add(other)
    other = nil
end


--- Divides the current duration by a set value. Useful for calculating the average of many iterations.
--- 
--- @param number double                
function profiler.divide(number)
    number = nil
end


--- All methods and properties that this object supports.
--- 
--- @return string
function profiler.help()
    return nil
end

