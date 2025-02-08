# returns 1 if the pack is avaiable, whether or not it is enabled. returns fail if the pack is not available
#> /function dpmanager:api/return_load_order {packinfo:{<info>}}

$execute if data storage dpmanager:data packinfo[$(packinfo)] run return 1
return fail