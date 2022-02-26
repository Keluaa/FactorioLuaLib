

--- @class LuaUnitGroup
--- A collection of units moving and attacking together. The engine creates autonomous unit groups to attack polluted
--- areas. The script can create and control such groups as well. Groups can accept commands in the same manner as
--- regular units.
local unit_group = {}


--- @type LuaEntity[]
---  (R)
--- Members of this group.
unit_group.members = {}

--- @type MapPosition
---  (R)
--- Group position. This can have different meanings depending on the group state. When the group is gathering, the
--- position is the place of gathering. When the group is moving, the position is the expected position of its members
--- along the path. When the group is attacking, it is the average position of its members.
unit_group.position = nil

--- @type defines_group_state
---  (R)
--- Whether this group is gathering, moving or attacking.
unit_group.state = nil

--- @type LuaForce
---  (R)
--- The force of this unit group.
unit_group.force = nil

--- @type LuaSurface
---  (R)
--- The surface of this unit group.
unit_group.surface = nil

--- @type uint
---  (R)
--- The group number for this unit group.
unit_group.group_number = nil

--- @type boolean
---  (R)
--- Whether this unit group is controlled by a script or by the game engine. This can be changed using
--- LuaUnitGroup::set_autonomous.
--- 
--- @see LuaUnitGroup#set_autonomous @
unit_group.is_script_driven = nil

--- @type Command
---  (R)
--- The command given to this group or `nil` is the group has no command.
unit_group.command = nil

--- @type Command
---  (R)
--- The distraction command given to this group or `nil` is the group currently isn't distracted.
unit_group.distraction_command = nil

--- @type boolean
---  (R)
--- Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that
--- the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the
--- object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any
--- change to the game state might have occurred between the creation of the Lua object and its access.
unit_group.valid = nil

--- @type string
---  (R)
--- The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed
--- with a dotted path to a member of the struct.
unit_group.object_name = nil



--- Make a unit a member of this group. Has the same effect as giving a `group_command` with this group to the unit.
--- 
--- @param unit LuaEntity               
function unit_group.add_member(unit)
    unit = nil
end


--- Give this group a command.
--- 
--- @param command Command              
function unit_group.set_command(command)
    command = nil
end


--- Give this group a distraction command.
--- 
--- @param command Command              
function unit_group.set_distraction_command(command)
    command = nil
end


--- Make this group autonomous. Autonomous groups will automatically attack polluted areas. Autonomous groups aren't
--- considered to be script-driven.
--- 
--- @see LuaUnitGroup#is_script_driven @
--- 
--- @return nil
function unit_group.set_autonomous()
    return nil
end


--- Make the group start moving even if some of its members haven't yet arrived.
--- 
--- @return nil
function unit_group.start_moving()
    return nil
end


--- Dissolve this group. Its members won't be destroyed, they will be merely unlinked from this group.
--- 
--- @return nil
function unit_group.destroy()
    return nil
end


--- All methods and properties that this object supports.
--- 
--- @return string
function unit_group.help()
    return nil
end

