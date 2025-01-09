# makes a list of all enabled and disabled datapacks in data storage (dpmanager:datapacks) with their pack description as their key
# if two packs have the same description, then the pack loaded later will take priority
# this function is called on load, so you'll probably never need to call this function manually
# this function does take 3 game ticks to complete, because the command blocks need time to run their commands
#> /function dpmanager:api/makelist

function dpmanager:subroutine/makelist/start