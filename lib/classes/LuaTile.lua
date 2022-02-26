

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
function tile.collides_with(layer)
    layer = nil
end


--- Is this tile marked for deconstruction?
--- @return nil                         
function tile.to_be_deconstructed()
    return nil
end


--- Orders deconstruction of this tile by the given force.
--- 
--- @overload fun(force: ForceIdentification)
--- @param force ForceIdentification    
--- @param player PlayerIdentification | nil (Optional) 
function tile.order_deconstruction(force, player)
    force = nil
    player = nil
end


--- Cancels deconstruction if it is scheduled, does nothing otherwise.
--- 
--- @overload fun(force: ForceIdentification)
--- @param force ForceIdentification    
--- @param player PlayerIdentification | nil (Optional) 
function tile.cancel_deconstruction(force, player)
    force = nil
    player = nil
end


--- All methods and properties that this object supports.
--- @return nil                         
function tile.help()
    return nil
end

