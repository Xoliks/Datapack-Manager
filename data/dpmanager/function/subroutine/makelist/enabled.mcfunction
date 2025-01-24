data modify storage dpmanager:data packinfo append value {new:true,enabled:true}

execute store result storage dpmanager:data packinfo[{new:true}].load_order int 1 if data storage dpmanager:data packinfo[{}]
data modify storage dpmanager:data temp.data.description set from storage dpmanager:data lastoutput.enabled[0].hover_event.value.extra[2]
execute store result storage dpmanager:data packinfo[{new:true}].description_duplicate_count int 1 run function dpmanager:subroutine/makelist/determine_description_duplicate_count with storage dpmanager:data temp
data modify storage dpmanager:data packinfo[{new:true}].description set from storage dpmanager:data lastoutput.enabled[0].hover_event.value.extra[2]
data modify storage dpmanager:data packinfo[{new:true}].filename set from storage dpmanager:data lastoutput.enabled[0].hover_event.value.extra[0]
data modify storage dpmanager:data packinfo[{new:true}].filename set from storage dpmanager:data lastoutput.enabled[0].hover_event.value.extra[0].""
data modify storage dpmanager:data packinfo[{new:true}].filepath set from storage dpmanager:data lastoutput.enabled[0].with[0].with[0].""
data modify storage dpmanager:data packinfo[{new:true}].source set from storage dpmanager:data lastoutput.enabled[0].with[0].with[1].translate


data remove storage dpmanager:data temp
data remove storage dpmanager:data packinfo[{new:true}].new

data remove storage dpmanager:data lastoutput.enabled[0]
data remove storage dpmanager:data lastoutput.enabled[0]

execute if data storage dpmanager:data lastoutput.enabled[0] run function dpmanager:subroutine/makelist/enabled