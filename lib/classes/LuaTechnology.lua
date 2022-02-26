

--- @class LuaTechnology
--- One research item.
local technology = {}


--- @type LuaForce
---  (R)
--- The force this technology belongs to.
technology.force = nil

--- @type string
---  (R)
--- Name of this technology.
technology.name = nil

--- @type LocalisedString
---  (R)
--- Localised name of this technology.
technology.localised_name = nil

--- @type LocalisedString
---  (R)
technology.localised_description = nil

--- @type LuaTechnologyPrototype
---  (R)
--- The prototype of this technology.
technology.prototype = nil

--- @type boolean
---  (RW)
--- Can this technology be researched?
technology.enabled = nil

--- @type boolean
---  (RW)
--- If this technology will be visible in the research GUI even though it is disabled.
technology.visible_when_disabled = nil

--- @type boolean
---  (R)
--- Is this an upgrade-type research?
technology.upgrade = nil

--- @type boolean
---  (RW)
--- Has this technology been researched? Switching from `false` to `true` will trigger the technology advancement
--- perks; switching from `true` to `false` will reverse them.
technology.researched = nil

--- @type table<string, LuaTechnology>
---  (R)
--- Prerequisites of this technology. The result maps technology name to the LuaTechnology object.
--- 
--- @see LuaTechnology @
technology.prerequisites = nil

--- @type Ingredient[]
---  (R)
--- The types of ingredients that labs will require to research this technology.
technology.research_unit_ingredients = {}

--- @type TechnologyModifier[]
---  (R)
--- Effects applied when this technology is researched.
technology.effects = {}

--- @type uint
---  (R)
--- The number of research units required for this technology.
technology.research_unit_count = nil

--- @type double
---  (R)
--- Amount of energy required to finish a unit of research.
technology.research_unit_energy = nil

--- @type string
---  (R)
--- Order string for this prototype.
technology.order = nil

--- @type uint
---  (RW)
--- The current level of this technology. For level-based technology writing to this is the same as researching the
--- technology to the previous level. Writing the level will set LuaTechnology::enabled to `true`.
--- 
--- @see LuaTechnology#enabled @
technology.level = nil

--- @type string
---  (R)
--- The count formula used for this infinite research or nil if this isn't an infinite research.
technology.research_unit_count_formula = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
technology.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
technology.object_name = nil



--- Reload this technology from its prototype.
--- @return nil                         
function technology.reload()
    return nil
end


--- All methods and properties that this object supports.
--- @return nil                         
function technology.help()
    return nil
end

