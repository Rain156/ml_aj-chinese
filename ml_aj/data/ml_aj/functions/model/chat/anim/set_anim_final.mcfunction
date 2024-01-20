## function ml_aj:model/chat/anim/set_anim
## aj.rig_root entity context
## "model": The model name
## "anim": The target animation
## "name": The new name

function ml_aj:model/animation/stop
$data modify entity @s item.tag.data.anims.$(anim).name set value "$(name)"

$execute store result storage ml_aj:logic data.temp.anim_set.result int 1 run function ml_aj:model/animation/setup/get_time {name:"$(model)",anim:"$(name)"}
#Update the new time
$data modify entity @s item.tag.data.anims.$(anim).time set from storage ml_aj:logic data.temp.anim_set.result

function ml_aj:model/animation/setup/reset_to_idle
