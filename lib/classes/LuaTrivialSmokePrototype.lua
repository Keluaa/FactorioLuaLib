

--- @class LuaTrivialSmokePrototype
--- Prototype of a trivial smoke.
local trivial_smoke_prototype = {}


--- @type string
---  (R)
--- Name of this prototype.
trivial_smoke_prototype.name = nil

--- @type string
---  (R)
--- Order string of this prototype.
trivial_smoke_prototype.order = nil

--- @type LocalisedString
---  (R)
trivial_smoke_prototype.localised_name = nil

--- @type LocalisedString
---  (R)
trivial_smoke_prototype.localised_description = nil

--- @type Color
---  (R)
trivial_smoke_prototype.color = nil

--- @type double
---  (R)
trivial_smoke_prototype.start_scale = nil

--- @type double
---  (R)
trivial_smoke_prototype.end_scale = nil

--- @type double
---  (R)
trivial_smoke_prototype.movement_slow_down_factor = nil

--- @type uint
---  (R)
trivial_smoke_prototype.duration = nil

--- @type uint
---  (R)
trivial_smoke_prototype.spread_duration = nil

--- @type uint
---  (R)
trivial_smoke_prototype.fade_away_duration = nil

--- @type uint
---  (R)
trivial_smoke_prototype.fade_in_duration = nil

--- @type uint
---  (R)
trivial_smoke_prototype.glow_fade_away_duration = nil

--- @type boolean
---  (R)
trivial_smoke_prototype.cyclic = nil

--- @type boolean
---  (R)
trivial_smoke_prototype.affected_by_wind = nil

--- @type boolean
---  (R)
trivial_smoke_prototype.show_when_smoke_off = nil

--- @type boolean
---  (R)
trivial_smoke_prototype.glow_animation = nil

--- @type RenderLayer
---  (R)
trivial_smoke_prototype.render_layer = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
trivial_smoke_prototype.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
trivial_smoke_prototype.object_name = nil



--- All methods and properties that this object supports.
--- @return nil                         
function trivial_smoke_prototype.help()
    return nil
end

