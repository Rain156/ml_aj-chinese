## aj.rig_root entity context
## "name": The model name

$data modify storage ml_aj:logic data.temp.anim set value {name:"$(name)",anim:""}

data modify storage ml_aj:logic data.temp.anim.anim set from entity @s item.tag.data.anims.sit.name
execute store result entity @s item.tag.data.anims.sit.time int 1 run function ml_aj:model/animation/setup/get_time with storage ml_aj:logic data.temp.anim

data modify storage ml_aj:logic data.temp.anim.anim set from entity @s item.tag.data.anims.sit_idle.name
execute store result entity @s item.tag.data.anims.sit_idle.time int 1 run function ml_aj:model/animation/setup/get_time with storage ml_aj:logic data.temp.anim

data modify storage ml_aj:logic data.temp.anim.anim set from entity @s item.tag.data.anims.stand.name
execute store result entity @s item.tag.data.anims.stand.time int 1 run function ml_aj:model/animation/setup/get_time with storage ml_aj:logic data.temp.anim
