# gets the load_order of the datapack specified by it's pack info
# the load_order is returned as the result of this function
#> /function dpmanager:api/return_load_order {packinfo:{<info>}}

$return run data get storage dpmanager:data packinfo[$(packinfo)].load_order