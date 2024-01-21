## aj.rig_root entity context
## "anim": The attack animation to play
## "time": The time duration of the animation

execute if entity @s[tag=ml_aj.anim_death] run return 0
execute if entity @s[tag=ml_aj.anim_attack] run return 1
$execute if data storage ml_aj:logic {data:{attack_z:{name:"$(anim)"}}} run return run function ml_aj:model/animation/action/attack_z {time:$(time)}

function ml_aj:model/animation/clear_tags

tag @s add ml_aj.attacking
tag @s add ml_aj.anim_attack
tag @s add ml_aj.anim_busy

$data modify storage ml_aj:logic data.temp.anim set value {name:"",anim:"$(anim)",loop:1,time:4,anim_time:$(time),measure:"t",command:"function ml_aj:model/animation/stop",event:"ml_aj.stop_anim"}
data modify storage ml_aj:logic data.temp.anim.name set from entity @s item.tag.data.name
function ml_aj:model/animation/play_tween with storage ml_aj:logic data.temp.anim

#Set the stop since not looping
$data modify storage ml_aj:logic data.temp.anim.time set value $(time)
function ml_ces:event/schedule/set_named with storage ml_aj:logic data.temp.anim

#Setup attack end after animation time
function ml_ces:event/schedule/clear {event:"ml_aj.end_attack"}
function ml_aj:model/vehicle/execute {command:"function ml_aj:model/vehicle/stop"}
$function ml_ces:event/schedule/set_named {time:$(time),measure:"t",command:"function ml_aj:model/vehicle/set_speed with entity @s item.tag.data",event:"ml_aj.end_attack"}

return 1
