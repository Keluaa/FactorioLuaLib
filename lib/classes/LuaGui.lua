

--- @class LuaGui
--- The root of the GUI. This type houses the root elements, `top`, `left`, `center`, `goal`, and `screen`, to which
--- other elements can be added to be displayed on screen.
local gui = {}


--- 
--- Every player can have a different GUI state.
--- @type LuaPlayer
---  (R)
--- The player who owns this gui.
gui.player = nil

--- @type table<string, LuaGuiElement>
---  (R)
--- The children GUI elements mapped by name <> element.
gui.children = nil

--- @type LuaGuiElement
---  (R)
--- The top part of the GUI. It is a flow element inside a scroll pane element.
gui.top = nil

--- @type LuaGuiElement
---  (R)
--- The left part of the GUI. It is a flow element inside a scroll pane element.
gui.left = nil

--- @type LuaGuiElement
---  (R)
--- The center part of the GUI. It is a flow element.
gui.center = nil

--- @type LuaGuiElement
---  (R)
--- The flow used in the objectives window. It is a flow element. The objectives window is only visible when the flow
--- is not empty or the objective text is set.
gui.goal = nil

--- @type LuaGuiElement
---  (R)
--- For showing a GUI somewhere on the entire screen. It is an empty-widget element.
gui.screen = nil

--- @type LuaGuiElement
---  (R)
--- For showing a GUI somewhere relative to one of the game GUIs. It is an empty-widget element.
gui.relative = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
gui.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
gui.object_name = nil



--- Returns `true` if sprite_path is valid and contains loaded sprite, otherwise `false`. Sprite path of type `file`
--- doesn't validate if file exists.
--- 
--- @param sprite_path SpritePath       
--- @return boolean
function gui.is_valid_sprite_path(sprite_path)
    sprite_path = nil
    return nil
end


--- All methods and properties that this object supports.
--- 
--- @return string
function gui.help()
    return nil
end

