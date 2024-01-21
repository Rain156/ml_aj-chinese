## function ml_aj:model/setup/init
## aj.rig_root entity context
## "name": The model name

$execute on passengers if entity @s[tag=aj.$(name).bone] run tag @s add ml_aj.bone
$execute on passengers if entity @s[tag=aj.$(name).bone.h_head] run tag @s add ml_aj.bone_head
execute on passengers if entity @s[tag=h_head] run tag @s add ml_aj.bone_head
execute on passengers if entity @s[tag=ml_aj.bone] run data merge entity @s {teleport_duration:0,view_range:0f}
execute on passengers if entity @s[tag=ml_aj.bone] run data modify entity @s item.tag.data.origin set from entity @s transformation
