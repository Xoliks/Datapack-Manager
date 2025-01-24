# commands in the command queue are run on reload or when this function is called
# commands are removed from the queue after they are run
# there are two queues, one for commands to run immediately on reload, and one to wait to run until after remaking the datapack packinfo
# some commands may require the datapack packinfo to update before running
# add a command to the queue with either of the following commands
#> /data modify storage dpmanager:data queue.immediate append value "<command>"
#> /data modify storage dpmanager:data queue.wait append value "<command>"
# process the queue with the following command
#> /function dpmanager:api/process_command_queue

function dpmanager:subroutine/process_command_queue/immediate
schedule function dpmanager:subroutine/process_command_queue/wait 3t replace