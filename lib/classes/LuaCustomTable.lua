

--- @class LuaCustomTable<K, V>
--- Lazily evaluated table. For performance reasons, we sometimes return a custom table-like type instead of a native
--- Lua table. This custom type lazily constructs the necessary Lua wrappers of the corresponding C++ objects,
--- therefore preventing their unnecessary construction in some cases.
--- There are some notable consequences to the usage of a custom table type rather than the native Lua table type:
--- Iterating a custom table is only possible using the `pairs` Lua function; `ipairs` won't work. Another key
--- difference is that custom tables cannot be serialised into a game save file -- if saving the game would require
--- serialisation of a custom table, an error will be displayed and the game will not be saved.
--- @field [K | any] V
local custom_table = {}


--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
custom_table.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
custom_table.object_name = nil



--- All methods and properties that this object supports.
--- 
--- @return string
function custom_table.help()
    return nil
end

