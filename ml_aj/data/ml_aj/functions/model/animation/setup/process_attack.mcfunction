## function ml_aj:model/animation/setup/process
## function ml_aj:model/animation/setup/process_attack
## aj.rig_root entity context
## "name": The model name
## "index": The current index

$execute unless data entity @s item.tag.data.anims.attack[$(index)] run return 1

$data modify storage ml_aj:logic data.temp.anim set value {name:"$(name)",anim:"",index:$(index)}

$data modify storage ml_aj:logic data.temp.anim.anim set from entity @s item.tag.data.anims.attack[$(index)].name
$execute store result entity @s item.tag.data.anims.attack[$(index)].time int 1 run function ml_aj:model/animation/setup/get_time with storage ml_aj:logic data.temp.anim

$scoreboard players set @s ml_aj.count $(index)
execute store result storage ml_aj:logic data.temp.anim.index int 1 run scoreboard players add @s ml_aj.count 1

function ml_aj:model/animation/setup/process_attack with storage ml_aj:logic data.temp.anim

return 1
