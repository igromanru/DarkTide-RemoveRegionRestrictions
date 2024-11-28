--[[
    Author: Igromanru
    Date: 28.11.2024
    Mod Name: Remove Region Restrictions
]]
local mod = get_mod("RemoveRegionRestrictions")

local SettingNames = mod:io_dofile("RemoveRegionRestrictions/scripts/setting_names")

local function get_option_widgets()
	local widgets = {
		{
			setting_id = SettingNames.EnableMod,
			type = "checkbox",
			default_value = true
		},
		{
			setting_id = SettingNames.RagdollInteraction,
			tooltip = SettingNames.RagdollInteractionTooltip,
			type = "checkbox",
			default_value = false
		},
	}

	return widgets
end

return {
	name = mod:localize("mod_name"),
	description = mod:localize("mod_description"),
	is_togglable = true,
	allow_rehooking = true,
	options = {
		widgets = get_option_widgets()
	},
}
