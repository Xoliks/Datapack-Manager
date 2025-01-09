# uninstalls this pack
# this pack does use it's own api to /datapack disable itself on uninstalation
# if you need to reinstall this pack then you'll have to re-enable it

function dpmanager:api/get_filename {"description": "A lightweight library pack for managing installed datapacks based on their pack descriptions"}
function dpmanager:subroutine/uninstall with storage dpmanager:datapacks