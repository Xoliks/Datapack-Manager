data remove storage dpmanager:datapacks enabled
data remove storage dpmanager:datapacks disabled
data remove storage dpmanager:datapacks all
data remove storage dpmanager:datapacks out

setblock 0 100 0 air
setblock 0 101 0 air
forceload remove 0 0

$datapack disable "$(out)"