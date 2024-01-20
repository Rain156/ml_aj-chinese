## aj.rig_root entity context

data modify entity @s item.tag.data.vehicle_set set value 1b
execute if data entity @s item.tag.data.vehicle run data modify entity @s item.tag.data.vehicle.scale set from entity @s item.tag.data.vehicle_temp.scale
execute if data entity @s item.tag.data.vehicle run data modify storage ml_aj:logic data.temp.scale set from entity @s item.tag.data.vehicle_temp.scale
execute if data entity @s item.tag.data.vehicle run function ml_aj:model/vehicle/execute {command:'function ml_aj:model/chat/vehicle/edit_scale_vehicle'}
