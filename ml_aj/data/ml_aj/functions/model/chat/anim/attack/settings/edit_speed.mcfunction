## player context
## "id": The model's UUID string
## "index": The animation index
## "speed": The projectile speed
## "action": The current action

$scoreboard players set #ml_temp ml_aj.temp $(speed)

data modify storage ml_aj:logic data.player.temp.inc set value 1
$execute if data storage ml_aj:logic {data:{player:{temp:{inc:$(action)}}}} if score #ml_temp ml_aj.temp matches ..9 run scoreboard players add #ml_temp ml_aj.temp 1
$execute unless data storage ml_aj:logic {data:{player:{temp:{inc:$(action)}}}} if score #ml_temp ml_aj.temp matches 2.. run scoreboard players remove #ml_temp ml_aj.temp 1

#Store the float value
$execute as $(id) store result entity @s item.tag.data.anims.attack[$(index)].proj_speed int 1 run scoreboard players get #ml_temp ml_aj.temp

$function ml_aj:model/chat/anim/attack/settings/display {id:"$(id)",index:$(index)}
