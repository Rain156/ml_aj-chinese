## aj.rig_root entity context
## "name": The name of the animation

execute if entity @s[tag=ml_aj.anim_death] run return 0
$execute unless data entity @s item.tag.data.anims.custom[{name:"$(name)"}] run return 0
$execute if data entity @s {item:{tag:{data:{anims:{custom:[{name:"$(name)",time:0}]}}}}} run return 0

function ml_ces:event/schedule/clear {event:"ml_aj.custom_anim"}
function ml_aj:model/animation/clear_tags

tag @s add ml_aj.anim_busy
tag @s add ml_aj.anim_custom

$data modify storage ml_aj:logic data.temp.anim set value {name:"",anim:"$(name)",loop:0,time:4,anim_time:0}
data modify storage ml_aj:logic data.temp.anim.name set from entity @s item.tag.data.name
$data modify storage ml_aj:logic data.temp.anim.anim_time set from entity @s item.tag.data.anims.custom[{name:"$(name)"}].time
function ml_aj:model/animation/play_tween with storage ml_aj:logic data.temp.anim

return 1
