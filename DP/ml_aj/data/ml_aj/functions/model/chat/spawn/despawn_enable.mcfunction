## aj.rig_root entity context
## "type": The despawn type

$data modify entity @s item.tag.data.ds_type set value $(type)
execute unless data entity @s item.tag.data.ds_dist run data modify entity @s item.tag.data.ds_dist set value 80
tag @s add ml_aj.can_despawn
