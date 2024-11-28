--[[
    Author: Igromanru
    Date: 28.11.2024
    Mod Name: Remove Region Restrictions
]]
local mod = get_mod("RemoveRegionRestrictions")

local SettingNames = mod:io_dofile("RemoveRegionRestrictions/scripts/setting_names")

return {
  mod_name =
  {
    en = "Remove Region Restrictions",
  },
  mod_description =
  {
    en = "Removes censorship for Germany, Austria and Japan players",
  },
  [SettingNames.EnableMod] = {
    en = "Enable"
  },
}
