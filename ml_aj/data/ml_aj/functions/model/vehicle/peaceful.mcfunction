## aj.rig_root entity context

tag @s remove ml_aj.is_hostile
data modify entity @s item.tag.data.vehicle.hostile set value 0
function ml_aj:model/vehicle/execute {command:"execute on passengers if entity @s[tag=ml_aj.hostile_control] run function ml_aj:model/vehicle/peaceful_final"}
