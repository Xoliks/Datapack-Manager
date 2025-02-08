# runs the command: /datapack enable <pack1> after <pack2>
# pack1 must be already disabled, and pack2 must be enabled
# if there's a chance pack1 is enabled or pack2 is disabled then consider using api/put_after instead
# WARNING, this function could result in an infinite reload loop if two packs are fighting for the same load position
# api/put_after is a more user friendly version of this function, consider using it instead
#> function dpmanager:api/enable_after {packinfo_1:{<info>},packinfo_2:{<info>}}

$data modify storage dpmanager:data out set from storage dpmanager:data packinfo[$(packinfo_1)].filepath
data modify storage dpmanager:data temp.enable_after.pack1 set from storage dpmanager:data out
$data modify storage dpmanager:data out set from storage dpmanager:data packinfo[$(packinfo_2)].filepath
data modify storage dpmanager:data temp.enable_after.pack2 set from storage dpmanager:data out
function dpmanager:subroutine/enable_after with storage dpmanager:data temp
