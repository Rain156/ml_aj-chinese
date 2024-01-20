## player context
## "id": The model's UUID string
## "action": The action to use

$execute store result score @s ml_aj.temp run data get entity $(id) item.tag.data.brightness

data modify storage ml_aj:logic data.player.temp.inc set value 1
$execute if data storage ml_aj:logic {data:{player:{temp:{inc:$(action)}}}} if score @s ml_aj.temp matches -1 run scoreboard players set @s ml_aj.temp 9
$execute if data storage ml_aj:logic {data:{player:{temp:{inc:$(action)}}}} if score @s ml_aj.temp matches ..14 run scoreboard players add @s ml_aj.temp 1
$execute unless data storage ml_aj:logic {data:{player:{temp:{inc:$(action)}}}} if score @s ml_aj.temp matches 0.. run scoreboard players remove @s ml_aj.temp 1

$execute store result entity $(id) item.tag.data.brightness int 1 run scoreboard players get @s ml_aj.temp
$execute as $(id) run function ml_aj:model/setup/set_brightness with entity @s item.tag.data

$function ml_aj:model/chat/extra/display {id:"$(id)"}
