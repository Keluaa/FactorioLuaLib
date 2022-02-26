

--- @class LuaCustomInputPrototype
--- Prototype of a custom input.
local custom_input_prototype = {}


--- @type string
---  (R)
--- Name of this prototype.
custom_input_prototype.name = nil

--- @type string
---  (R)
--- Order string of this prototype.
custom_input_prototype.order = nil

--- @type LocalisedString
---  (R)
custom_input_prototype.localised_name = nil

--- @type LocalisedString
---  (R)
custom_input_prototype.localised_description = nil

--- @type string
---  (R)
--- The default key sequence for this custom input.
custom_input_prototype.key_sequence = nil

--- @type string
---  (R)
--- The default alternative key sequence for this custom input. `nil` when not defined.
custom_input_prototype.alternative_key_sequence = nil

--- @type string
---  (R)
--- The linked game control name or `nil`.
custom_input_prototype.linked_game_control = nil

--- @type string
---  (R)
--- The consuming type: `"none"` or `"game-only"`.
custom_input_prototype.consuming = nil

--- @type string
---  (R)
--- The action that happens when this custom input is triggered.
custom_input_prototype.action = nil

--- @type boolean
---  (R)
--- If this custom input is enabled. Disabled custom inputs exist but are not used by the game.
custom_input_prototype.enabled = nil

--- @type boolean
---  (R)
--- If this custom input is enabled while using the spectator controller.
custom_input_prototype.enabled_while_spectating = nil

--- @type boolean
---  (R)
--- If this custom input is enabled while using the cutscene controller.
custom_input_prototype.enabled_while_in_cutscene = nil

--- @type boolean
---  (R)
--- If this custom input will include the selected prototype (if any) when triggered.
custom_input_prototype.include_selected_prototype = nil

--- @type LuaItemPrototype
---  (R)
--- The item that gets spawned when this custom input is fired or `nil`.
custom_input_prototype.item_to_spawn = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
custom_input_prototype.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
custom_input_prototype.object_name = nil



--- All methods and properties that this object supports.
--- @return nil                         
function custom_input_prototype.help()
    return nil
end

