data remove storage dpmanager:datapacks list
data remove storage dpmanager:datapacks out
data remove storage dpmanager:datapacks temp

setblock 0 100 0 air
setblock 0 101 0 air
forceload remove 0 0

$datapack disable '$(filepath)'