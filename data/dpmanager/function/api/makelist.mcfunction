# makes a list of all installed datapacks in data storage (dpmanager:datapacks)
# this function is called on load, so you'll probably never need to call this function manually
# this function takes an unspecified amount of time, because it has to forceload a faraway area (usually about 7 game ticks)
#> /function dpmanager:api/makelist

function dpmanager:subroutine/makelist/loop_until_force_loaded