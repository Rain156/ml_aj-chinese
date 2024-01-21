## player context
## "id": The model's UUID string
## "speed": The current mob speed
## "action": The action to use

$scoreboard players set @s ml_aj.temp $(speed)

data modify storage ml_aj:logic data.player.temp.inc set value 1
$execute if data storage ml_aj:logic {data:{player:{temp:{inc:$(action)}}}} if score @s ml_aj.temp matches ..9 run scoreboard players add @s ml_aj.temp 1
$execute unless data storage ml_aj:logic {data:{player:{temp:{inc:$(action)}}}} if score @s ml_aj.temp matches 1.. run scoreboard players remove @s ml_aj.temp 1

$execute store result entity $(id) item.tag.data.speed int 1 run scoreboard players get @s ml_aj.temp
$execute as $(id) run function ml_aj:model/vehicle/set_speed with entity @s item.tag.data

$function ml_aj:model/chat/vehicle/display {id:"$(id)"}
