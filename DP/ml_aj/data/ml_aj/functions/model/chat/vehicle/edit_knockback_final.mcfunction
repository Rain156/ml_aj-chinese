## aj.rig_root entity context
## "knockback": If the mob has no knockback

data modify entity @s item.tag.data.vehicle_set set value 1b
$data modify entity @s item.tag.data.vehicle_temp.no_knockback set value $(knockback)

return 1
