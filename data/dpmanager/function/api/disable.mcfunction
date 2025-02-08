# disables a pack based on its packinfo
# this function is to be used if your pack is disabling a separate pack
# if you wish for your pack to disable itself, then use the uninstall function instead
#> /function dpmanager:api/disable {packinfo:{<info>}}

$function dpmanager:subroutine/disable with storage dpmanager:data packinfo[$(packinfo)]