# makes a packinfo list of all installed datapacks in data storage (dpmanager:data)
# this function is called on load, so you'll probably never need to call this function manually
# be careful not to run this direcly after a reload, because the command blocks won't have had time to update
#> /function dpmanager:api/makelist

function dpmanager:subroutine/makelist/initialize_recursion