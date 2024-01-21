## function ml_aj:model/vehicle/summon
## aj.rig_root entity context
## "type": The mob type
## "passengers": The mob passengers

$summon $(type) ~ ~ ~ {Tags:[ml_aj.vehicle_temp],PersistenceRequired:1b,Invulnerable:0b,Silent:1b,CanPickUpLoot:0b,ArmorItems:[{},{},{},{}],HandItems:[{},{}],ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],Health:1000f,Attributes:[{Name:"minecraft:generic.max_health",Base:1000d},{Name:"minecraft:generic.scale",Base:1d},{Name:"minecraft:generic.knockback_resistance",Base:0d},{Name:"minecraft:generic.attack_damage",Base:0d}],active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:0b}],Passengers:$(passengers)}

#Get the vehicle's UUID string
execute as @e[tag=ml_aj.vehicle_temp,limit=1,sort=nearest] run function ml_ces:system/data/uuid/convert
