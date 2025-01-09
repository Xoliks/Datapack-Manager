data remove storage dpmanager:datapacks list

execute if data block 29999997 300 -9936745 LastOutput.extra[0].with[1].extra run data modify storage dpmanager:lastoutput enabled set from block 29999997 300 -9936745 LastOutput.extra[0].with[1].extra
execute if data block 29999997 301 -9936745 LastOutput.extra[0].with[1].extra run data modify storage dpmanager:lastoutput disabled set from block 29999997 301 -9936745 LastOutput.extra[0].with[1].extra
execute unless data block 29999997 300 -9936745 LastOutput.extra[0].with[1].extra run data modify storage dpmanager:lastoutput enabled append from block 29999997 300 -9936745 LastOutput.extra[0].with[1]
execute unless data block 29999997 301 -9936745 LastOutput.extra[0].with[1].extra run data modify storage dpmanager:lastoutput disabled append from block 29999997 301 -9936745 LastOutput.extra[0].with[1]

setblock 29999997 300 -9936745 air
setblock 29999997 301 -9936745 air
forceload remove 29999997 -9936745

#return fail

execute if data storage dpmanager:lastoutput enabled run function dpmanager:subroutine/makelist/enabled
execute if data storage dpmanager:lastoutput disabled run function dpmanager:subroutine/makelist/disabled

data remove storage dpmanager:lastoutput enabled
data remove storage dpmanager:lastoutput disabled
data remove storage dpmanager:lastoutput temp
