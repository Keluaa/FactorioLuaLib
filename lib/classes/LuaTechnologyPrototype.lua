

--- @class LuaTechnologyPrototype
--- A Technology prototype.
local technology_prototype = {}


--- @type string
---  (R)
--- Name of this technology.
technology_prototype.name = nil

--- @type LocalisedString
---  (R)
--- Localised name of this technology.
technology_prototype.localised_name = nil

--- @type LocalisedString
---  (R)
technology_prototype.localised_description = nil

--- @type boolean
---  (R)
--- If this technology prototype is enabled by default (enabled at the beginning of a game).
technology_prototype.enabled = nil

--- @type boolean
---  (R)
--- If this technology prototype is hidden.
technology_prototype.hidden = nil

--- @type boolean
---  (R)
--- If this technology will be visible in the research GUI even though it is disabled.
technology_prototype.visible_when_disabled = nil

--- @type boolean
---  (R)
--- If this technology ignores the technology cost multiplier setting.
technology_prototype.ignore_tech_cost_multiplier = nil

--- @type boolean
---  (R)
--- If the is technology prototype is an upgrade to some other technology.
technology_prototype.upgrade = nil

--- @type table<string, LuaTechnologyPrototype>
---  (R)
--- Prerequisites of this technology. The result maps technology name to the LuaTechnologyPrototype object.
--- 
--- @see LuaTechnologyPrototype @
technology_prototype.prerequisites = nil

--- @type Ingredient[]
---  (R)
--- The types of ingredients that labs will require to research this technology.
technology_prototype.research_unit_ingredients = {}

--- @type TechnologyModifier[]
---  (R)
--- Effects applied when this technology is researched.
technology_prototype.effects = {}

--- @type uint
---  (R)
--- The number of research units required for this technology.
technology_prototype.research_unit_count = nil

--- @type double
---  (R)
--- Amount of energy required to finish a unit of research.
technology_prototype.research_unit_energy = nil

--- @type string
---  (R)
--- Order string for this prototype.
technology_prototype.order = nil

--- @type uint
---  (R)
--- The level of this research.
technology_prototype.level = nil

--- @type uint
---  (R)
--- The max level of this research.
technology_prototype.max_level = nil

--- @type string
---  (R)
--- The count formula used for this infinite research or nil if this isn't an infinite research.
technology_prototype.research_unit_count_formula = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
technology_prototype.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
technology_prototype.object_name = nil



--- All methods and properties that this object supports.
--- @return nil                         
function technology_prototype.help()
    return nil
end

