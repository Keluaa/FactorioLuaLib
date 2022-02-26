

--- @class LuaCustomChartTag
--- A custom tag that shows on the map view.
local custom_chart_tag = {}


--- @type SignalID
---  (RW)
--- This tag's icon, if it has one. Writing `nil` removes it.
custom_chart_tag.icon = nil

--- @type LuaPlayer
---  (RW)
--- The player who last edited this tag.
custom_chart_tag.last_user = nil

--- @type MapPosition
---  (R)
--- The position of this tag.
custom_chart_tag.position = nil

--- @type string
---  (RW)
custom_chart_tag.text = nil

--- @type uint
---  (R)
--- The unique ID for this tag on this force.
custom_chart_tag.tag_number = nil

--- @type LuaForce
---  (R)
--- The force this tag belongs to.
custom_chart_tag.force = nil

--- @type LuaSurface
---  (R)
--- The surface this tag belongs to.
custom_chart_tag.surface = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
custom_chart_tag.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
custom_chart_tag.object_name = nil



--- Destroys this tag.
--- 
--- @return nil
function custom_chart_tag.destroy()
    return nil
end


--- All methods and properties that this object supports.
--- 
--- @return string
function custom_chart_tag.help()
    return nil
end

