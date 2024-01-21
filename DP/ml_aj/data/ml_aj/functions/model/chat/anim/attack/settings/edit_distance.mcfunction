## player context
## "id": The model's UUID string
## "index": The animation index
## "distance": The distance integer
## "action": The current action

$scoreboard players set #ml_temp ml_aj.temp $(distance)

data modify storage ml_aj:logic data.player.temp.inc set value 1
$execute if data storage ml_aj:logic {data:{player:{temp:{inc:$(action)}}}} if score #ml_temp ml_aj.temp matches ..245 run scoreboard players add #ml_temp ml_aj.temp 5
$execute unless data storage ml_aj:logic {data:{player:{temp:{inc:$(action)}}}} if score #ml_temp ml_aj.temp matches 15.. run scoreboard players remove #ml_temp ml_aj.temp 5

#Store the float value
$execute as $(id) store result entity @s item.tag.data.anims.attack[$(index)].distance float 0.1 run scoreboard players get #ml_temp ml_aj.temp

#Store the raycast tick count for distance (distance * 10 / 2)
scoreboard players operation #ml_temp ml_aj.temp /= #ml_aj_two ml_aj.global
$execute as $(id) store result entity @s item.tag.data.anims.attack[$(index)].dist_tick int 1 run scoreboard players get #ml_temp ml_aj.temp

$function ml_aj:model/chat/anim/attack/settings/display {id:"$(id)",index:$(index)}
