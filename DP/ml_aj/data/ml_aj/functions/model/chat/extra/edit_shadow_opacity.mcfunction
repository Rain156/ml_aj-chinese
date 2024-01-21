## player context
## "id": The model's UUID string
## "action": The current action

$execute store result score @s ml_aj.temp run data get entity $(id) shadow_strength 100

data modify storage ml_aj:logic data.player.temp.inc set value 1
$execute if data storage ml_aj:logic {data:{player:{temp:{inc:$(action)}}}} if score @s ml_aj.temp matches ..140 run scoreboard players add @s ml_aj.temp 11
$execute unless data storage ml_aj:logic {data:{player:{temp:{inc:$(action)}}}} if score @s ml_aj.temp matches 1.. run scoreboard players remove @s ml_aj.temp 11

execute if score @s ml_aj.temp matches ..-1 run scoreboard players set @s ml_aj.temp 0
execute if score @s ml_aj.temp matches 142.. run scoreboard players set @s ml_aj.temp 141

#Store the float value
$execute store result entity $(id) shadow_strength float 0.01 run scoreboard players get @s ml_aj.temp

$function ml_aj:model/chat/extra/display {id:"$(id)"}
