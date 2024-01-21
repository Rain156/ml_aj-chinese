## Highlight an MLAJ model
## player context
## "id": The model id

scoreboard players set @s ml_aj.temp 0
$execute store result score @s ml_aj.temp as @e[tag=aj.rig_root] if data entity @s {item:{tag:{data:{badge:$(id)}}}} run function ml_aj:model/find/highlight

$execute if score @s ml_aj.temp matches 0 run tellraw @a[tag=debug] [{"text":"\n","color":"red"},{"text":"Failed to highlight the model with id "},{"text":"$(id)","color":"gold"},{"text":".\n"}]
