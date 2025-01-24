# runs the command:
#> /datapack enable <pack1> last <pack2>
# pack1 must be already disabled, if there's a chance pack1 is enabled then use api/put_last instead
# api/put_last is a more user friendly version of this function, consider using it instead
#> function dpmanager:api/enable_last {packinfo:{<info>}}

$function dpmanager:subroutine/enable_last with storage dpmanager:data packinfo[$(packinfo)]

