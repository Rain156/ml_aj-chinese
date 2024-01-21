## Play a custom animation for a model
## aj.rig_root entity context
## "name": The animation name

scoreboard players set @s ml_aj.temp 0
$execute store result score @s ml_aj.temp run function ml_aj:model/animation/custom/play {name:"$(name)",loop:1}

$execute if score @s ml_aj.temp matches 0 run tellraw @a[tag=debug] [{"text":"\n","color":"red"},{"text":"未能成功播放模型: "},{"text":"$(name)","color":"gold"},{"text":" 的自定义动画 "},{"selector":"@s","color":"gold"},{"text":".\n"}]
