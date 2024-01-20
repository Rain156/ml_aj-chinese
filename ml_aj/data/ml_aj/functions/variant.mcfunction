## Set the variant for a model
## player context
## "id": The model id
## "name": The variant name

scoreboard players set @s ml_aj.temp 0
$data modify storage ml_aj:logic data.player.temp.variant set value {name:"",variant:"$(name)"}
$execute as @e[tag=aj.rig_root] if data entity @s {item:{tag:{data:{badge:$(id)}}}} run data modify storage ml_aj:logic data.player.temp.variant.name set from entity @s item.tag.data.name
execute if data storage ml_aj:logic {data:{player:{temp:{variant:{variant:""}}}}} run data modify storage ml_aj:logic data.player.temp.variant.variant set value "default"

$execute store result score @s ml_aj.temp as @e[tag=aj.rig_root] if data entity @s {item:{tag:{data:{badge:$(id)}}}} run function ml_aj:model/setup/variant with storage ml_aj:logic data.player.temp.variant

$execute if score @s ml_aj.temp matches 0 run tellraw @s [{"text":"\n","color":"red"},{"text":"Failed to load the "},{"text":"$(name)","color":"gold"},{"text":" variant for the model with id "},{"text":"$(id)","color":"gold"},{"text":". Either the variant does not exist, or you need to check the Include Apply Variant Functions option in your Animated Java Project Settings when exporting the model.\n"}]

$execute as @e[tag=aj.rig_root] if data entity @s {item:{tag:{data:{badge:$(id)}}}} run data modify storage ml_aj:logic data.player.temp.id set from entity @s item.tag.data.id
execute unless score @s ml_aj.temp matches 0 as @p[tag=ml_aj.editor,distance=..1] run function ml_aj:model/chat/display with storage ml_aj:logic data.player.temp
