# gets the enabled of the datapack specified by it's pack info
# the enabled is returned as the result of this function
#> /function dpmanager:api/return_load_order {packinfo:{<info>}}

$return run data get storage dpmanager:data packinfo[$(packinfo)].enabled