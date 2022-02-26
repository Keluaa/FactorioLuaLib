

--- @class LuaRemote
--- Registry of interfaces between scripts. An interface is simply a dictionary mapping names to functions. A script or
--- mod can then register an interface with LuaRemote, after that any script can call the registered functions,
--- provided it knows the interface name and the desired function name. An instance of LuaRemote is available through
--- the global object named `remote`.
--- 
--- @see LuaRemote @
local remote = {}


--- @type string
---  (R)
--- This object's name.
remote.object_name = nil

--- @type table<string, table<string, boolean>>
---  (R)
--- List of all registered interfaces. For each interface name, `remote.interfaces[name]` is a dictionary mapping the
--- interface's registered functions to the value `true`.
remote.interfaces = nil



--- Add a remote interface.
--- 
--- @param name string                  
--- @param functions table<string, fun()>
function remote.add_interface(name, functions)
    name = nil
    functions = nil
end


--- Removes an interface with the given name.
--- 
--- @param name string                  
--- @return boolean                      Whether the interface was removed. `False` if the interface didn't exist.
function remote.remove_interface(name)
    name = nil
    return nil
end


--- Call a function of an interface.
--- 
--- @param interface string             
--- @param function_ string             
--- @vararg Any                          Arguments to pass to the called function.
--- @return Any
function remote.call(interface, function_, ...)
    interface = nil
    function_ = nil
    return nil
end

