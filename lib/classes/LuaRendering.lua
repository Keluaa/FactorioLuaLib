

--- @class LuaRendering
--- Allows rendering of geometric shapes, text and sprites in the game world. Each render object is identified by an id
--- that is universally unique for the lifetime of a whole game.
local rendering = {}


--- 
--- If an entity target of an object is destroyed or changes surface, then the object is also destroyed.
--- @type string
---  (R)
--- This object's name.
rendering.object_name = nil



--- @alias LuaRendering_draw_line_p
--- @field color Color                   
--- @field width float                   In pixels (32 per tile).
--- @field gap_length double | nil       (Optional)  Length of the gaps that this line has, in tiles. Default is 0.
--- @field dash_length double | nil      (Optional)  Length of the dashes that this line has. Used only if gap_length > 0. Default is 0.
--- @field from MapPosition | LuaEntity  
--- @field from_offset Vector | nil      (Optional)  Only used if `from` is a LuaEntity.
--- @field to MapPosition | LuaEntity    
--- @field to_offset Vector | nil        (Optional)  Only used if `to` is a LuaEntity.
--- @field surface SurfaceIdentification 
--- @field time_to_live uint | nil       (Optional)  In ticks. Defaults to living forever.
--- @field forces ForceIdentification[] | nil (Optional)  The forces that this object is rendered to.
--- @field players PlayerIdentification[] | nil (Optional)  The players that this object is rendered to.
--- @field visible boolean | nil         (Optional)  If this is rendered to anyone at all. Defaults to true.
--- @field draw_on_ground boolean | nil  (Optional)  If this should be drawn below sprites and entities.
--- @field only_in_alt_mode boolean | nil (Optional)  If this should only be rendered in alt mode. Defaults to false.

--- Create a line.
--- 
--- @param params LuaRendering_draw_line_p
--- @return uint64                       Id of the render object
function rendering.draw_line(params)
    params = nil
    return nil
end


--- @alias LuaRendering_draw_text_p
--- @field text LocalisedString          The text to display.
--- @field surface SurfaceIdentification 
--- @field target MapPosition | LuaEntity 
--- @field target_offset Vector | nil    (Optional)  Only used if `target` is a LuaEntity.
--- @field color Color                   
--- @field scale double | nil            (Optional)  
--- @field font string | nil             (Optional)  Name of font to use. Defaults to the same font as flying-text.
--- @field time_to_live uint | nil       (Optional)  In ticks. Defaults to living forever.
--- @field forces ForceIdentification[] | nil (Optional)  The forces that this object is rendered to.
--- @field players PlayerIdentification[] | nil (Optional)  The players that this object is rendered to.
--- @field visible boolean | nil         (Optional)  If this is rendered to anyone at all. Defaults to true.
--- @field draw_on_ground boolean | nil  (Optional)  If this should be drawn below sprites and entities.
--- @field orientation RealOrientation | nil (Optional)  The orientation of the text. Default is 0.
--- @field alignment string | nil        (Optional)  Defaults to "left". Other options are "right" and "center".
--- @field vertical_alignment string | nil (Optional)  Defaults to "top". Other options are "middle", "baseline" and "bottom".
--- @field scale_with_zoom boolean | nil (Optional)  Defaults to false. If true, the text scales with player zoom, resulting in it always being the same size on screen, and the size compared to the game world changes.
--- @field only_in_alt_mode boolean | nil (Optional)  If this should only be rendered in alt mode. Defaults to false.

--- Create a text.
--- 
--- @param params LuaRendering_draw_text_p
--- @return uint64                       Id of the render object
function rendering.draw_text(params)
    params = nil
    return nil
end


--- @alias LuaRendering_draw_circle_p
--- @field color Color                   
--- @field radius double                 In tiles.
--- @field width float | nil             (Optional)  Width of the outline, used only if filled = false. Value is in pixels (32 per tile).
--- @field filled boolean                If the circle should be filled.
--- @field target MapPosition | LuaEntity 
--- @field target_offset Vector | nil    (Optional)  Only used if `target` is a LuaEntity.
--- @field surface SurfaceIdentification 
--- @field time_to_live uint | nil       (Optional)  In ticks. Defaults to living forever.
--- @field forces ForceIdentification[] | nil (Optional)  The forces that this object is rendered to.
--- @field players PlayerIdentification[] | nil (Optional)  The players that this object is rendered to.
--- @field visible boolean | nil         (Optional)  If this is rendered to anyone at all. Defaults to true.
--- @field draw_on_ground boolean | nil  (Optional)  If this should be drawn below sprites and entities.
--- @field only_in_alt_mode boolean | nil (Optional)  If this should only be rendered in alt mode. Defaults to false.

--- Create a circle.
--- 
--- @param params LuaRendering_draw_circle_p
--- @return uint64                       Id of the render object
function rendering.draw_circle(params)
    params = nil
    return nil
end


--- @alias LuaRendering_draw_rectangle_p
--- @field color Color                   
--- @field width float | nil             (Optional)  Width of the outline, used only if filled = false. Value is in pixels (32 per tile).
--- @field filled boolean                If the rectangle should be filled.
--- @field left_top MapPosition | LuaEntity 
--- @field left_top_offset Vector | nil  (Optional)  Only used if `left_top` is a LuaEntity.
--- @field right_bottom MapPosition | LuaEntity 
--- @field right_bottom_offset Vector | nil (Optional)  Only used if `right_bottom` is a LuaEntity.
--- @field surface SurfaceIdentification 
--- @field time_to_live uint | nil       (Optional)  In ticks. Defaults to living forever.
--- @field forces ForceIdentification[] | nil (Optional)  The forces that this object is rendered to.
--- @field players PlayerIdentification[] | nil (Optional)  The players that this object is rendered to.
--- @field visible boolean | nil         (Optional)  If this is rendered to anyone at all. Defaults to true.
--- @field draw_on_ground boolean | nil  (Optional)  If this should be drawn below sprites and entities.
--- @field only_in_alt_mode boolean | nil (Optional)  If this should only be rendered in alt mode. Defaults to false.

--- Create a rectangle.
--- 
--- @param params LuaRendering_draw_rectangle_p
--- @return uint64                       Id of the render object
function rendering.draw_rectangle(params)
    params = nil
    return nil
end


--- @alias LuaRendering_draw_arc_p
--- @field color Color                   
--- @field max_radius double             The radius of the outer edge of the arc, in tiles.
--- @field min_radius double             The radius of the inner edge of the arc, in tiles.
--- @field start_angle float             Where the arc starts, in radian.
--- @field angle float                   The angle of the arc, in radian.
--- @field target MapPosition | LuaEntity 
--- @field target_offset Vector | nil    (Optional)  Only used if `target` is a LuaEntity.
--- @field surface SurfaceIdentification 
--- @field time_to_live uint | nil       (Optional)  In ticks. Defaults to living forever.
--- @field forces ForceIdentification[] | nil (Optional)  The forces that this object is rendered to.
--- @field players PlayerIdentification[] | nil (Optional)  The players that this object is rendered to.
--- @field visible boolean | nil         (Optional)  If this is rendered to anyone at all. Defaults to true.
--- @field draw_on_ground boolean | nil  (Optional)  If this should be drawn below sprites and entities.
--- @field only_in_alt_mode boolean | nil (Optional)  If this should only be rendered in alt mode. Defaults to false.

--- Create an arc.
--- 
--- @param params LuaRendering_draw_arc_p
--- @return uint64                       Id of the render object
function rendering.draw_arc(params)
    params = nil
    return nil
end


--- @alias LuaRendering_draw_polygon_p
--- @field color Color                   
--- @field vertices ScriptRenderVertexTarget[] 
--- @field target MapPosition | LuaEntity | nil (Optional)  Acts like an offset applied to all vertices that are not set to an entity.
--- @field target_offset Vector | nil    (Optional)  Only used if `target` is a LuaEntity.
--- @field orientation RealOrientation | nil (Optional)  The orientation applied to all vertices. Default is 0.
--- @field orientation_target MapPosition | LuaEntity | nil (Optional)  If given, the vertices (that are not set to an entity) rotate so that it faces this target. Note that `orientation` is still applied.
--- @field orientation_target_offset Vector | nil (Optional)  Only used if `orientation_target` is a LuaEntity.
--- @field surface SurfaceIdentification 
--- @field time_to_live uint | nil       (Optional)  In ticks. Defaults to living forever.
--- @field forces ForceIdentification[] | nil (Optional)  The forces that this object is rendered to.
--- @field players PlayerIdentification[] | nil (Optional)  The players that this object is rendered to.
--- @field visible boolean | nil         (Optional)  If this is rendered to anyone at all. Defaults to true.
--- @field draw_on_ground boolean | nil  (Optional)  If this should be drawn below sprites and entities.
--- @field only_in_alt_mode boolean | nil (Optional)  If this should only be rendered in alt mode. Defaults to false.

--- Create a triangle mesh defined by a triangle strip.
--- 
--- @param params LuaRendering_draw_polygon_p
--- @return uint64                       Id of the render object
function rendering.draw_polygon(params)
    params = nil
    return nil
end


--- @alias LuaRendering_draw_sprite_p
--- @field sprite SpritePath             
--- @field orientation RealOrientation | nil (Optional)  The orientation of the sprite. Default is 0.
--- @field x_scale double | nil          (Optional)  Horizontal scale of the sprite. Default is 1.
--- @field y_scale double | nil          (Optional)  Vertical scale of the sprite. Default is 1.
--- @field tint Color | nil              (Optional)  
--- @field render_layer RenderLayer | nil (Optional)  
--- @field orientation_target MapPosition | LuaEntity | nil (Optional)  If given, the sprite rotates so that it faces this target. Note that `orientation` is still applied to the sprite.
--- @field orientation_target_offset Vector | nil (Optional)  Only used if `orientation_target` is a LuaEntity.
--- @field oriented_offset Vector | nil  (Optional)  Offsets the center of the sprite if `orientation_target` is given. This offset will rotate together with the sprite.
--- @field target MapPosition | LuaEntity Center of the sprite.
--- @field target_offset Vector | nil    (Optional)  Only used if `target` is a LuaEntity.
--- @field surface SurfaceIdentification 
--- @field time_to_live uint | nil       (Optional)  In ticks. Defaults to living forever.
--- @field forces ForceIdentification[] | nil (Optional)  The forces that this object is rendered to.
--- @field players PlayerIdentification[] | nil (Optional)  The players that this object is rendered to.
--- @field visible boolean | nil         (Optional)  If this is rendered to anyone at all. Defaults to true.
--- @field only_in_alt_mode boolean | nil (Optional)  If this should only be rendered in alt mode. Defaults to false.

--- Create a sprite.
--- 
--- @param params LuaRendering_draw_sprite_p
--- @return uint64                       Id of the render object
function rendering.draw_sprite(params)
    params = nil
    return nil
end


--- @alias LuaRendering_draw_light_p
--- @field sprite SpritePath             
--- @field orientation RealOrientation | nil (Optional)  The orientation of the light. Default is 0.
--- @field scale float | nil             (Optional)  Default is 1.
--- @field intensity float | nil         (Optional)  Default is 1.
--- @field minimum_darkness float | nil  (Optional)  The minimum darkness at which this light is rendered. Default is 0.
--- @field oriented boolean | nil        (Optional)  If this light has the same orientation as the entity target, default is false. Note that `orientation` is still applied to the sprite.
--- @field color Color | nil             (Optional)  Defaults to white (no tint).
--- @field target MapPosition | LuaEntity Center of the light.
--- @field target_offset Vector | nil    (Optional)  Only used if `target` is a LuaEntity.
--- @field surface SurfaceIdentification 
--- @field time_to_live uint | nil       (Optional)  In ticks. Defaults to living forever.
--- @field forces ForceIdentification[] | nil (Optional)  The forces that this object is rendered to.
--- @field players PlayerIdentification[] | nil (Optional)  The players that this object is rendered to.
--- @field visible boolean | nil         (Optional)  If this is rendered to anyone at all. Defaults to true.
--- @field only_in_alt_mode boolean | nil (Optional)  If this should only be rendered in alt mode. Defaults to false.

--- Create a light.
--- 
--- @param params LuaRendering_draw_light_p
--- @return uint64                       Id of the render object
function rendering.draw_light(params)
    params = nil
    return nil
end


--- @alias LuaRendering_draw_animation_p
--- @field animation string              Name of an [animation prototype](https://wiki.factorio.com/Prototype/Animation).
--- @field orientation RealOrientation | nil (Optional)  The orientation of the animation. Default is 0.
--- @field x_scale double | nil          (Optional)  Horizontal scale of the animation. Default is 1.
--- @field y_scale double | nil          (Optional)  Vertical scale of the animation. Default is 1.
--- @field tint Color | nil              (Optional)  
--- @field render_layer RenderLayer | nil (Optional)  
--- @field animation_speed double | nil  (Optional)  How many frames the animation goes forward per tick. Default is 1.
--- @field animation_offset double | nil (Optional)  Offset of the animation in frames. Default is 0.
--- @field orientation_target MapPosition | LuaEntity | nil (Optional)  If given, the animation rotates so that it faces this target. Note that `orientation` is still applied to the animation.
--- @field orientation_target_offset Vector | nil (Optional)  Only used if `orientation_target` is a LuaEntity.
--- @field oriented_offset Vector | nil  (Optional)  Offsets the center of the animation if `orientation_target` is given. This offset will rotate together with the animation.
--- @field target MapPosition | LuaEntity Center of the animation.
--- @field target_offset Vector | nil    (Optional)  Only used if `target` is a LuaEntity.
--- @field surface SurfaceIdentification 
--- @field time_to_live uint | nil       (Optional)  In ticks. Defaults to living forever.
--- @field forces ForceIdentification[] | nil (Optional)  The forces that this object is rendered to.
--- @field players PlayerIdentification[] | nil (Optional)  The players that this object is rendered to.
--- @field visible boolean | nil         (Optional)  If this is rendered to anyone at all. Defaults to true.
--- @field only_in_alt_mode boolean | nil (Optional)  If this should only be rendered in alt mode. Defaults to false.

--- Create an animation.
--- 
--- @param params LuaRendering_draw_animation_p
--- @return uint64                       Id of the render object
function rendering.draw_animation(params)
    params = nil
    return nil
end


--- Destroy the object with the given id.
--- 
--- @param id uint64                    
function rendering.destroy(id)
    id = nil
end


--- Does a font with this name exist?
--- 
--- @param font_name string             
--- @return boolean
function rendering.is_font_valid(font_name)
    font_name = nil
    return nil
end


--- Does a valid object with this id exist?
--- 
--- @param id uint64                    
--- @return boolean
function rendering.is_valid(id)
    id = nil
    return nil
end


--- Gets an array of all valid object ids.
--- 
--- @overload fun(): uint64[]
--- 
--- @param mod_name string | nil         (Optional) 
--- @return uint64[]
function rendering.get_all_ids(mod_name)
    mod_name = nil
    return {}
end


--- Destroys all render objects.
--- 
--- @overload fun()
--- 
--- @param mod_name string | nil         (Optional) 
function rendering.clear(mod_name)
    mod_name = nil
end


--- Gets the type of the given object. The types are "text", "line", "circle", "rectangle", "arc", "polygon", "sprite",
--- "light" and "animation".
--- 
--- @param id uint64                    
--- @return string
function rendering.get_type(id)
    id = nil
    return nil
end


--- Reorder this object so that it is drawn in front of the already existing objects.
--- 
--- @param id uint64                    
function rendering.bring_to_front(id)
    id = nil
end


--- The surface the object with this id is rendered on.
--- 
--- @param id uint64                    
--- @return LuaSurface
function rendering.get_surface(id)
    id = nil
    return nil
end


--- Get the time to live of the object with this id. This will be 0 if the object does not expire.
--- 
--- @param id uint64                    
--- @return uint
function rendering.get_time_to_live(id)
    id = nil
    return nil
end


--- Set the time to live of the object with this id. Set to 0 if the object should not expire.
--- 
--- @param id uint64                    
--- @param time_to_live uint            
function rendering.set_time_to_live(id, time_to_live)
    id = nil
    time_to_live = nil
end


--- Get the forces that the object with this id is rendered to or `nil` if visible to all forces.
--- 
--- @param id uint64                    
--- @return LuaForce[]
function rendering.get_forces(id)
    id = nil
    return {}
end


--- Set the forces that the object with this id is rendered to.
--- 
--- @param id uint64                    
--- @param forces ForceIdentification[] 
function rendering.set_forces(id, forces)
    id = nil
    forces = {}
end


--- Get the players that the object with this id is rendered to or `nil` if visible to all players.
--- 
--- @param id uint64                    
--- @return LuaPlayer[]
function rendering.get_players(id)
    id = nil
    return {}
end


--- Set the players that the object with this id is rendered to.
--- 
--- @param id uint64                    
--- @param players PlayerIdentification[]
function rendering.set_players(id, players)
    id = nil
    players = {}
end


--- Get whether this is rendered to anyone at all.
--- 
--- @param id uint64                    
--- @return boolean
function rendering.get_visible(id)
    id = nil
    return nil
end


--- Set whether this is rendered to anyone at all.
--- 
--- @param id uint64                    
--- @param visible boolean              
function rendering.set_visible(id, visible)
    id = nil
    visible = nil
end


--- Get whether this is being drawn on the ground, under most entities and sprites.
--- 
--- @param id uint64                    
--- @return boolean
function rendering.get_draw_on_ground(id)
    id = nil
    return nil
end


--- Set whether this is being drawn on the ground, under most entities and sprites.
--- 
--- @param id uint64                    
--- @param draw_on_ground boolean       
function rendering.set_draw_on_ground(id, draw_on_ground)
    id = nil
    draw_on_ground = nil
end


--- Get whether this is only rendered in alt-mode.
--- 
--- @param id uint64                    
--- @return boolean
function rendering.get_only_in_alt_mode(id)
    id = nil
    return nil
end


--- Set whether this is only rendered in alt-mode.
--- 
--- @param id uint64                    
--- @param only_in_alt_mode boolean     
function rendering.set_only_in_alt_mode(id, only_in_alt_mode)
    id = nil
    only_in_alt_mode = nil
end


--- Get the color or tint of the object with this id.
--- 
--- @param id uint64                    
--- @return Color                        `nil` if the object does not support color.
function rendering.get_color(id)
    id = nil
    return nil
end


--- Set the color or tint of the object with this id. Does nothing if this object does not support color.
--- 
--- @param id uint64                    
--- @param color Color                  
function rendering.set_color(id, color)
    id = nil
    color = nil
end


--- Get the width of the object with this id. Value is in pixels (32 per tile).
--- 
--- @param id uint64                    
--- @return float                        `nil` if the object does not support width.
function rendering.get_width(id)
    id = nil
    return nil
end


--- Set the width of the object with this id. Does nothing if this object does not support width. Value is in pixels
--- (32 per tile).
--- 
--- @param id uint64                    
--- @param width float                  
function rendering.set_width(id, width)
    id = nil
    width = nil
end


--- Get from where the line with this id is drawn.
--- 
--- @param id uint64                    
--- @return ScriptRenderTarget           `nil` if this object is not a line.
function rendering.get_from(id)
    id = nil
    return nil
end


--- Set from where the line with this id is drawn. Does nothing if the object is not a line.
--- 
--- @overload fun(id: uint64, from: MapPosition | LuaEntity)
--- 
--- @param id uint64                    
--- @param from MapPosition | LuaEntity 
--- @param from_offset Vector | nil      (Optional) 
function rendering.set_from(id, from, from_offset)
    id = nil
    from = nil
    from_offset = nil
end


--- Get where the line with this id is drawn to.
--- 
--- @param id uint64                    
--- @return ScriptRenderTarget           `nil` if the object is not a line.
function rendering.get_to(id)
    id = nil
    return nil
end


--- Set where the line with this id is drawn to. Does nothing if this object is not a line.
--- 
--- @overload fun(id: uint64, to: MapPosition | LuaEntity)
--- 
--- @param id uint64                    
--- @param to MapPosition | LuaEntity   
--- @param to_offset Vector | nil        (Optional) 
function rendering.set_to(id, to, to_offset)
    id = nil
    to = nil
    to_offset = nil
end


--- Get the dash length of the line with this id.
--- 
--- @param id uint64                    
--- @return double                       `nil` if the object is not a line.
function rendering.get_dash_length(id)
    id = nil
    return nil
end


--- Set the dash length of the line with this id. Does nothing if this object is not a line.
--- 
--- @param id uint64                    
--- @param dash_length double           
function rendering.set_dash_length(id, dash_length)
    id = nil
    dash_length = nil
end


--- Get the length of the gaps in the line with this id.
--- 
--- @param id uint64                    
--- @return double                       `nil` if the object is not a line.
function rendering.get_gap_length(id)
    id = nil
    return nil
end


--- Set the length of the gaps in the line with this id. Does nothing if this object is not a line.
--- 
--- @param id uint64                    
--- @param gap_length double            
function rendering.set_gap_length(id, gap_length)
    id = nil
    gap_length = nil
end


--- Set the length of the dashes and the length of the gaps in the line with this id. Does nothing if this object is
--- not a line.
--- 
--- @param id uint64                    
--- @param dash_length double           
--- @param gap_length double            
function rendering.set_dashes(id, dash_length, gap_length)
    id = nil
    dash_length = nil
    gap_length = nil
end


--- Get where the object with this id is drawn.
--- 
--- @param id uint64                    
--- @return ScriptRenderTarget           `nil` if the object does not support target.
function rendering.get_target(id)
    id = nil
    return nil
end


--- Set where the object with this id is drawn. Does nothing if this object does not support target.
--- 
--- @overload fun(id: uint64, target: MapPosition | LuaEntity)
--- 
--- @param id uint64                    
--- @param target MapPosition | LuaEntity
--- @param target_offset Vector | nil    (Optional) 
function rendering.set_target(id, target, target_offset)
    id = nil
    target = nil
    target_offset = nil
end


--- Get the orientation of the object with this id.
--- 
--- @param id uint64                    
--- @return RealOrientation              `nil` if the object is not a text, polygon, sprite, light or animation.
function rendering.get_orientation(id)
    id = nil
    return nil
end


--- Set the orientation of the object with this id. Does nothing if this object is not a text, polygon, sprite, light
--- or animation.
--- 
--- @param id uint64                    
--- @param orientation RealOrientation  
function rendering.set_orientation(id, orientation)
    id = nil
    orientation = nil
end


--- Get the scale of the text or light with this id.
--- 
--- @param id uint64                    
--- @return double                       `nil` if the object is not a text or light.
function rendering.get_scale(id)
    id = nil
    return nil
end


--- Set the scale of the text or light with this id. Does nothing if this object is not a text or light.
--- 
--- @param id uint64                    
--- @param scale double                 
function rendering.set_scale(id, scale)
    id = nil
    scale = nil
end


--- Get the text that is displayed by the text with this id.
--- 
--- @param id uint64                    
--- @return LocalisedString              `nil` if the object is not a text.
function rendering.get_text(id)
    id = nil
    return nil
end


--- Set the text that is displayed by the text with this id. Does nothing if this object is not a text.
--- 
--- @param id uint64                    
--- @param text LocalisedString         
function rendering.set_text(id, text)
    id = nil
    text = nil
end


--- Get the font of the text with this id.
--- 
--- @param id uint64                    
--- @return string                       `nil` if the object is not a text.
function rendering.get_font(id)
    id = nil
    return nil
end


--- Set the font of the text with this id. Does nothing if this object is not a text.
--- 
--- @param id uint64                    
--- @param font string                  
function rendering.set_font(id, font)
    id = nil
    font = nil
end


--- Get the alignment of the text with this id.
--- 
--- @param id uint64                    
--- @return string                       `nil` if the object is not a text.
function rendering.get_alignment(id)
    id = nil
    return nil
end


--- Set the alignment of the text with this id. Does nothing if this object is not a text.
--- 
--- @param id uint64                    
--- @param alignment string             
function rendering.set_alignment(id, alignment)
    id = nil
    alignment = nil
end


--- Get the vertical alignment of the text with this id.
--- 
--- @param id uint64                    
--- @return string                       `nil` if the object is not a text.
function rendering.get_vertical_alignment(id)
    id = nil
    return nil
end


--- Set the vertical alignment of the text with this id. Does nothing if this object is not a text.
--- 
--- @param id uint64                    
--- @param alignment string             
function rendering.set_vertical_alignment(id, alignment)
    id = nil
    alignment = nil
end


--- Get if the text with this id scales with player zoom.
--- 
--- @param id uint64                    
--- @return boolean                      `nil` if the object is not a text.
function rendering.get_scale_with_zoom(id)
    id = nil
    return nil
end


--- Set if the text with this id scales with player zoom, resulting in it always being the same size on screen, and the
--- size compared to the game world changes. Does nothing if this object is not a text.
--- 
--- @param id uint64                    
--- @param scale_with_zoom boolean      
function rendering.set_scale_with_zoom(id, scale_with_zoom)
    id = nil
    scale_with_zoom = nil
end


--- Get if the circle or rectangle with this id is filled.
--- 
--- @param id uint64                    
--- @return boolean                      `nil` if the object is not a circle or rectangle.
function rendering.get_filled(id)
    id = nil
    return nil
end


--- Set if the circle or rectangle with this id is filled. Does nothing if this object is not a circle or rectangle.
--- 
--- @param id uint64                    
--- @param filled boolean               
function rendering.set_filled(id, filled)
    id = nil
    filled = nil
end


--- Get the radius of the circle with this id.
--- 
--- @param id uint64                    
--- @return double                       `nil` if the object is not a circle.
function rendering.get_radius(id)
    id = nil
    return nil
end


--- Set the radius of the circle with this id. Does nothing if this object is not a circle.
--- 
--- @param id uint64                    
--- @param radius double                
function rendering.set_radius(id, radius)
    id = nil
    radius = nil
end


--- Get where top left corner of the rectangle with this id is drawn.
--- 
--- @param id uint64                    
--- @return ScriptRenderTarget           `nil` if the object is not a rectangle.
function rendering.get_left_top(id)
    id = nil
    return nil
end


--- Set where top left corner of the rectangle with this id is drawn. Does nothing if this object is not a rectangle.
--- 
--- @overload fun(id: uint64, left_top: MapPosition | LuaEntity)
--- 
--- @param id uint64                    
--- @param left_top MapPosition | LuaEntity
--- @param left_top_offset Vector | nil  (Optional) 
function rendering.set_left_top(id, left_top, left_top_offset)
    id = nil
    left_top = nil
    left_top_offset = nil
end


--- Get where bottom right corner of the rectangle with this id is drawn.
--- 
--- @param id uint64                    
--- @return ScriptRenderTarget           `nil` if the object is not a rectangle.
function rendering.get_right_bottom(id)
    id = nil
    return nil
end


--- Set where top bottom right of the rectangle with this id is drawn. Does nothing if this object is not a rectangle.
--- 
--- @overload fun(id: uint64, right_bottom: MapPosition | LuaEntity)
--- 
--- @param id uint64                    
--- @param right_bottom MapPosition | LuaEntity
--- @param right_bottom_offset Vector | nil (Optional) 
function rendering.set_right_bottom(id, right_bottom, right_bottom_offset)
    id = nil
    right_bottom = nil
    right_bottom_offset = nil
end


--- Set the corners of the rectangle with this id. Does nothing if this object is not a rectangle.
--- 
--- @param id uint64                    
--- @param left_top MapPosition | LuaEntity
--- @param left_top_offset Vector       
--- @param right_bottom MapPosition | LuaEntity
--- @param right_bottom_offset Vector   
function rendering.set_corners(id, left_top, left_top_offset, right_bottom, right_bottom_offset)
    id = nil
    left_top = nil
    left_top_offset = nil
    right_bottom = nil
    right_bottom_offset = nil
end


--- Get the radius of the outer edge of the arc with this id.
--- 
--- @param id uint64                    
--- @return double                       `nil` if the object is not a arc.
function rendering.get_max_radius(id)
    id = nil
    return nil
end


--- Set the radius of the outer edge of the arc with this id. Does nothing if this object is not a arc.
--- 
--- @param id uint64                    
--- @param max_radius double            
function rendering.set_max_radius(id, max_radius)
    id = nil
    max_radius = nil
end


--- Get the radius of the inner edge of the arc with this id.
--- 
--- @param id uint64                    
--- @return double                       `nil` if the object is not a arc.
function rendering.get_min_radius(id)
    id = nil
    return nil
end


--- Set the radius of the inner edge of the arc with this id. Does nothing if this object is not a arc.
--- 
--- @param id uint64                    
--- @param min_radius double            
function rendering.set_min_radius(id, min_radius)
    id = nil
    min_radius = nil
end


--- Get where the arc with this id starts.
--- 
--- @param id uint64                    
--- @return float                        Angle in radian. `nil` if the object is not a arc.
function rendering.get_start_angle(id)
    id = nil
    return nil
end


--- Set where the arc with this id starts. Does nothing if this object is not a arc.
--- 
--- @param id uint64                    
--- @param start_angle float            
function rendering.set_start_angle(id, start_angle)
    id = nil
    start_angle = nil
end


--- Get the angle of the arc with this id.
--- 
--- @param id uint64                    
--- @return float                        Angle in radian. `nil` if the object is not a arc.
function rendering.get_angle(id)
    id = nil
    return nil
end


--- Set the angle of the arc with this id. Does nothing if this object is not a arc.
--- 
--- @param id uint64                    
--- @param angle float                  
function rendering.set_angle(id, angle)
    id = nil
    angle = nil
end


--- Get the vertices of the polygon with this id.
--- 
--- @param id uint64                    
--- @return ScriptRenderTarget[]         `nil` if the object is not a polygon.
function rendering.get_vertices(id)
    id = nil
    return {}
end


--- Set the vertices of the polygon with this id. Does nothing if this object is not a polygon.
--- 
--- @param id uint64                    
--- @param vertices ScriptRenderVertexTarget[]
function rendering.set_vertices(id, vertices)
    id = nil
    vertices = {}
end


--- Get the sprite of the sprite or light with this id.
--- 
--- @param id uint64                    
--- @return SpritePath                   `nil` if the object is not a sprite or light.
function rendering.get_sprite(id)
    id = nil
    return nil
end


--- Set the sprite of the sprite or light with this id. Does nothing if this object is not a sprite or light.
--- 
--- @param id uint64                    
--- @param sprite SpritePath            
function rendering.set_sprite(id, sprite)
    id = nil
    sprite = nil
end


--- Get the horizontal scale of the sprite or animation with this id.
--- 
--- @param id uint64                    
--- @return double                       `nil` if the object is not a sprite or animation.
function rendering.get_x_scale(id)
    id = nil
    return nil
end


--- Set the horizontal scale of the sprite or animation with this id. Does nothing if this object is not a sprite or
--- animation.
--- 
--- @param id uint64                    
--- @param x_scale double               
function rendering.set_x_scale(id, x_scale)
    id = nil
    x_scale = nil
end


--- Get the vertical scale of the sprite or animation with this id.
--- 
--- @param id uint64                    
--- @return double                       `nil` if the object is not a sprite or animation.
function rendering.get_y_scale(id)
    id = nil
    return nil
end


--- Set the vertical scale of the sprite or animation with this id. Does nothing if this object is not a sprite or
--- animation.
--- 
--- @param id uint64                    
--- @param y_scale double               
function rendering.set_y_scale(id, y_scale)
    id = nil
    y_scale = nil
end


--- Get the render layer of the sprite or animation with this id.
--- 
--- @param id uint64                    
--- @return RenderLayer                  `nil` if the object is not a sprite or animation.
function rendering.get_render_layer(id)
    id = nil
    return nil
end


--- Set the render layer of the sprite or animation with this id. Does nothing if this object is not a sprite or
--- animation.
--- 
--- @param id uint64                    
--- @param render_layer RenderLayer     
function rendering.set_render_layer(id, render_layer)
    id = nil
    render_layer = nil
end


--- The object rotates so that it faces this target. Note that `orientation` is still applied to the object. Get the
--- orientation_target of the object with this id.
--- 
--- @param id uint64                    
--- @return ScriptRenderTarget           `nil` if no target or if this object is not a polygon, sprite, or animation.
function rendering.get_orientation_target(id)
    id = nil
    return nil
end


--- The object rotates so that it faces this target. Note that `orientation` is still applied to the object. Set the
--- orientation_target of the object with this id. Does nothing if this object is not a polygon, sprite, or animation.
--- Set to `nil` if the object should not have an orientation_target.
--- 
--- @overload fun(id: uint64, orientation_target: MapPosition | LuaEntity)
--- 
--- @param id uint64                    
--- @param orientation_target MapPosition | LuaEntity
--- @param orientation_target_offset Vector | nil (Optional) 
function rendering.set_orientation_target(id, orientation_target, orientation_target_offset)
    id = nil
    orientation_target = nil
    orientation_target_offset = nil
end


--- Offsets the center of the sprite or animation if `orientation_target` is given. This offset will rotate together
--- with the sprite or animation. Get the oriented_offset of the sprite or animation with this id.
--- 
--- @param id uint64                    
--- @return Vector                       `nil` if this object is not a sprite or animation.
function rendering.get_oriented_offset(id)
    id = nil
    return nil
end


--- Offsets the center of the sprite or animation if `orientation_target` is given. This offset will rotate together
--- with the sprite or animation. Set the oriented_offset of the sprite or animation with this id. Does nothing if this
--- object is not a sprite or animation.
--- 
--- @param id uint64                    
--- @param oriented_offset Vector       
function rendering.set_oriented_offset(id, oriented_offset)
    id = nil
    oriented_offset = nil
end


--- Get the intensity of the light with this id.
--- 
--- @param id uint64                    
--- @return float                        `nil` if the object is not a light.
function rendering.get_intensity(id)
    id = nil
    return nil
end


--- Set the intensity of the light with this id. Does nothing if this object is not a light.
--- 
--- @param id uint64                    
--- @param intensity float              
function rendering.set_intensity(id, intensity)
    id = nil
    intensity = nil
end


--- Get the minimum darkness at which the light with this id is rendered.
--- 
--- @param id uint64                    
--- @return float                        `nil` if the object is not a light.
function rendering.get_minimum_darkness(id)
    id = nil
    return nil
end


--- Set the minimum darkness at which the light with this id is rendered. Does nothing if this object is not a light.
--- 
--- @param id uint64                    
--- @param minimum_darkness float       
function rendering.set_minimum_darkness(id, minimum_darkness)
    id = nil
    minimum_darkness = nil
end


--- Get if the light with this id is rendered has the same orientation as the target entity. Note that `orientation` is
--- still applied to the sprite.
--- 
--- @param id uint64                    
--- @return boolean                      `nil` if the object is not a light.
function rendering.get_oriented(id)
    id = nil
    return nil
end


--- Set if the light with this id is rendered has the same orientation as the target entity. Does nothing if this
--- object is not a light. Note that `orientation` is still applied to the sprite.
--- 
--- @param id uint64                    
--- @param oriented boolean             
function rendering.set_oriented(id, oriented)
    id = nil
    oriented = nil
end


--- Get the animation prototype name of the animation with this id.
--- 
--- @param id uint64                    
--- @return string                       `nil` if the object is not an animation.
function rendering.get_animation(id)
    id = nil
    return nil
end


--- Set the animation prototype name of the animation with this id. Does nothing if this object is not an animation.
--- 
--- @param id uint64                    
--- @param animation string             
function rendering.set_animation(id, animation)
    id = nil
    animation = nil
end


--- Get the animation speed of the animation with this id.
--- 
--- @param id uint64                    
--- @return double                       Animation speed in frames per tick. `nil` if the object is not an animation.
function rendering.get_animation_speed(id)
    id = nil
    return nil
end


--- Set the animation speed of the animation with this id. Does nothing if this object is not an animation.
--- 
--- @param id uint64                    
--- @param animation_speed double       
function rendering.set_animation_speed(id, animation_speed)
    id = nil
    animation_speed = nil
end


--- Get the animation offset of the animation with this id.
--- 
--- @param id uint64                    
--- @return double                       Animation offset in frames. `nil` if the object is not an animation.
function rendering.get_animation_offset(id)
    id = nil
    return nil
end


--- Set the animation offset of the animation with this id. Does nothing if this object is not an animation.
--- 
--- @param id uint64                    
--- @param animation_offset double      
function rendering.set_animation_offset(id, animation_offset)
    id = nil
    animation_offset = nil
end

