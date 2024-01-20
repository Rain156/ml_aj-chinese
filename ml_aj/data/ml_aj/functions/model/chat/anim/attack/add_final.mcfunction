## function ml_aj:model/chat/anim/set_anim
## aj.rig_root entity context
## "model": The model name
## "name": The attack animation name

function ml_aj:model/animation/stop

$execute store result storage ml_aj:logic data.temp.anim_set.result int 1 run function ml_aj:model/animation/setup/get_time {name:"$(model)",anim:"$(name)"}

#Update if valid
$execute unless data storage ml_aj:logic {data:{temp:{anim_set:{result:0}}}} run data modify entity @s item.tag.data.anims.attack append value {name:"$(name)",time:0,impact:0,damage:-1,distance:3f,dist_tick:15,dir:1}
execute unless data storage ml_aj:logic {data:{temp:{anim_set:{result:0}}}} run data modify entity @s item.tag.data.anims.attack[-1].time set from storage ml_aj:logic data.temp.anim_set.result

function ml_aj:model/animation/setup/reset_to_idle
