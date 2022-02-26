

--- @class LuaRecipe
--- A crafting recipe. Recipes belong to forces (see LuaForce) because some recipes are unlocked by research, and
--- researches are per-force.
--- 
--- @see LuaForce @
local recipe = {}


--- @type string
---  (R)
--- Name of the recipe. This can be different than the name of the result items as there could be more recipes to make
--- the same item.
recipe.name = nil

--- @type LocalisedString
---  (R)
--- Localised name of the recipe.
recipe.localised_name = nil

--- @type LocalisedString
---  (R)
recipe.localised_description = nil

--- @type LuaRecipePrototype
---  (R)
--- The prototype for this recipe.
recipe.prototype = nil

--- @type boolean
---  (RW)
--- Can the recipe be used?
recipe.enabled = nil

--- @type string
---  (R)
--- Category of the recipe.
recipe.category = nil

--- @type Ingredient[]
---  (R)
--- Ingredients for this recipe.
recipe.ingredients = {}

--- @type Product[]
---  (R)
--- The results of this recipe.
recipe.products = {}

--- @type boolean
---  (R)
--- Is the recipe hidden? Hidden recipe don't show up in the crafting menu.
recipe.hidden = nil

--- @type boolean
---  (RW)
--- Is the recipe hidden from flow statistics?
recipe.hidden_from_flow_stats = nil

--- @type double
---  (R)
--- Energy required to execute this recipe. This directly affects the crafting time: Recipe's energy is exactly its
--- crafting time in seconds, when crafted in an assembling machine with crafting speed exactly equal to one.
recipe.energy = nil

--- @type string
---  (R)
--- Order string. This is used to sort the crafting menu.
recipe.order = nil

--- @type LuaGroup
---  (R)
--- Group of this recipe.
recipe.group = nil

--- @type LuaGroup
---  (R)
--- Subgroup of this recipe.
recipe.subgroup = nil

--- @type LuaForce
---  (R)
--- The force that owns this recipe.
recipe.force = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
recipe.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
recipe.object_name = nil



--- Reload the recipe from the prototype.
--- @return nil                         
function recipe.reload()
    return nil
end


--- All methods and properties that this object supports.
--- @return nil                         
function recipe.help()
    return nil
end

