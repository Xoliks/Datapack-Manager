data modify storage dpmanager:datapacks list append value {new:true,enabled:false}

data modify storage dpmanager:datapacks temp.data.description set from storage dpmanager:lastoutput enabled[0].hover_event.text.extra[2]
execute store result storage dpmanager:datapacks list[{new:true}].description_duplicate_count int 1 run function dpmanager:subroutine/makelist/determine_description_duplicate_count with storage dpmanager:datapacks temp
data modify storage dpmanager:datapacks list[{new:true}].description set from storage dpmanager:lastoutput disabled[0].hover_event.text.extra[2]
data modify storage dpmanager:datapacks list[{new:true}].filename set from storage dpmanager:lastoutput disabled[0].hover_event.text.extra[0]
data modify storage dpmanager:datapacks list[{new:true}].filename set from storage dpmanager:lastoutput disabled[0].hover_event.text.extra[0].""
data modify storage dpmanager:datapacks list[{new:true}].filepath set from storage dpmanager:lastoutput disabled[0].with[0].with[0].""
data modify storage dpmanager:datapacks list[{new:true}].source set from storage dpmanager:lastoutput disabled[0].with[0].with[1].translate

data remove storage dpmanager:datapacks temp
data remove storage dpmanager:datapacks list[{new:true}].new

data remove storage dpmanager:lastoutput disabled[0]
data remove storage dpmanager:lastoutput disabled[0]

execute if data storage dpmanager:lastoutput disabled[0] run function dpmanager:subroutine/makelist/disabled