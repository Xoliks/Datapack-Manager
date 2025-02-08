# returns the number of disabled datapacks
#> /function dpmanager:api/return_disabled_count

return run execute if data storage dpmanager:data packinfo[{enabled:0b}]