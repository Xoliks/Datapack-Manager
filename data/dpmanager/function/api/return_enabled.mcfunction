# returns 1 if the pack is enabled, returns fail otherwise
#> /function dpmanager:api/return_enabled {packinfo:{<info>}}

$execute store result score is_enabled dpmanager.numbers run data get storage dpmanager:data packinfo[$(packinfo)].enabled
execute if score is_enabled dpmanager.numbers matches 1 run return 1
return fail