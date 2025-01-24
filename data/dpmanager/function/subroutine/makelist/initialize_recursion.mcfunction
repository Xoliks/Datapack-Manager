data remove storage dpmanager:data packinfo

execute if data block 29999997 300 -9936745 LastOutput.extra[0].with[1].extra run data modify storage dpmanager:data lastoutput.enabled set from block 29999997 300 -9936745 LastOutput.extra[0].with[1].extra
execute if data block 29999997 301 -9936745 LastOutput.extra[0].with[1].extra run data modify storage dpmanager:data lastoutput.disabled set from block 29999997 301 -9936745 LastOutput.extra[0].with[1].extra
execute unless data block 29999997 300 -9936745 LastOutput.extra[0].with[1].extra run data modify storage dpmanager:data lastoutput.enabled append from block 29999997 300 -9936745 LastOutput.extra[0].with[1]
execute unless data block 29999997 301 -9936745 LastOutput.extra[0].with[1].extra run data modify storage dpmanager:data lastoutput.disabled append from block 29999997 301 -9936745 LastOutput.extra[0].with[1]

execute if data storage dpmanager:data lastoutput.enabled run function dpmanager:subroutine/makelist/enabled
execute if data storage dpmanager:data lastoutput.disabled run function dpmanager:subroutine/makelist/disabled

data remove storage dpmanager:data lastoutput
