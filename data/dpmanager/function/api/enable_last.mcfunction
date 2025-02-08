# runs the command: /datapack enable <pack1> last
# WARNING, this function could result in an infinite reload loop if two packs are fighting for the same load position
# pack1 must be already disabled
#> function dpmanager:api/enable_last {packinfo:{<info>}}

$function dpmanager:subroutine/enable_last with storage dpmanager:data packinfo[$(packinfo)]

