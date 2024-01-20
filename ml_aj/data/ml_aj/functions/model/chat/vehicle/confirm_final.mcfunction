## aj.rig_root entity context

data modify entity @s item.tag.data.vehicle set from entity @s item.tag.data.vehicle_temp
data remove entity @s item.tag.data.vehicle_temp
data remove entity @s item.tag.data.vehicle_set

execute if entity @s[tag=ml_aj.has_vehicle] run function ml_aj:model/vehicle/adjust with entity @s item.tag.data
execute unless entity @s[tag=ml_aj.has_vehicle] run function ml_aj:model/vehicle/new
