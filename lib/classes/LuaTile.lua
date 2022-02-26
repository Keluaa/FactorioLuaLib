

--- @class LuaTile
--- A single "square" on the map.
local tile = {}


--- @type string
---  (R)
--- Prototype name of this tile. E.g. `"sand-3"` or `"grass-2"`.
tile.name = nil

--- @type LuaTilePrototype
---  (R)
tile.prototype = nil

--- @type TilePosition
---  (R)
--- The position this tile references.
tile.position = nil

--- @type string
---  (R)
--- The name of the LuaTilePrototype hidden under this tile or `nil` if there is no hidden tile. During normal
--- gameplay, only non-mineable tiles can become hidden. This can however be circumvented with
--- LuaSurface::set_hidden_tile.
--- 
--- @see LuaSurface#set_hidden_tile @
--- @see LuaTilePrototype#mineable_properties @
--- @see LuaTilePrototype @
tile.hidden_tile = nil

--- @type LuaSurface
---  (R)
--- The surface this tile is on.
tile.surface = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
tile.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
tile.object_name = nil



--- What type of things can collide with this tile?
--- 
--- @param layer CollisionMaskLayer     
--- @return boolean
function tile.collides_with(layer)
    layer = nil
    return nil
end


--- Is this tile marked for deconstruction?
--- 
--- @return boolean
function tile.to_be_deconstructed()
    return nil
end


--- Orders deconstruction of this tile by the given force.
--- 
--- May raise the following events:
---  - on_marked_for_deconstruction:
---    @see on_marked_for_deconstruction@
---    Raised instantly, conditionally.
---    Raised if the tile was successfully marked for deconstruction.
--- 
--- @overload fun(force: ForceIdentification): LuaEntity
--- 
--- @param force ForceIdentification    
--- @param player PlayerIdentification | nil (Optional) 
--- @return LuaEntity                    The deconstructible tile proxy created, if any.
function tile.order_deconstruction(force, player)
    force = nil
    player = nil
    return nil
end


--- Cancels deconstruction if it is scheduled, does nothing otherwise.
--- 
--- May raise the following events:
---  - on_cancelled_deconstruction:
---    @see on_cancelled_deconstruction@
---    Raised instantly, conditionally.
---    Raised if the tile's deconstruction was successfully cancelled.
--- 
--- @overload fun(force: ForceIdentification)
--- 
--- @param force ForceIdentification    
--- @param player PlayerIdentification | nil (Optional) 
function tile.cancel_deconstruction(force, player)
    force = nil
    player = nil
end


--- All methods and properties that this object supports.
--- 
--- @return string
function tile.help()
    return nil
end

