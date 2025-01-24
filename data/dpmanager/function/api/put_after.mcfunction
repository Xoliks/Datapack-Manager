# this function is designed to be called in the load function of a pack with a dependancy, to force this pack to load after the pack it's dependant on
# forces pack1 to be loaded after pack2 like:
#> /datapack enable <pack1> after <pack2>
# it does not matter if pack1 or pack2 are enabled or disabled, this pack will enable them both in the correct order
# if pack1 is already loaded direcly after pack2, then this function will do nothing. this is to prevent reload loops when this function is in a pack's load function
#> function dpmanager:api/enable_after {packinfo_1:{<info>},packinfo_2:{<info>}}

$execute store result score enabled1 dpmanager.numbers run data get storage dpmanager:data packinfo[$(packinfo_1)].enabled
$execute store result score enabled2 dpmanager.numbers run data get storage dpmanager:data packinfo[$(packinfo_2)].enabled

execute if score enabled1 dpmanager.numbers matches 1 if score enabled2 dpmanager.numbers matches 1 run say both enabled
execute unless score enabled1 dpmanager.numbers matches 1 if score enabled2 dpmanager.numbers matches 1 run say pack2 enabled
execute if score enabled1 dpmanager.numbers matches 1 unless score enabled2 dpmanager.numbers matches 1 run say pack1 enabled
execute unless score enabled1 dpmanager.numbers matches 1 unless score enabled2 dpmanager.numbers matches 1 run say neither enabled

$data modify storage dpmanager:data out set from storage dpmanager:data packinfo[$(packinfo_1)].filepath
data modify storage dpmanager:data temp.enable_after.pack1 set from storage dpmanager:data out
$data modify storage dpmanager:data out set from storage dpmanager:data packinfo[$(packinfo_2)].filepath
data modify storage dpmanager:data temp.enable_after.pack2 set from storage dpmanager:data out

# if both are enabled
# this score check is repeated multiple times instead of once to run a separate function to keep the macro values within this function
$execute if score enabled1 dpmanager.numbers matches 1 if score enabled2 dpmanager.numbers matches 1 \
  store result score load_order1 dpmanager.numbers run data get storage dpmanager:data packinfo[$(packinfo_1)].load_order
$execute if score enabled1 dpmanager.numbers matches 1 if score enabled2 dpmanager.numbers matches 1 \
  store result score load_order2 dpmanager.numbers run data get storage dpmanager:data packinfo[$(packinfo_2)].load_order
execute if score enabled1 dpmanager.numbers matches 1 if score enabled2 dpmanager.numbers matches 1 run \
  scoreboard players operation load_order1 dpmanager.numbers -= load_order2 dpmanager.numbers
execute if score enabled1 dpmanager.numbers matches 1 if score enabled2 dpmanager.numbers matches 1 \
  if score load_order1 dpmanager.numbers matches 0..1 run return 0

# if pack2 is disabled
$execute unless score enabled1 dpmanager.numbers matches 1 run data modify storage dpmanager:data queue.immediate append value \
  'function dpmanager:subroutine/enable with storage dpmanager:data packinfo[$(packinfo_2)]'

# if pack1 is enabled
$execute if score enabled1 dpmanager.numbers matches 1 run data modify storage dpmanager:data queue.immediate append value \
  'function dpmanager:subroutine/disable with storage dpmanager:data packinfo[$(packinfo_1)]'

# always 
data modify storage dpmanager:data queue.immediate append value \
  'function dpmanager:subroutine/enable_after with storage dpmanager:data temp.enable_after'

function dpmanager:api/process_command_queue