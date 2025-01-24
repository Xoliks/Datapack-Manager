# gets the description of the datapack specified by it's pack info
# the description goes to data storage at dpmanager:data out
#> /function dpmanager:api/get_description {packinfo:{<info>}}

$data modify storage dpmanager:data out set from storage dpmanager:data packinfo[$(packinfo)].description