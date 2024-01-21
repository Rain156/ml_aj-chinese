## player context
## "id": The model's UUID string
## "action": The action to use

$execute store result score @s ml_aj.temp run data get entity $(id) item.tag.data.view

data modify storage ml_aj:logic data.player.temp.inc set value 1
$execute if data storage ml_aj:logic {data:{player:{temp:{inc:$(action)}}}} if score @s ml_aj.temp matches ..19 run scoreboard players add @s ml_aj.temp 1
$execute unless data storage ml_aj:logic {data:{player:{temp:{inc:$(action)}}}} if score @s ml_aj.temp matches 2.. run scoreboard players remove @s ml_aj.temp 1

$execute store result entity $(id) item.tag.data.view int 1 run scoreboard players get @s ml_aj.temp
$execute as $(id) run function ml_aj:model/setup/bones_final

$function ml_aj:model/chat/extra/display {id:"$(id)"}
