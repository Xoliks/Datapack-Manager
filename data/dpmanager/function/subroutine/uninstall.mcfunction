data remove storage dpmanager:data packinfo
data remove storage dpmanager:data out
data remove storage dpmanager:data temp
data remove storage dpmanager:data queue

scoreboard objectives remove dpmanager.numbers

setblock 29999997 300 -9936745 air
setblock 29999997 301 -9936745 air
forceload remove 29999997 -9936745

$datapack disable '$(filepath)'