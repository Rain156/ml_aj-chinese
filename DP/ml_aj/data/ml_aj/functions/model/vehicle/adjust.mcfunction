## aj.rig_root entity context
## "mob": The mob UUID string

data modify storage ml_aj:logic data.temp.vehicle set from entity @s item.tag.data.vehicle
$execute as $(mob) at @s run function ml_aj:model/vehicle/adjust_final with storage ml_aj:logic data.temp.vehicle

#If only adjusted to peaceful
execute if data entity @s {item:{tag:{data:{vehicle:{hostile:0}}}}} if score #ml_temp ml_aj.check matches 0 run function ml_aj:model/vehicle/peaceful

#Force reset if nbt properties were updated
execute if data entity @s item.tag.data.vehicle.prop_update run scoreboard players set #ml_temp ml_aj.check 1

execute if score #ml_temp ml_aj.check matches 1 run function ml_aj:model/vehicle/reset
