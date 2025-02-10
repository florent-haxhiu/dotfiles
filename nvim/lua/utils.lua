local M = {}

-- Table to String for printing
function M.dump(o)
    if type(o) == 'table' then
        local s = ''
        for k, v in pairs(o) do
            if type(k) ~= 'number' then k = '"' .. k .. '"' end
            --s = s .. '[' .. k .. '] = ' .. M.dump(v) .. ','
            s = s .. M.dump(v) .. ','
        end
        return s
    else
        return tostring(o)
    end
end


return M
