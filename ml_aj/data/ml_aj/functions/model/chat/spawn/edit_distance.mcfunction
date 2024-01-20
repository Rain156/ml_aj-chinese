## player context
## "id": The model's UUID string
## "distance": The despawn distance
## "action": The action to use

$scoreboard players set @s ml_aj.temp $(distance)

data modify storage ml_aj:logic data.player.temp.inc set value 1
$execute if data storage ml_aj:logic {data:{player:{temp:{inc:$(action)}}}} if score @s ml_aj.temp matches ..190 run scoreboard players add @s ml_aj.temp 10
$execute unless data storage ml_aj:logic {data:{player:{temp:{inc:$(action)}}}} if score @s ml_aj.temp matches 20.. run scoreboard players remove @s ml_aj.temp 10

$execute store result entity $(id) item.tag.data.ds_dist int 1 run scoreboard players get @s ml_aj.temp

$function ml_aj:model/chat/spawn/display {id:"$(id)"}
