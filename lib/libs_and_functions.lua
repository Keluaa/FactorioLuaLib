
--- @class serpent
--- Lua serializer and pretty printer.
--- https://github.com/pkulchenko/serpent
serpent = {}


--- Multi-line indented pretty printing
--- 
--- @overload fun(a: any): string
--- @param a any                        
--- @param options table<string, any> | nil (Optional) 
--- @return string                      
function serpent.block(a, options)
    a = nil
    options = nil
    return nil
end


--- Single line pretty printing
--- 
--- @overload fun(a: any): string
--- @param a any                        
--- @param options table<string, any> | nil (Optional) 
--- @return string                      
function serpent.line(a, options)
    a = nil
    options = nil
    return nil
end


--- Serialises the given value
--- 
--- @overload fun(a: any): string
--- @param a any                        
--- @param options table<string, any> | nil (Optional) 
--- @return string                      
function serpent.dump(a, options)
    a = nil
    options = nil
    return nil
end


--- Loads a serialised value
--- 
--- @overload fun(str: string): boolean, any
--- @param str string                   
--- @param options table<string, any> | nil (Optional) 
--- @return boolean, any                
function serpent.load(str, options)
    str = nil
    options = nil
    return nil, nil
end


--- Prints a string (or a localised string) to the log file.
--- https://wiki.factorio.com/Log_file
--- 
--- @param str LocalisedString          
function log(str)
    str = nil
end


--- Prints a string to the standard output. Only useful when running Factorio from the command line.
--- 
--- @param str LocalisedString          
function localised_print(str)
    str = nil
end


--- Returns the number of non-nil values in a table, a generalized # operator. Does not work for custom tables.
--- 
--- @param tbl table                    
--- @return number                      
function table_size(tbl)
    tbl = nil
    return nil
end

