# gets the filename of the datapack specified by it's pack description
# the filename goes to data storage at dpmanager:datapacks out
#> /function dpmanager:api/get_filename {description:<description>}

$data modify storage dpmanager:datapacks out set from storage dpmanager:datapacks all."$(description)".file