# runs the command:
#> /datapack enable <pack1> before <pack2>
# pack1 must be already disabled, and pack2 must be enabled
# if there's a chance pack1 is enabled or pack2 is disabled then consider using api/put_before instead
# api/put_before is a more user friendly version of this function, consider using it instead
#> function dpmanager:api/enable_before {packinfo_1:{<info>},packinfo_2:{<info>}}

$data modify storage dpmanager:data out set from storage dpmanager:data packinfo[$(packinfo_1)].filepath
data modify storage dpmanager:data temp.enable_before.pack1 set from storage dpmanager:data out
$data modify storage dpmanager:data out set from storage dpmanager:data packinfo[$(packinfo_2)].filepath
data modify storage dpmanager:data temp.enable_before.pack2 set from storage dpmanager:data out
function dpmanager:subroutine/enable_before with storage dpmanager:data temp
