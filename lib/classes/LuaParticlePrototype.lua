

--- @class LuaParticlePrototype
--- Prototype of an optimized particle.
local particle_prototype = {}


--- @type string
---  (R)
--- Name of this prototype.
particle_prototype.name = nil

--- @type string
---  (R)
--- Order string of this prototype.
particle_prototype.order = nil

--- @type LocalisedString
---  (R)
particle_prototype.localised_name = nil

--- @type LocalisedString
---  (R)
particle_prototype.localised_description = nil

--- @type TriggerEffectItem
---  (R)
particle_prototype.regular_trigger_effect = nil

--- @type TriggerEffectItem
---  (R)
particle_prototype.ended_in_water_trigger_effect = nil

--- @type RenderLayer
---  (R)
particle_prototype.render_layer = nil

--- @type RenderLayer
---  (R)
particle_prototype.render_layer_when_on_ground = nil

--- @type uint
---  (R)
particle_prototype.life_time = nil

--- @type uint
---  (R)
particle_prototype.regular_trigger_effect_frequency = nil

--- @type float
---  (R)
particle_prototype.movement_modifier_when_on_ground = nil

--- @type float
---  (R)
particle_prototype.movement_modifier = nil

--- @type float
---  (R)
particle_prototype.mining_particle_frame_speed = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
particle_prototype.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
particle_prototype.object_name = nil



--- All methods and properties that this object supports.
--- @return nil                         
function particle_prototype.help()
    return nil
end

