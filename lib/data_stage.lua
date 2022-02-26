
--- 
---  /!\ Those functions and tables are only defined during the settings phase and/or data stage /!\
--- 
--- This means that you cannot access those tables when the game has finished loading.
--- 


table = table -- The only way I found to make this work for Luanalysis


--- Returns a copy of the given table. All members are copied recursively.
--- Only available during the data phase.
--- 
--- @param tbl table<K, V>
--- @generic K
--- @generic V
--- @return table<K, V>
function table.deepcopy(tbl)
    tbl = nil
    return {}
end


--- @class Data
--- Only available during the settings and data phase.
--- @field raw table<string, table<string, table>>
--- @field is_demo boolean
data = {}


--- @param p table | table[]
function data:extend(p)
    p = nil
end


--- @type table<string, string>
--- Table from mod name to mod version string (e.g. "1.0.5")
--- Only available during the settings and data phase.
mods = {}

