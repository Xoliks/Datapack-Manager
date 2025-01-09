data modify storage dpmanager:lastoutput temp.description set from storage dpmanager:lastoutput disabled[0].hover_event.text.extra[2]

function dpmanager:subroutine/makelist/disabled/add_item_to_list with storage dpmanager:lastoutput temp

data remove storage dpmanager:lastoutput disabled[0]
data remove storage dpmanager:lastoutput disabled[0]

execute if data storage dpmanager:lastoutput disabled[0] run function dpmanager:subroutine/makelist/disabled/for_pack_in_lastoutput