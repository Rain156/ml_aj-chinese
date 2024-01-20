## aj.rig_root entity context

execute if entity @s[tag=ml_aj.anim_death] run return 0
execute if entity @s[tag=ml_aj.anim_sit] run return 1
execute if data entity @s {item:{tag:{data:{anims:{sit:{time:0}}}}}} run return 0

function ml_aj:model/animation/clear_tags

tag @s add ml_aj.anim_sit
tag @s add ml_aj.anim_busy

#Use hold loop type
data modify storage ml_aj:logic data.temp.anim set value {name:"",anim:"",loop:2,time:4,anim_time:0,measure:"t",command:"function ml_aj:model/animation/stop",event:"ml_aj.stop_anim"}
data modify storage ml_aj:logic data.temp.anim.name set from entity @s item.tag.data.name
data modify storage ml_aj:logic data.temp.anim.anim set from entity @s item.tag.data.anims.sit.name
data modify storage ml_aj:logic data.temp.anim.anim_time set from entity @s item.tag.data.anims.sit.time
function ml_aj:model/animation/play_tween with storage ml_aj:logic data.temp.anim

#Set the stop since not looping, and it will run the sit idle if valid
data modify storage ml_aj:logic data.temp.anim.time set from entity @s item.tag.data.anims.sit.time
function ml_ces:event/schedule/set_named with storage ml_aj:logic data.temp.anim

return 1
