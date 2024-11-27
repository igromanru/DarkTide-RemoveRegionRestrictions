--[[
    Author: Igromanru
    Date: 28.11.2024
    Mod Name: Remove Region Restrictions
    Version: 1.0.1
]]
local mod = get_mod("RemoveRegionRestrictions")

mod:hook(CLASS.AccountManagerSteam, "region_has_restriction", function(func, self, restriction)
    local result = func(self, restriction)
    if result and mod:get("mod_enable") then
        result = false
    end
    return result
end)

mod:hook(CLASS.AccountManagerWinGDK, "region_has_restriction", function(func, self, restriction)
    local result = func(self, restriction)
    if result and mod:get("mod_enable") then
        result = false
    end
    return result
end)

mod:hook(CLASS.AccountManagerXboxLive, "region_has_restriction", function(func, self, restriction)
    local result = func(self, restriction)
    if result and mod:get("mod_enable") then
        result = false
    end
    return result
end)