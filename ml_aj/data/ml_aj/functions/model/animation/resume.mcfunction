## aj.rig_root entity context
## "resume": The resume function name

$tag @s add $(resume)
$data modify entity @s item.tag.data.temp.pause set value $(resume)
data remove entity @s item.tag.data.temp.resume

scoreboard players operation @s ml_aj.temp = @s aj.anim_time
execute store result score @s ml_aj.check run data get entity @s item.tag.data.temp.play_time
execute store result storage ml_aj:logic data.temp.play_time int 1 run scoreboard players operation @s ml_aj.check -= @s ml_aj.temp

#Check if using custom animation
execute if score @s ml_aj.check matches ..0 unless entity @s[tag=ml_aj.anim_custom] unless entity @s[tag=ml_aj.anim_idle] run function ml_aj:model/animation/stop
execute if score @s ml_aj.check matches ..0 if data entity @s[tag=ml_aj.anim_custom] {item:{tag:{data:{temp:{play_loop:1}}}}} run function ml_aj:model/animation/custom/play_end
execute if score @s ml_aj.check matches 1.. unless entity @s[tag=ml_aj.anim_custom] unless entity @s[tag=ml_aj.anim_idle] run function ml_aj:model/animation/resume_final with storage ml_aj:logic data.temp
execute if score @s ml_aj.check matches 1.. if data entity @s[tag=ml_aj.anim_custom] {item:{tag:{data:{temp:{play_loop:1}}}}} run function ml_aj:model/animation/custom/play_resume with storage ml_aj:logic data.temp

data remove entity @s item.tag.data.temp.play_time
