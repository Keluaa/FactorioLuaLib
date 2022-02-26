

--- @class LuaRecipePrototype
--- A crafting recipe prototype.
local recipe_prototype = {}


--- @type boolean
---  (R)
--- If this recipe prototype is enabled by default (enabled at the beginning of a game).
recipe_prototype.enabled = nil

--- @type string
---  (R)
--- Name of the recipe. This can be different than the name of the result items as there could be more recipes to make
--- the same item.
recipe_prototype.name = nil

--- @type LocalisedString
---  (R)
--- Localised name of the recipe.
recipe_prototype.localised_name = nil

--- @type LocalisedString
---  (R)
recipe_prototype.localised_description = nil

--- @type string
---  (R)
--- Category of the recipe.
recipe_prototype.category = nil

--- @type Ingredient[]
---  (R)
--- Ingredients for this recipe.
recipe_prototype.ingredients = {}

--- @type Product[]
---  (R)
--- The results of this recipe.
recipe_prototype.products = {}

--- @type Product
---  (R)
--- The main product of this recipe, `nil` if no main product is defined.
recipe_prototype.main_product = nil

--- @type boolean
---  (R)
--- Is the recipe hidden? Hidden recipe don't show up in the crafting menu.
recipe_prototype.hidden = nil

--- @type boolean
---  (R)
--- Is the recipe hidden from flow statistics (item/fluid production statistics)?
recipe_prototype.hidden_from_flow_stats = nil

--- @type boolean
---  (R)
--- Is the recipe hidden from player crafting? The recipe will still show up for selection in machines.
recipe_prototype.hidden_from_player_crafting = nil

--- @type boolean
---  (R)
--- Should this recipe always show "Made in" in the tooltip?
recipe_prototype.always_show_made_in = nil

--- @type double
---  (R)
--- Energy required to execute this recipe. This directly affects the crafting time: Recipe's energy is exactly its
--- crafting time in seconds, when crafted in an assembling machine with crafting speed exactly equal to one.
recipe_prototype.energy = nil

--- @type string
---  (R)
--- Order string. This is used to sort the crafting menu.
recipe_prototype.order = nil

--- @type LuaGroup
---  (R)
--- Group of this recipe.
recipe_prototype.group = nil

--- @type LuaGroup
---  (R)
--- Subgroup of this recipe.
recipe_prototype.subgroup = nil

--- @type uint
---  (R)
--- The multiplier used when this recipe is copied from an assembling machine to a requester chest. For each item in
--- the recipe the item count * this value is set in the requester chest.
recipe_prototype.request_paste_multiplier = nil

--- @type uint
---  (R)
--- Used to determine how many extra items are put into an assembling machine before it's considered "full enough".
recipe_prototype.overload_multiplier = nil

--- @type boolean
---  (R)
--- If the recipe is allowed to have the extra inserter overload bonus applied (4 * stack inserter stack size).
recipe_prototype.allow_inserter_overload = nil

--- @type boolean
---  (R)
--- If this recipe is enabled for the purpose of intermediate hand-crafting.
recipe_prototype.allow_as_intermediate = nil

--- @type boolean
---  (R)
--- If this recipe is allowed to use intermediate recipes when hand-crafting.
recipe_prototype.allow_intermediates = nil

--- @type boolean
---  (R)
--- If the amount is shown in the recipe tooltip title when the recipe produces more than 1 product.
recipe_prototype.show_amount_in_title = nil

--- @type boolean
---  (R)
--- If the products are always shown in the recipe tooltip.
recipe_prototype.always_show_products = nil

--- @type double
---  (R)
--- The emissions multiplier for this recipe.
recipe_prototype.emissions_multiplier = nil

--- @type boolean
---  (R)
--- Is this recipe allowed to be broken down for the recipe tooltip "Total raw" calculations?
recipe_prototype.allow_decomposition = nil

--- @type boolean
---  (R)
--- Is this recipe unlocks the result item(s) so they're shown in filter-select GUIs.
recipe_prototype.unlock_results = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
recipe_prototype.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
recipe_prototype.object_name = nil



--- All methods and properties that this object supports.
--- 
--- @return string
function recipe_prototype.help()
    return nil
end

