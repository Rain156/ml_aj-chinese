## Resume an animation for a model
## player context
## "id": The model id

scoreboard players set @s ml_aj.temp 0
$execute store result score @s ml_aj.temp as @e[tag=aj.rig_root] if data entity @s {item:{tag:{data:{badge:$(id)}}}} run function ml_aj:model/animation/custom/resume

$execute if score @s ml_aj.temp matches 0 run function ml_aj:system/player/notice/display {text:"Failed to resume the current animation for the model with id $(id).",color:"red",bold:false}
