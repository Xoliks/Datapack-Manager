# gets the description_duplicate_count of the datapack specified by its packinfo
# the description_duplicate_count is returned as the result of this function
#> /function dpmanager:api/return_description_duplicate_count {packinfo:{<info>}}

$return run data get storage dpmanager:data packinfo[$(packinfo)].description_duplicate_count