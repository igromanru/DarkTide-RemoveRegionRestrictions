local mod = get_mod("RemoveRegionRestrictions")

mod:hook(CLASS.AccountManagerSteam, "region_has_restriction", function(func, self, restriction)
    return false
end)

mod:hook(CLASS.AccountManagerWinGDK, "region_has_restriction", function(func, self, restriction)
    return false
end)

mod:hook(CLASS.AccountManagerXboxLive, "region_has_restriction", function(func, self, restriction)
    return false
end)