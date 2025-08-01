local M = {}

local function is_grep_installed()
    local handle = io.popen("rg --version 2>&1") 
    if handle == nil then
        return false
    end
    local result = handle:read("*a")
    handle:close()
    return result:match("rg version") ~= nil
end

function M.setup()
    require("telescope").setup()
end
return M
