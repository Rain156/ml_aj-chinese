## aj.rig_root entity context

function ml_ces:event/schedule/clear {event:"ml_aj.custom_anim"}
function ml_aj:model/animation/clear_tags
tag @s remove ml_aj.anim_busy
tag @s remove ml_aj.rotate_fixed
tag @s remove ml_aj.rotate_target

execute if data entity @s item.tag.data.temp.pause run function ml_aj:model/animation/pause with entity @s item.tag.data.temp
data remove entity @s item.tag.data.temp.resume
data remove entity @s item.tag.data.temp.play_time
data remove entity @s item.tag.data.temp.play_loop
