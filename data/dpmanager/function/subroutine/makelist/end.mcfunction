data remove storage dpmanager:datapacks enabled
data remove storage dpmanager:datapacks disabled
data remove storage dpmanager:datapacks all
data remove storage dpmanager:lastoutput enabled
data remove storage dpmanager:lastoutput disabled

execute if data block 0 100 0 LastOutput.extra[0].with[1].extra run data modify storage dpmanager:lastoutput enabled set from block 0 100 0 LastOutput.extra[0].with[1].extra
execute if data block 0 101 0 LastOutput.extra[0].with[1].extra run data modify storage dpmanager:lastoutput disabled set from block 0 101 0 LastOutput.extra[0].with[1].extra
execute unless data block 0 100 0 LastOutput.extra[0].with[1].extra run data modify storage dpmanager:lastoutput enabled append from block 0 100 0 LastOutput.extra[0].with[1]
execute unless data block 0 101 0 LastOutput.extra[0].with[1].extra run data modify storage dpmanager:lastoutput disabled append from block 0 101 0 LastOutput.extra[0].with[1]

setblock 0 100 0 air
setblock 0 101 0 air
forceload remove 0 0

function dpmanager:subroutine/makelist/enabled/for_pack_in_lastoutput
function dpmanager:subroutine/makelist/disabled/for_pack_in_lastoutput

data remove storage dpmanager:lastoutput enabled
data remove storage dpmanager:lastoutput disabled
data remove storage dpmanager:lastoutput temp
