# forceload an area and set command blocks on first load
execute unless loaded 29999997 300 -9936745 run function dpmanager:subroutine/init

scoreboard objectives add dpmanager.numbers dummy

schedule function dpmanager:api/makelist 3t replace
function dpmanager:api/process_command_queue