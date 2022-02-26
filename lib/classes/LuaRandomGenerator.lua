

--- @class LuaRandomGenerator
--- A deterministic random generator independent from the core games random generator that can be seeded and re-seeded
--- at will. This random generator can be saved and loaded and will maintain its state. Note this is entirely different
--- from calling [math.random](Libraries.html#math.random)() and you should be sure you actually want to use this over
--- calling `math.random()`. If you aren't sure if you need to use this over calling `math.random()` then you probably
--- don't need to use this.
local random_generator = {}


--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
random_generator.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
random_generator.object_name = nil



--- Re-seeds the random generator with the given value.
--- 
--- @param seed uint                    
function random_generator.re_seed(seed)
    seed = nil
end


--- All methods and properties that this object supports.
--- @return nil                         
function random_generator.help()
    return nil
end

