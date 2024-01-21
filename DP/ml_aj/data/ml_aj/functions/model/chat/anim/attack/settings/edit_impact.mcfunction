## player context
## "id": The model's UUID string
## "index": The animation index
## "action": The current action

$execute store result score #ml_temp ml_aj.temp run data get entity $(id) item.tag.data.anims.attack[$(index)].impact_p
$execute store result score @s ml_aj.temp run data get entity $(id) item.tag.data.anims.attack[$(index)].time

data modify storage ml_aj:logic data.player.temp.inc set value 1
$execute if data storage ml_aj:logic {data:{player:{temp:{inc:$(action)}}}} if score #ml_temp ml_aj.temp matches ..99 run scoreboard players add #ml_temp ml_aj.temp 5
$execute unless data storage ml_aj:logic {data:{player:{temp:{inc:$(action)}}}} if score #ml_temp ml_aj.temp matches 1.. run scoreboard players remove #ml_temp ml_aj.temp 5

execute if score #ml_temp ml_aj.temp matches ..-1 run scoreboard players set #ml_temp ml_aj.temp 0
execute if score #ml_temp ml_aj.temp matches 101.. run scoreboard players set #ml_temp ml_aj.temp 100

#Get the actual frame count, and the percentage
scoreboard players set #ml_temp ml_aj.number 100
$execute as $(id) store result entity @s item.tag.data.anims.attack[$(index)].impact_p int 1 run scoreboard players get #ml_temp ml_aj.temp
scoreboard players operation #ml_temp ml_aj.temp *= @s ml_aj.temp
$execute as $(id) store result entity @s item.tag.data.anims.attack[$(index)].impact int 1 run scoreboard players operation #ml_temp ml_aj.temp /= #ml_temp ml_aj.number

$function ml_aj:model/chat/anim/attack/settings/display {id:"$(id)",index:$(index)}
