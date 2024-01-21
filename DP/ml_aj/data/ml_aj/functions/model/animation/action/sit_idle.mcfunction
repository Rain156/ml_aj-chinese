## aj.rig_root entity context

execute if entity @s[tag=ml_aj.anim_death] run return 0
execute if entity @s[tag=ml_aj.anim_sit_idle] run return 1
execute unless entity @s[tag=ml_aj.is_pet] run return 0
execute if data entity @s {item:{tag:{data:{anims:{sit_idle:{time:0}}}}}} run return 0

function ml_aj:model/animation/clear_tags

tag @s add ml_aj.anim_sit_idle

data modify storage ml_aj:logic data.temp.anim set value {name:"",anim:"",loop:0,time:4,anim_time:0}
data modify storage ml_aj:logic data.temp.anim.name set from entity @s item.tag.data.name
data modify storage ml_aj:logic data.temp.anim.anim set from entity @s item.tag.data.anims.sit_idle.name
data modify storage ml_aj:logic data.temp.anim.anim_time set from entity @s item.tag.data.anims.sit_idle.time
function ml_aj:model/animation/play_tween with storage ml_aj:logic data.temp.anim

return 1
