

--- @class LuaStyle
--- Style of a GUI element. All of the attributes listed here may be `nil` if not available for a particular GUI
--- element.
local style = {}


--- @type LuaGui
---  (R)
--- Gui of the LuaGuiElement of this style.
--- 
--- @see LuaGuiElement @
style.gui = nil

--- @type string
---  (R)
--- Name of this style.
style.name = nil

--- @type int
---  (RW)
--- Minimal width ensures, that the widget will never be smaller than than that size. It can't be squashed to be
--- smaller.
style.minimal_width = nil

--- @type int
---  (RW)
--- Maximal width ensures, that the widget will never be bigger than than that size. It can't be stretched to be
--- bigger.
style.maximal_width = nil

--- @type int
---  (RW)
--- Minimal height ensures, that the widget will never be smaller than than that size. It can't be squashed to be
--- smaller.
style.minimal_height = nil

--- @type int
---  (RW)
--- Maximal height ensures, that the widget will never be bigger than than that size. It can't be stretched to be
--- bigger.
style.maximal_height = nil

--- @type int
---  (RW)
--- Natural width specifies the width of the element tries to have, but it can still be squashed/stretched to have a
--- smaller or bigger size.
style.natural_width = nil

--- @type int
---  (RW)
--- Natural height specifies the height of the element tries to have, but it can still be squashed/stretched to have a
--- smaller or bigger size.
style.natural_height = nil

--- @type int
---  (RW)
style.top_padding = nil

--- @type int
---  (RW)
style.right_padding = nil

--- @type int
---  (RW)
style.bottom_padding = nil

--- @type int
---  (RW)
style.left_padding = nil

--- @type int
---  (RW)
style.top_margin = nil

--- @type int
---  (RW)
style.right_margin = nil

--- @type int
---  (RW)
style.bottom_margin = nil

--- @type int
---  (RW)
style.left_margin = nil

--- @type string
---  (RW)
--- Horizontal align of the inner content of the widget, possible values are "left", "center" or "right"
style.horizontal_align = nil

--- @type string
---  (RW)
--- Vertical align of the inner content of the widget, possible values are "top", "center" or "bottom"
style.vertical_align = nil

--- @type Color
---  (RW)
style.font_color = nil

--- @type string
---  (RW)
style.font = nil

--- @type int
---  (RW)
--- Space between the table cell contents top and border.
style.top_cell_padding = nil

--- @type int
---  (RW)
--- Space between the table cell contents right and border.
style.right_cell_padding = nil

--- @type int
---  (RW)
--- Space between the table cell contents bottom and border.
style.bottom_cell_padding = nil

--- @type int
---  (RW)
--- Space between the table cell contents left and border.
style.left_cell_padding = nil

--- @type boolean
---  (RW)
--- If the GUI element stretches its size horizontally to other elements.
style.horizontally_stretchable = nil

--- @type boolean
---  (RW)
--- If the GUI element stretches its size vertically to other elements.
style.vertically_stretchable = nil

--- @type boolean
---  (RW)
--- If the GUI element can be squashed (by maximal width of some parent element) horizontally. This is mainly meant to
--- be used for scroll-pane The default value is false.
style.horizontally_squashable = nil

--- @type boolean
---  (RW)
--- If the GUI element can be squashed (by maximal height of some parent element) vertically. This is mainly meant to
--- be used for scroll-pane The default (parent) value for scroll pane is true, false otherwise.
style.vertically_squashable = nil

--- @type defines_rich_text_setting
---  (RW)
--- How this GUI element handles rich text.
style.rich_text_setting = nil

--- @type Color
---  (RW)
style.hovered_font_color = nil

--- @type Color
---  (RW)
style.clicked_font_color = nil

--- @type Color
---  (RW)
style.disabled_font_color = nil

--- @type Color
---  (RW)
style.pie_progress_color = nil

--- @type int
---  (RW)
style.clicked_vertical_offset = nil

--- @type Color
---  (RW)
style.selected_font_color = nil

--- @type Color
---  (RW)
style.selected_hovered_font_color = nil

--- @type Color
---  (RW)
style.selected_clicked_font_color = nil

--- @type Color
---  (RW)
style.strikethrough_color = nil

--- @type int
---  (RW)
--- Horizontal space between individual cells.
style.horizontal_spacing = nil

--- @type int
---  (RW)
--- Vertical space between individual cells.
style.vertical_spacing = nil

--- @type boolean
---  (RW)
style.use_header_filler = nil

--- @type uint
---  (RW)
style.bar_width = nil

--- @type Color
---  (RW)
style.color = nil

--- @type LuaCustomTable<uint, Alignment>
---  (R)
--- Array containing the alignment for every column of this table element. Even though this property is marked as read-
--- only, the alignment can be changed by indexing the LuaCustomTable, like so:
--- Custom table.
--- @see LuaCustomTable
style.column_alignments = nil

--- @type boolean
---  (RW)
style.single_line = nil

--- @type int
---  (RW)
style.extra_top_padding_when_activated = nil

--- @type int
---  (RW)
style.extra_bottom_padding_when_activated = nil

--- @type int
---  (RW)
style.extra_left_padding_when_activated = nil

--- @type int
---  (RW)
style.extra_right_padding_when_activated = nil

--- @type int
---  (RW)
style.extra_top_margin_when_activated = nil

--- @type int
---  (RW)
style.extra_bottom_margin_when_activated = nil

--- @type int
---  (RW)
style.extra_left_margin_when_activated = nil

--- @type int
---  (RW)
style.extra_right_margin_when_activated = nil

--- @type boolean
---  (RW)
style.stretch_image_to_widget_size = nil

--- @type string
---  (RW)
style.badge_font = nil

--- @type int
---  (RW)
style.badge_horizontal_spacing = nil

--- @type Color
---  (RW)
style.default_badge_font_color = nil

--- @type Color
---  (RW)
style.selected_badge_font_color = nil

--- @type Color
---  (RW)
style.disabled_badge_font_color = nil

--- @type int
---  (W)
--- Sets both minimal and maximal width to the given value.
style.width = nil

--- @type int
---  (W)
--- Sets both minimal and maximal height to the given value.
style.height = nil

--- @type int | int[]
---  (W)
--- Sets both width and height to the given value. Also accepts an array with two values, setting width to the first
--- and height to the second one.
style.size = nil

--- @type int | int[]
---  (W)
--- Sets top/right/bottom/left paddings to this value. An array with two values sets top/bottom padding to the first
--- value and left/right padding to the second value. An array with four values sets top, right, bottom, left padding
--- respectively.
style.padding = nil

--- @type int | int[]
---  (W)
--- Sets top/right/bottom/left margins to this value. An array with two values sets top/bottom margin to the first
--- value and left/right margin to the second value. An array with four values sets top, right, bottom, left margin
--- respectively.
style.margin = nil

--- @type int
---  (W)
--- Space between the table cell contents and border. Sets top/right/bottom/left cell paddings to this value.
style.cell_padding = nil

--- @type int | int[]
---  (W)
--- Sets extra_top/right/bottom/left_padding_when_actived to this value. An array with two values sets top/bottom
--- padding to the first value and left/right padding to the second value. An array with four values sets top, right,
--- bottom, left padding respectively.
style.extra_padding_when_activated = nil

--- @type int | int[]
---  (W)
--- Sets extra_top/right/bottom/left_margin_when_activated to this value. An array with two values sets top/bottom
--- margin to the first value and left/right margin to the second value. An array with four values sets top, right,
--- bottom, left margin respectively.
style.extra_margin_when_activated = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
style.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
style.object_name = nil



--- All methods and properties that this object supports.
--- @return nil                         
function style.help()
    return nil
end

