data remove storage dpmanager:datapacks list
data remove storage dpmanager:datapacks out
data remove storage dpmanager:datapacks temp

setblock 29999997 300 -9936745 air
setblock 29999997 301 -9936745 air
forceload remove 29999997 -9936745

$datapack disable '$(filepath)'