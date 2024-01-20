## Play and hold a custom animation for a model
## aj.rig_root entity context
## "name": The animation name

scoreboard players set @s ml_aj.temp 0
$execute store result score @s ml_aj.temp run function ml_aj:model/animation/custom/play {name:"$(name)",loop:2}

$execute if score @s ml_aj.temp matches 0 run tellraw @a[tag=debug] [{"text":"\n","color":"red"},{"text":"Failed to play and hold the "},{"text":"$(name)","color":"gold"},{"text":" custom animation for the target model "},{"selector":"@s","color":"gold"},{"text":".\n"}]
