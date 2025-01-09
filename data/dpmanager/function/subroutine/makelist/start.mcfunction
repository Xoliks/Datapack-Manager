forceload add 0 0
setblock 0 100 0 minecraft:repeating_command_block{auto:true,Command:"datapack list enabled"}
setblock 0 101 0 minecraft:repeating_command_block{auto:true,Command:"datapack list available"}

schedule function dpmanager:subroutine/makelist/end 3t replace