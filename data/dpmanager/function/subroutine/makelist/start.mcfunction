forceload add 29999997 -9936745
setblock 29999997 300 -9936745 minecraft:repeating_command_block{auto:true,Command:"datapack list enabled"}
setblock 29999997 301 -9936745 minecraft:repeating_command_block{auto:true,Command:"datapack list available"}

schedule function dpmanager:subroutine/makelist/end 3t replace