# enables a pack based on its packinfo
#> /function dpmanager:api/enable {packinfo:{<info>}}

$function dpmanager:subroutine/enable with storage dpmanager:data packinfo[$(packinfo)]