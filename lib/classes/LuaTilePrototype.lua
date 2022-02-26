

--- @class LuaTilePrototype
--- Prototype of a tile.
local tile_prototype = {}


--- @type string
---  (R)
--- Name of this prototype.
tile_prototype.name = nil

--- @type string
---  (R)
--- Order string of this prototype.
tile_prototype.order = nil

--- @type LocalisedString
---  (R)
tile_prototype.localised_name = nil

--- @type LocalisedString
---  (R)
tile_prototype.localised_description = nil

--- @type CollisionMask
---  (R)
--- The collision mask this tile uses
tile_prototype.collision_mask = nil

--- @type CollisionMaskWithFlags
---  (R)
tile_prototype.collision_mask_with_flags = nil

--- @type uint
---  (R)
tile_prototype.layer = nil

--- @type AutoplaceSpecification
---  (R)
--- Autoplace specification for this prototype. `nil` if none.
tile_prototype.autoplace_specification = nil

--- @type float
---  (R)
tile_prototype.walking_speed_modifier = nil

--- @type float
---  (R)
tile_prototype.vehicle_friction_modifier = nil

--- @type Color
---  (R)
tile_prototype.map_color = nil

--- @type float
---  (R)
--- The probability that decorative entities will be removed from on top of this tile when this tile is generated.
tile_prototype.decorative_removal_probability = nil

--- @type boolean
---  (R)
tile_prototype.automatic_neighbors = nil

--- @type table<string, LuaTilePrototype>
---  (R)
tile_prototype.allowed_neighbors = nil

--- @type boolean
---  (R)
--- If this tile needs correction logic applied when it's generated in the world..
tile_prototype.needs_correction = nil

--- @type table
---  (R)
tile_prototype.mineable_properties = nil

--- @type LuaTilePrototype
---  (R)
--- The next direction of this tile or `nil` - used when a tile has multiple directions (such as hazard concrete)
tile_prototype.next_direction = nil

--- @type SimpleItemStack[]
---  (R)
--- Items that when placed will produce this tile. It is a dictionary indexed by the item prototype name.
tile_prototype.items_to_place_this = {}

--- @type boolean
---  (R)
--- False if this tile is not allowed in blueprints regardless of the ability to build it.
tile_prototype.can_be_part_of_blueprint = nil

--- @type double
---  (R)
--- Amount of pollution emissions per second this tile will absorb.
tile_prototype.emissions_per_second = nil

--- @type boolean
---  (R)
--- True if building this tile should check for colliding entities above and prevent building if such are found. Also
--- during mining tiles above this tile checks for entities colliding with this tile and prevents mining if such are
--- found.
tile_prototype.check_collision_with_entities = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
tile_prototype.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
tile_prototype.object_name = nil



--- All methods and properties that this object supports.
--- 
--- @return string
function tile_prototype.help()
    return nil
end

