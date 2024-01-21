## player context
## "id": The model's UUID string
## "action": The action to use

$execute store result score #ml_temp ml_aj.temp run data get entity $(id) item.tag.data.bar_offset

data modify storage ml_aj:logic data.player.temp.inc set value 1
$execute if data storage ml_aj:logic {data:{player:{temp:{inc:$(action)}}}} if score #ml_temp ml_aj.temp matches ..39 run scoreboard players add #ml_temp ml_aj.temp 1
$execute unless data storage ml_aj:logic {data:{player:{temp:{inc:$(action)}}}} if score #ml_temp ml_aj.temp matches -19.. run scoreboard players remove #ml_temp ml_aj.temp 1

$execute as $(id) run function ml_aj:model/chat/vehicle/edit_offset_final

$function ml_aj:model/chat/vehicle/display {id:"$(id)"}
