## Play a custom animation for a model
## player context
## "id": The model id
## "name": The animation name

scoreboard players set @s ml_aj.temp 0
$execute store result score @s ml_aj.temp as @e[tag=aj.rig_root] if data entity @s {item:{tag:{data:{badge:$(id)}}}} run function ml_aj:model/animation/custom/play {name:"$(name)",loop:1}

$execute if score @s ml_aj.temp matches 0 run tellraw @s [{"text":"\n","color":"red"},{"text":"无法播放名称为: "},{"text":"$(name)","color":"gold"},{"text":" 的自定义动画 Model ID: "},{"text":"$(id)","color":"gold"},{"text":".\n"}]
