# uninstalls and disables a pack based on it's description
# this function is for a pack to disable itself in it's uninstall function
# if your pack is disabling a seprate pack, then use the disable function instead
# you should call this function at the VERY END of your own pack's uninstall function
#> /function dpmanager:api/uninstall {packinfo:{<description>}}

$function dpmanager:subroutine/uninstall with storage dpmanager:datapacks list[$(packinfo)]