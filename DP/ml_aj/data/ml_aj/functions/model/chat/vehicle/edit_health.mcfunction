## player context
## "id": The model's UUID string
## "health": The current mob health
## "action": The action to use

data modify storage ml_aj:logic data.player.temp.inc set value 1
scoreboard players set @s ml_aj.check 10
$scoreboard players set @s ml_aj.temp $(health)
scoreboard players operation @s ml_aj.temp *= #ml_aj_ten ml_aj.global

$execute if data storage ml_aj:logic {data:{player:{temp:{inc:$(action)}}}} if score @s ml_aj.temp matches 200..499 run scoreboard players set @s ml_aj.check 50
$execute unless data storage ml_aj:logic {data:{player:{temp:{inc:$(action)}}}} if score @s ml_aj.temp matches 201..500 run scoreboard players set @s ml_aj.check 50
$execute if data storage ml_aj:logic {data:{player:{temp:{inc:$(action)}}}} if score @s ml_aj.temp matches 500..999 run scoreboard players set @s ml_aj.check 100
$execute unless data storage ml_aj:logic {data:{player:{temp:{inc:$(action)}}}} if score @s ml_aj.temp matches 501..1000 run scoreboard players set @s ml_aj.check 100
$execute if data storage ml_aj:logic {data:{player:{temp:{inc:$(action)}}}} if score @s ml_aj.temp matches 1000.. run scoreboard players set @s ml_aj.check 500
$execute unless data storage ml_aj:logic {data:{player:{temp:{inc:$(action)}}}} if score @s ml_aj.temp matches 1001.. run scoreboard players set @s ml_aj.check 500

$execute if data storage ml_aj:logic {data:{player:{temp:{inc:$(action)}}}} if score @s ml_aj.temp matches ..4500 run scoreboard players operation @s ml_aj.temp += @s ml_aj.check
$execute unless data storage ml_aj:logic {data:{player:{temp:{inc:$(action)}}}} if score @s ml_aj.temp matches 10.. run scoreboard players operation @s ml_aj.temp -= @s ml_aj.check

execute if score @s ml_aj.temp matches ..-1 run scoreboard players set @s ml_aj.temp 0

$execute store result entity $(id) item.tag.data.health float 0.1 run scoreboard players get @s ml_aj.temp
$execute store result entity $(id) item.tag.data.health_max float 0.1 run scoreboard players get @s ml_aj.temp
$execute as $(id) run function ml_aj:model/vehicle/set_health with entity @s item.tag.data

$function ml_aj:model/chat/vehicle/display {id:"$(id)"}
