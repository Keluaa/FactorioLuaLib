

--- @class LuaDecorativePrototype
--- Prototype of an optimized decorative.
local decorative_prototype = {}


--- @type string
---  (R)
--- Name of this prototype.
decorative_prototype.name = nil

--- @type string
---  (R)
--- Order string of this prototype.
decorative_prototype.order = nil

--- @type LocalisedString
---  (R)
decorative_prototype.localised_name = nil

--- @type LocalisedString
---  (R)
decorative_prototype.localised_description = nil

--- @type BoundingBox
---  (R)
--- The bounding box used for collision checking.
decorative_prototype.collision_box = nil

--- @type CollisionMask
---  (R)
--- The collision masks this decorative uses
decorative_prototype.collision_mask = nil

--- @type CollisionMaskWithFlags
---  (R)
decorative_prototype.collision_mask_with_flags = nil

--- @type AutoplaceSpecification
---  (R)
--- Autoplace specification for this decorative prototype. `nil` if none.
decorative_prototype.autoplace_specification = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
decorative_prototype.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
decorative_prototype.object_name = nil



--- All methods and properties that this object supports.
--- 
--- @return string
function decorative_prototype.help()
    return nil
end

