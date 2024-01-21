## player context
## "id": The model's UUID string
## "action": The current action

$execute store result score #ml_temp ml_aj.temp run data get entity $(id) item.tag.data.vehicle_temp.scale

data modify storage ml_aj:logic data.player.temp.inc set value 1
$execute if data storage ml_aj:logic {data:{player:{temp:{inc:$(action)}}}} if score #ml_temp ml_aj.temp matches ..29 run scoreboard players add #ml_temp ml_aj.temp 1
$execute unless data storage ml_aj:logic {data:{player:{temp:{inc:$(action)}}}} if score #ml_temp ml_aj.temp matches 2.. run scoreboard players remove #ml_temp ml_aj.temp 1

$execute as $(id) store result entity @s item.tag.data.vehicle_temp.scale int 1 run scoreboard players get #ml_temp ml_aj.temp
$execute as $(id) run function ml_aj:model/chat/vehicle/edit_scale_final

$function ml_aj:model/chat/vehicle/display {id:"$(id)"}
