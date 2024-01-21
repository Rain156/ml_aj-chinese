## aj.rig_root entity context
## "name": The model name
## "anim": The animation name
## "loop": The loop mode
## "time": The animation duration

function ml_ces:event/schedule/clear {event:"ml_aj.stop_anim"}

tag @s add ml_aj.animating
$data modify entity @s item.tag.data.temp.play_time set value $(time)
$data modify entity @s item.tag.data.temp.play_loop set value $(loop)
scoreboard players set @s aj.anim_time 0
$scoreboard players set @s aj.$(name).animation.$(anim).local_anim_time 0
$scoreboard players set @s aj.$(name).animation.$(anim).loop_mode $(loop)

#Start with the first frame
$execute unless score @s ml_aj.delay matches 1.. run function ml_aj:model/animation/first_frame {name:"$(name)",anim:"$(anim)"}

#Pause current before playing new animation
execute if data entity @s item.tag.data.temp.pause run function ml_aj:model/animation/pause with entity @s item.tag.data.temp
data remove entity @s item.tag.data.temp.resume

$tag @s add aj.$(name).animation.$(anim)
$data modify entity @s item.tag.data.temp.pause set value "aj.$(name).animation.$(anim)"
