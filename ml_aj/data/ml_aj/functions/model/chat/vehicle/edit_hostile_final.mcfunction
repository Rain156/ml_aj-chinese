## aj.rig_root entity context
## "hostile": If the mob is hostile

execute if data entity @s item.tag.data.vehicle_temp.force_hostile run return 0

data modify entity @s item.tag.data.vehicle_set set value 1b
$data modify entity @s item.tag.data.vehicle_temp.hostile set value $(hostile)

return 1
