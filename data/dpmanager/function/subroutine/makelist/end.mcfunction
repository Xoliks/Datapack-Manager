data remove storage dpmanager:datapacks list

execute if data block 0 100 0 LastOutput.extra[0].with[1].extra run data modify storage dpmanager:lastoutput enabled set from block 0 100 0 LastOutput.extra[0].with[1].extra
execute if data block 0 101 0 LastOutput.extra[0].with[1].extra run data modify storage dpmanager:lastoutput disabled set from block 0 101 0 LastOutput.extra[0].with[1].extra
execute unless data block 0 100 0 LastOutput.extra[0].with[1].extra run data modify storage dpmanager:lastoutput enabled append from block 0 100 0 LastOutput.extra[0].with[1]
execute unless data block 0 101 0 LastOutput.extra[0].with[1].extra run data modify storage dpmanager:lastoutput disabled append from block 0 101 0 LastOutput.extra[0].with[1]

setblock 0 100 0 air
setblock 0 101 0 air
forceload remove 0 0

#return fail

execute if data storage dpmanager:lastoutput enabled run function dpmanager:subroutine/makelist/enabled
execute if data storage dpmanager:lastoutput disabled run function dpmanager:subroutine/makelist/disabled

data remove storage dpmanager:lastoutput enabled
data remove storage dpmanager:lastoutput disabled
data remove storage dpmanager:lastoutput temp
