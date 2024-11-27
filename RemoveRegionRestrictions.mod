return {
	run = function()
		fassert(rawget(_G, "new_mod"), "`RemoveRegionRestrictions` encountered an error loading the Darktide Mod Framework.")

		new_mod("RemoveRegionRestrictions", {
			mod_script       = "RemoveRegionRestrictions/scripts/RemoveRegionRestrictions",
			mod_data         = "RemoveRegionRestrictions/scripts/RemoveRegionRestrictions_data",
			mod_localization = "RemoveRegionRestrictions/scripts/RemoveRegionRestrictions_localization",
		})
	end,
	packages = {},
}
