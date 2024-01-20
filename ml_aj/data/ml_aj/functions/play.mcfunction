## Play a custom animation for a model
## player context
## "id": The model id
## "name": The animation name

scoreboard players set @s ml_aj.temp 0
$execute store result score @s ml_aj.temp as @e[tag=aj.rig_root] if data entity @s {item:{tag:{data:{badge:$(id)}}}} run function ml_aj:model/animation/custom/play {name:"$(name)",loop:1}

$execute if score @s ml_aj.temp matches 0 run tellraw @s [{"text":"\n","color":"red"},{"text":"Failed to play the "},{"text":"$(name)","color":"gold"},{"text":" custom animation for the model with id "},{"text":"$(id)","color":"gold"},{"text":".\n"}]
