--[[
    Author: Igromanru
    Date: 28.11.2024
    Mod Name: Remove Region Restrictions
    Version: 1.1.0
]]
local mod = get_mod("RemoveRegionRestrictions")
local SettingNames = mod:io_dofile("RemoveRegionRestrictions/scripts/setting_names")


mod.on_setting_changed = function(setting_id)
	-- local attack_ragdolls_enabled = Application.user_setting("gore_settings", "attack_ragdolls_enabled")
    Application.set_user_setting("gore_settings", "attack_ragdolls_enabled", mod:get(SettingNames.RagdollInteraction))
end

mod:hook(CLASS.AccountManagerSteam, "region_has_restriction", function(func, self, restriction)
    if mod:get(SettingNames.EnableMod) then
        return false
    end
    return func(self, restriction)
end)

mod:hook(CLASS.AccountManagerWinGDK, "region_has_restriction", function(func, self, restriction)
    if mod:get(SettingNames.EnableMod) then
        return false
    end
    return func(self, restriction)
end)

mod:hook(CLASS.AccountManagerXboxLive, "region_has_restriction", function(func, self, restriction)
    if mod:get(SettingNames.EnableMod) then
        return false
    end
    return func(self, restriction)
end)