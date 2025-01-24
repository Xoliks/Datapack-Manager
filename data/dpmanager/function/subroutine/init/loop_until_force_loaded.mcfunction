forceload add 29999997 -9936745

execute unless loaded 29999997 300 -9936745 run schedule function dpmanager:subroutine/init/loop_until_force_loaded 1t replace
execute if loaded 29999997 300 -9936745 run function dpmanager:subroutine/init/set_command_blocks