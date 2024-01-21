## Spectate a locator/camera attached to a model
## player context
## "id": The model id
## "name": The locator name

execute unless entity @s[type=minecraft:player] run return 0

tag @s add ml_aj.locator_target

scoreboard players set @s ml_aj.temp 0
$data modify storage ml_aj:logic data.player.temp set value {model:"",name:"$(name)"}
$execute as @e[tag=aj.rig_root] if data entity @s {item:{tag:{data:{badge:$(id)}}}} run data modify storage ml_aj:logic data.player.temp.model set from entity @s item.tag.data.name
$execute store result score @s ml_aj.temp as @e[tag=aj.rig_root] if data entity @s {item:{tag:{data:{badge:$(id)}}}} run function ml_aj:model/location/locator/spectate with storage ml_aj:logic data.player.temp

tag @s remove ml_aj.locator_target

$execute if score @s ml_aj.temp matches 0 run tellraw @a[tag=debug] [{"text":"\n","color":"red"},{"text":"Failed to spectate the locator named "},{"text":"$(name)","color":"gold"},{"text":" for the model with id "},{"text":"$(id)","color":"gold"},{"text":".\n"}]
