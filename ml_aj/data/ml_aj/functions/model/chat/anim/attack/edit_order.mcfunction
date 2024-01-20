## player context
## "id": The model's UUID string
## "index": The animation index
## "action": The current action

$scoreboard players set #ml_temp ml_aj.temp $(index)
$execute store result score #ml_temp ml_aj.check run data get entity $(id) item.tag.data.anims.attack

data modify storage ml_aj:logic data.player.temp.inc set value 1
$execute if data storage ml_aj:logic {data:{player:{temp:{inc:$(action)}}}} if score #ml_temp ml_aj.temp matches 1.. run scoreboard players remove #ml_temp ml_aj.temp 1
$execute unless data storage ml_aj:logic {data:{player:{temp:{inc:$(action)}}}} if score #ml_temp ml_aj.temp < #ml_temp ml_aj.check run scoreboard players add #ml_temp ml_aj.temp 1

$data modify storage ml_aj:logic data.player.temp.current set value $(index)
execute store result storage ml_aj:logic data.player.temp.target int 1 run scoreboard players get #ml_temp ml_aj.temp
$execute unless score #ml_temp ml_aj.temp matches $(index) unless score #ml_temp ml_aj.temp = #ml_temp ml_aj.check as $(id) run function ml_aj:model/chat/anim/attack/edit_order_final with storage ml_aj:logic data.player.temp

$function ml_aj:model/chat/anim/attack/display {id:"$(id)",index:$(index)}
