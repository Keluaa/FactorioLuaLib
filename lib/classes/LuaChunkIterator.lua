

--- @class LuaChunkIterator
--- A chunk iterator can be used for iterating chunks coordinates of a surface.
--- The returned type is a ChunkPositionAndArea containing the chunk coordinates and its area.
--- 
--- @see ChunkPositionAndArea @
local chunk_iterator = {}


--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
chunk_iterator.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
chunk_iterator.object_name = nil



--- All methods and properties that this object supports.
--- @return nil                         
function chunk_iterator.help()
    return nil
end

