## player context
## "id": The model's UUID string
## "index": The animation index
## "damage": The damage amount
## "action": The current action

$scoreboard players set #ml_temp ml_aj.temp $(damage)

data modify storage ml_aj:logic data.player.temp.inc set value 1
$execute if data storage ml_aj:logic {data:{player:{temp:{inc:$(action)}}}} if score #ml_temp ml_aj.temp matches ..39 run scoreboard players add #ml_temp ml_aj.temp 1
$execute unless data storage ml_aj:logic {data:{player:{temp:{inc:$(action)}}}} if score #ml_temp ml_aj.temp matches 0.. run scoreboard players remove #ml_temp ml_aj.temp 1

$execute as $(id) store result entity @s item.tag.data.anims.attack[$(index)].damage int 1 run scoreboard players get #ml_temp ml_aj.temp
