## function ml_aj:model/chat/anim/set_anim
## aj.rig_root entity context
## "model": The model name
## "index": The animation index
## "name": The attack animation name

function ml_aj:model/animation/stop

$execute store result storage ml_aj:logic data.temp.anim.result int 1 run function ml_aj:model/animation/setup/get_time {name:"$(model)",anim:"$(name)"}

#Update if valid
$execute unless data storage ml_aj:logic {data:{temp:{anim:{result:0}}}} run data modify entity @s item.tag.data.anims.attack[$(index)].name set value "$(name)"
$execute unless data storage ml_aj:logic {data:{temp:{anim:{result:0}}}} run data modify entity @s item.tag.data.anims.attack[$(index)].time set from storage ml_aj:logic data.temp.anim.result

function ml_aj:model/animation/setup/reset_to_idle
