## function ml_ces:system/data/uuid/convert
## "id": The entity's UUID

scoreboard players set #ml_uuid ml_ces.temp 0
$execute if data storage ml_ces:logic data.uuid.dictionary[{id:$(id)}] run scoreboard players set #ml_uuid ml_ces.temp 1
$execute if score #ml_uuid ml_ces.temp matches 1 run data modify storage ml_ces:logic data.uuid.output set from storage ml_ces:logic data.uuid.dictionary[{id:$(id)}].string
