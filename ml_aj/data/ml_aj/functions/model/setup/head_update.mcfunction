## aj.rig_root entity context
## "name": The model name
## "head": The head bone name

execute on passengers run tag @s remove ml_aj.bone_head
$execute on passengers if entity @s[tag=aj.$(name).bone.$(head)] run tag @s add ml_aj.bone_head
$execute on passengers if entity @s[tag=$(head)] run tag @s add ml_aj.bone_head
