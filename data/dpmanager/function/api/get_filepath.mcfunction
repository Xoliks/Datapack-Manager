# gets the filepath of the datapack specified by its packinfo
# the filepath goes to data storage at dpmanager:data out
#> /function dpmanager:api/get_filepath {packinfo:{<info>}}

$data modify storage dpmanager:data out set from storage dpmanager:data packinfo[$(packinfo)].filepath