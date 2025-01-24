# initializes the command blocks on first load
# this function is called on load, so you'll probably never need to call this function manually
# this function takes an unspecified amount of time to complete, because it has to forceload a faraway area (usually about 7 game ticks)
#> /function dpmanager:api/init


function dpmanager:subroutine/init/loop_until_force_loaded