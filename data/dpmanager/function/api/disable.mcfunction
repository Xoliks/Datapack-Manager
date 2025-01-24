# disables a pack based on it's description
# this function is for a pack to disable a separate pack
# if you wish for your pack to disable itself, then use the uninstall function instead
#> /function dpmanager:api/disable {packinfo:{<info>}}

$function dpmanager:subroutine/disable with storage dpmanager:data packinfo[$(packinfo)]