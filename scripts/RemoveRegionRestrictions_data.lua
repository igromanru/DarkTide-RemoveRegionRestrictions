--[[
    Author: Igromanru
    Date: 28.11.2024
    Mod Name: Remove Region Restrictions
]]
local mod = get_mod("RemoveRegionRestrictions")
local SettingNames = mod:io_dofile("RemoveRegionRestrictions/scripts/setting_names")

return {
	name = mod:localize("mod_name"),
	description = mod:localize("mod_description"),
	is_togglable = true,
	allow_rehooking = true,
	options = {
		widgets = {
			{
				setting_id = SettingNames.EnableMod,
				type = "checkbox",
				default_value = true
			},
		}
	},
}
