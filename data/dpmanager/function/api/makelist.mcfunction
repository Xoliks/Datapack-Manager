# makes a list of all installed datapacks in data storage (dpmanager:datapacks)
# this function is called on load, so you'll probably never need to call this function manually
# this function takes 3 game ticks to complete because the command blocks need time to run their commands
#> /function dpmanager:api/makelist

function dpmanager:subroutine/makelist/start