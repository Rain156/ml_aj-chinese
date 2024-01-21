## player context
## "id": The model's UUID string
## "index": The animation index
## "action": The current action

scoreboard players set #ml_temp ml_aj.temp 0
$execute store result score #ml_temp ml_aj.temp run data get entity $(id) item.tag.data.anims.attack[$(index)].cooldown

data modify storage ml_aj:logic data.player.temp.inc set value 1
$execute if data storage ml_aj:logic {data:{player:{temp:{inc:$(action)}}}} if score #ml_temp ml_aj.temp matches ..190 run scoreboard players add #ml_temp ml_aj.temp 10
$execute unless data storage ml_aj:logic {data:{player:{temp:{inc:$(action)}}}} if score #ml_temp ml_aj.temp matches 10.. run scoreboard players remove #ml_temp ml_aj.temp 10

$execute as $(id) store result entity @s item.tag.data.anims.attack[$(index)].cooldown int 1 run scoreboard players get #ml_temp ml_aj.temp

$function ml_aj:model/chat/anim/attack/settings/display {id:"$(id)",index:$(index)}
