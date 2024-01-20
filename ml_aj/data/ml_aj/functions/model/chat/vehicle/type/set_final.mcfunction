## aj.rig_root entity context
## "type": The mob type

data modify entity @s item.tag.data.vehicle_set set value 1b
$data modify entity @s item.tag.data.vehicle_temp.type set value "$(type)"
data remove entity @s item.tag.data.vehicle_temp.force_hostile

#Hostile types
execute if data entity @s {item:{tag:{data:{vehicle_temp:{type:"minecraft:slime"}}}}} run data modify entity @s item.tag.data.vehicle_temp.force_hostile set value 1b
execute if data entity @s {item:{tag:{data:{vehicle_temp:{type:"minecraft:magma_cube"}}}}} run data modify entity @s item.tag.data.vehicle_temp.force_hostile set value 1b
execute if data entity @s {item:{tag:{data:{vehicle_temp:{type:"minecraft:vex"}}}}} run data modify entity @s item.tag.data.vehicle_temp.force_hostile set value 1b
execute if data entity @s {item:{tag:{data:{vehicle_temp:{type:"minecraft:silverfish"}}}}} run data modify entity @s item.tag.data.vehicle_temp.force_hostile set value 1b
execute if data entity @s {item:{tag:{data:{vehicle_temp:{type:"minecraft:blaze"}}}}} run data modify entity @s item.tag.data.vehicle_temp.force_hostile set value 1b
execute if data entity @s {item:{tag:{data:{vehicle_temp:{type:"minecraft:witch"}}}}} run data modify entity @s item.tag.data.vehicle_temp.force_hostile set value 1b
execute if data entity @s {item:{tag:{data:{vehicle_temp:{type:"minecraft:zombie"}}}}} run data modify entity @s item.tag.data.vehicle_temp.force_hostile set value 1b
execute if data entity @s {item:{tag:{data:{vehicle_temp:{type:"minecraft:piglin"}}}}} run data modify entity @s item.tag.data.vehicle_temp.force_hostile set value 1b
execute if data entity @s {item:{tag:{data:{vehicle_temp:{type:"minecraft:zoglin"}}}}} run data modify entity @s item.tag.data.vehicle_temp.force_hostile set value 1b
execute if data entity @s {item:{tag:{data:{vehicle_temp:{type:"minecraft:drowned"}}}}} run data modify entity @s item.tag.data.vehicle_temp.force_hostile set value 1b
execute if data entity @s {item:{tag:{data:{vehicle_temp:{type:"minecraft:guardian"}}}}} run data modify entity @s item.tag.data.vehicle_temp.force_hostile set value 1b
execute if data entity @s {item:{tag:{data:{vehicle_temp:{type:"minecraft:ravager"}}}}} run data modify entity @s item.tag.data.vehicle_temp.force_hostile set value 1b
