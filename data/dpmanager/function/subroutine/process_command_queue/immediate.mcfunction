execute unless data storage dpmanager:data queue.immediate[] run return 0

data modify storage dpmanager:data queue.command set from storage dpmanager:data queue.immediate[0]
function dpmanager:subroutine/process_command_queue/run_command with storage dpmanager:data queue
data remove storage dpmanager:data queue.immediate[0]

function dpmanager:subroutine/process_command_queue/immediate