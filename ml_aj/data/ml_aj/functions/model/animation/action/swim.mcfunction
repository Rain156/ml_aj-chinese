## aj.rig_root entity context

execute if entity @s[tag=ml_aj.anim_death] run return 0
execute if entity @s[tag=ml_aj.anim_swim] run return 1

#Try for walk animation if no swim
execute if data entity @s {item:{tag:{data:{anims:{swim:{time:0}}}}}} run function ml_aj:model/animation/action/walk
execute if data entity @s {item:{tag:{data:{anims:{swim:{time:0}}}}}} run return 0

function ml_aj:model/animation/clear_tags

tag @s add ml_aj.anim_swim
data modify storage ml_aj:logic data.temp.anim set value {name:"",anim:"",loop:0,time:4,anim_time:0}
data modify storage ml_aj:logic data.temp.anim.name set from entity @s item.tag.data.name
data modify storage ml_aj:logic data.temp.anim.anim set from entity @s item.tag.data.anims.swim.name
data modify storage ml_aj:logic data.temp.anim.anim_time set from entity @s item.tag.data.anims.swim.time

function ml_aj:model/animation/play_tween with storage ml_aj:logic data.temp.anim

return 1
