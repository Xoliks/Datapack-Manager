# gets the filename of the datapack specified by its packinfo
# the filename goes to data storage at dpmanager:data out
#> /function dpmanager:api/get_filename {packinfo:{<info>}}

$data modify storage dpmanager:data out set from storage dpmanager:data packinfo[$(packinfo)].filename