## aj.rig_root entity context
## "name": The model name

$data modify storage ml_aj:logic data.temp.anim set value {name:"$(name)",anim:""}

data modify storage ml_aj:logic data.temp.anim.anim set from entity @s item.tag.data.anims.idle.name
execute store result entity @s item.tag.data.anims.idle.time int 1 run function ml_aj:model/animation/setup/get_time with storage ml_aj:logic data.temp.anim

data modify storage ml_aj:logic data.temp.anim.anim set from entity @s item.tag.data.anims.walk.name
execute store result entity @s item.tag.data.anims.walk.time int 1 run function ml_aj:model/animation/setup/get_time with storage ml_aj:logic data.temp.anim

data modify storage ml_aj:logic data.temp.anim.anim set from entity @s item.tag.data.anims.swim.name
execute store result entity @s item.tag.data.anims.swim.time int 1 run function ml_aj:model/animation/setup/get_time with storage ml_aj:logic data.temp.anim

data modify storage ml_aj:logic data.temp.anim.anim set from entity @s item.tag.data.anims.death.name
execute store result entity @s item.tag.data.anims.death.time int 1 run function ml_aj:model/animation/setup/get_time with storage ml_aj:logic data.temp.anim

data modify storage ml_aj:logic data.temp.anim.anim set from entity @s item.tag.data.anims.despawn.name
execute store result entity @s item.tag.data.anims.despawn.time int 1 run function ml_aj:model/animation/setup/get_time with storage ml_aj:logic data.temp.anim

$function ml_ces:event/schedule/set {time:1,measure:"t",command:'function ml_aj:model/animation/setup/process_attack {name:"$(name)",index:0}'}
$function ml_ces:event/schedule/set {time:2,measure:"t",command:'function ml_aj:model/animation/setup/process_pet {name:"$(name)"}'}

function ml_ces:event/schedule/set {time:5,measure:"t",command:"function ml_aj:model/animation/setup/process_final"}
