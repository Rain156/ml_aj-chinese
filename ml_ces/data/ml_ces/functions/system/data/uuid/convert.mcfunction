## target entity context
## Converted value is stored in ml_ces:logic data.uuid.output

execute unless data storage ml_ces:logic data.uuid.dictionary run data modify storage ml_ces:logic data.uuid.dictionary set value []
data remove storage ml_ces:logic data.uuid.output

#First check if the conversion already exists since its less expensive
data modify storage ml_ces:logic data.uuid.input set from entity @s UUID
data modify storage ml_ces:logic data.uuid.lookup.id set from storage ml_ces:logic data.uuid.input
function ml_ces:system/data/uuid/convert_final with storage ml_ces:logic data.uuid.lookup
execute if score #ml_uuid ml_ces.temp matches 1 run return 0

execute if entity @s[type=!minecraft:player] run function ml_ces:system/data/uuid/interpret
execute if entity @s[type=minecraft:player] run function ml_ces:system/data/uuid/interpret_player
