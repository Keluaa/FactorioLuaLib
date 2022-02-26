

--- @class LuaLazyLoadedValue<A>
--- A lazily loaded value. For performance reasons, we sometimes return a custom lazily-loaded value type instead of
--- the native Lua value. This custom type lazily constructs the necessary value when LuaLazyLoadedValue::get is
--- called, therefore preventing its unnecessary construction in some cases.
--- An instance of LuaLazyLoadedValue is only valid during the event it was created from and cannot be saved.
--- 
--- @see LuaLazyLoadedValue#get @
local lazy_loaded_value = {}


--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
lazy_loaded_value.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
lazy_loaded_value.object_name = nil



--- Gets the value of this lazy loaded value.
--- 
--- @return A
function lazy_loaded_value.get()
    return nil
end


--- All methods and properties that this object supports.
--- 
--- @return string
function lazy_loaded_value.help()
    return nil
end

