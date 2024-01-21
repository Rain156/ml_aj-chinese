## function ml_aj:model/chat/anim/set_anim
## aj.rig_root entity context
## "model": The model name
## "name": The custom animation name

function ml_aj:model/animation/stop

$execute store result storage ml_aj:logic data.temp.anim_set.result int 1 run function ml_aj:model/animation/setup/get_time {name:"$(model)",anim:"$(name)"}

#Update if valid
$execute unless data storage ml_aj:logic {data:{temp:{anim_set:{result:0}}}} run data modify entity @s item.tag.data.anims.custom append value {name:"$(name)",time:0}
execute unless data storage ml_aj:logic {data:{temp:{anim_set:{result:0}}}} run data modify entity @s item.tag.data.anims.custom[-1].time set from storage ml_aj:logic data.temp.anim_set.result

function ml_aj:model/animation/setup/reset_to_idle
