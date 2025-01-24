# runs the command:
#> /datapack enable <pack1> first <pack2>
# pack1 must be already disabled, if there's a chance pack1 is enabled then use api/put_first instead
# api/put_first is a more user friendly version of this function, consider using it instead
#> function dpmanager:api/enable_first {packinfo:{<info>}}

$function dpmanager:subroutine/enable_first with storage dpmanager:data packinfo[$(packinfo)]

