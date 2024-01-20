## function ml_aj:model/animation/action/attack
## aj.rig_root entity context
## "time": The time duration of the animation

execute if entity @s[tag=ml_aj.anim_death] run return 0
execute if entity @s[tag=ml_aj.anim_attack_z] run return 0

tag @s add ml_aj.attacking
tag @s add ml_aj.anim_attack_z

#Set the stop time to allow for delay in between attacks
function ml_ces:event/schedule/clear {event:"ml_aj.stop_anim_z"}
$function ml_ces:event/schedule/set_named {time:$(time),measure:"t",command:"function ml_aj:model/animation/action/attack_z_stop",event:"ml_aj.stop_anim_z"}

return 0
