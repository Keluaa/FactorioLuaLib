
--- 
---  /!\ Those functions and tables are only defined during the data stage /!\
--- 

table = table -- The only way I found to make this work for Luanalysis


--- Returns a copy of the given table. All members are copied recursively.
--- @param tbl table<K, V>
--- @generic K
--- @generic V
--- @return table<K, V>
function table.deepcopy(tbl)
    tbl = nil
    return {}
end


--- @class Data
--- @field raw table<string, table<string, table>>
--- @field is_demo boolean
data = {}


--- @param p table | table[]
function data:extend(p)
    p = nil
end

