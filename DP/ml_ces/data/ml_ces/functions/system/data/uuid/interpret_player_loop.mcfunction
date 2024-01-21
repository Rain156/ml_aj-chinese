## function ml_ces:system/data/uuid/interpret_player_final
## function ml_ces:system/data/uuid/interpret_player_loop
## new armor stand entity context
## "index": The current string index

scoreboard players add #ml_temp ml_ces.temp 1
execute if score #ml_temp ml_ces.temp matches 30.. run return 0

$data modify storage ml_ces:logic data.uuid.check set string storage ml_ces:logic data.uuid.string $(index)
data modify storage ml_ces:logic data.uuid.check set string storage ml_ces:logic data.uuid.check 0 14
$execute if data storage ml_ces:logic {data:{uuid:{check:'","hoverEvent"'}}} run data modify storage ml_ces:logic data.uuid.output set string storage ml_ces:logic data.uuid.string 0 $(index)

$scoreboard players set #ml_temp ml_ces.check $(index)
execute store result storage ml_ces:logic data.uuid.loop.index int 1 run scoreboard players add #ml_temp ml_ces.check 1

execute unless data storage ml_ces:logic data.uuid.output run function ml_ces:system/data/uuid/interpret_player_loop with storage ml_ces:logic data.uuid.loop
