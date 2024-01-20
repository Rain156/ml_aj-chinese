## function ml_aj:model/vehicle/summon
## ml_aj.vehicle entity context
## "properties": Any extra properties

tp @s ~ ~ ~ ~ 0
$data merge entity @s $(properties)

#Tags are set here since it's possible that Tags might be in properties
tag @s add ml_aj.entity
tag @s add ml_aj.hitbox
tag @s add ml_aj.vehicle

execute store result score @s ml_aj.id run data get storage ml_aj:logic data.temp.ai.badge

#Armor stand needs interaction
execute if entity @s[type=minecraft:armor_stand] summon minecraft:interaction run function ml_aj:model/vehicle/summon_interaction

#Scale
data modify storage ml_aj:logic data.temp.scale set from storage ml_aj:logic data.temp.ai.vehicle.scale
function ml_aj:model/chat/vehicle/edit_scale_vehicle

#Certain mobs need faster base speed
execute if entity @s[type=minecraft:turtle] run attribute @s minecraft:generic.movement_speed base set 0.5
execute if entity @s[type=minecraft:axolotl] run attribute @s minecraft:generic.movement_speed base set 1.1
execute if entity @s[type=minecraft:bee] run attribute @s minecraft:generic.flying_speed base set 0.4

#Naming
execute unless entity @s[type=#ml_aj:pet] if data storage ml_aj:logic data.temp.ai.mob_name run data modify entity @s CustomName set from storage ml_aj:logic data.temp.ai.mob_name
execute unless entity @s[type=#ml_aj:pet] unless data storage ml_aj:logic data.temp.ai.mob_name run data modify entity @s CustomName set from storage ml_aj:logic data.temp.ai.name
execute if entity @s[type=#ml_aj:pet] if data storage ml_aj:logic data.temp.ai.mob_name run data modify entity @s CustomName set from storage ml_aj:logic data.temp.ai.mob_name
execute if entity @s[type=#ml_aj:pet] unless data entity @s CustomName run data modify entity @s CustomName set value '"Pet"'

#No Knockback
function ml_aj:model/vehicle/set_knockback with storage ml_aj:logic data.temp.ai.vehicle

tag @s remove ml_aj.vehicle_temp
