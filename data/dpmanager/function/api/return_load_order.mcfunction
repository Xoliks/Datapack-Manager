# returns the load_order of the datapack specified by its packinfo
# the load order is a number that corresponds to the order that the packs were loaded in
#> /function dpmanager:api/return_load_order {packinfo:{<info>}}

$return run data get storage dpmanager:data packinfo[$(packinfo)].load_order