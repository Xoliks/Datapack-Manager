# returns the number of enabled datapacks
#> /function dpmanager:api/return_enabled_count

return run execute if data storage dpmanager:data packinfo[{enabled:1b}]