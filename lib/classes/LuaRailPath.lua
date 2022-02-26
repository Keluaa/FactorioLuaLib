

--- @class LuaRailPath
--- A rail path.
local rail_path = {}


--- @type uint
---  (R)
--- The total number of rails in this path.
rail_path.size = nil

--- @type uint
---  (R)
--- The current rail index.
rail_path.current = nil

--- @type double
---  (R)
--- The total path distance.
rail_path.total_distance = nil

--- @type double
---  (R)
--- The total distance travelled.
rail_path.travelled_distance = nil

--- @type LuaCustomTable<uint, LuaEntity>
---  (R)
--- Array of the rails that this path travels over.
--- Custom table.
--- @see LuaCustomTable
rail_path.rails = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
rail_path.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
rail_path.object_name = nil



--- All methods and properties that this object supports.
--- 
--- @return string
function rail_path.help()
    return nil
end

