## Stop an animation for a model
## player context
## "id": The model id

scoreboard players set @s ml_aj.temp 0
$execute store result score @s ml_aj.temp as @e[tag=aj.rig_root] if data entity @s {item:{tag:{data:{badge:$(id)}}}} run function ml_aj:model/animation/custom/stop

$execute if score @s ml_aj.temp matches 0 run function ml_aj:system/player/notice/display {text:"无法停止模型ID为: '$(id)' 的当前动画.",color:"red",bold:false}
