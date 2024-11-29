--[[
    Author: Igromanru
    Date: 28.11.2024
    Mod Name: Remove Region Restrictions
    Version: 1.0.1
]]
local mod = get_mod("RemoveRegionRestrictions")
local SettingNames = mod:io_dofile("RemoveRegionRestrictions/scripts/setting_names")

mod:hook(CLASS.AccountManagerSteam, "region_has_restriction", function(func, self, restriction)
    if mod:get(SettingNames.EnableMod) then
        return false
    end
    return func(self, restriction)
end)

-- Gamepass/XBox Live and probably the GoG version
mod:hook(CLASS.AccountManagerWinGDK, "region_has_restriction", function(func, self, restriction)
    if mod:get(SettingNames.EnableMod) then
        return false
    end
    return func(self, restriction)
end)

-- XBox, just in case
mod:hook(CLASS.AccountManagerXboxLive, "region_has_restriction", function(func, self, restriction)
    if mod:get(SettingNames.EnableMod) then
        return false
    end
    return func(self, restriction)
end)

-- PS5, just in case
mod:hook(CLASS.AccountManagerPSN, "region_has_restriction", function(func, self, restriction)
    if mod:get(SettingNames.EnableMod) then
        return false
    end
    return func(self, restriction)
end)