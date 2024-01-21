## aj.rig_root entity context
## "id": The model's UUID string
## "type": The vehicle type
## "properties": Any extra properties

#Cleanup
tag @s remove ml_aj.pet_sitting

data modify storage ml_aj:logic data.temp.ai set from entity @s item.tag.data
$data modify storage ml_aj:logic data.temp.ai.type set value "$(type)"
data modify storage ml_aj:logic data.temp.ai.passengers set value []

#Health Bar
function ml_aj:ai/health_bar/init
function ml_aj:model/chat/vehicle/set_color_final with entity @s item.tag.data

#Hostile
execute if data entity @s {item:{tag:{data:{vehicle:{hostile:1}}}}} run data modify storage ml_aj:logic data.temp.ai.passengers prepend value {id:"minecraft:silverfish",Tags:[ml_aj.entity,ml_aj.hostile_control,ml_aj.hitbox],PersistenceRequired:1b,Invulnerable:0b,Silent:1b,HasVisualFire:0b,Health:1000f,active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:0b},{id:"minecraft:water_breathing",duration:-1,show_particles:0b}],Attributes:[{Name:"minecraft:generic.max_health",Base:1000d},{Name:"minecraft:generic.knockback_resistance",Base:0d},{Name:"generic.attack_knockback",Base:0f},{Name:"generic.attack_damage",Base:0f}]}
execute if data entity @s {item:{tag:{data:{vehicle:{hostile:2}}}}} run data modify entity @s item.tag.data.vehicle.hostile set value 1

function ml_aj:model/vehicle/summon_mob with storage ml_aj:logic data.temp.ai

#Store the mob UUID for linking
data modify entity @s item.tag.data.mob set from storage ml_ces:logic data.uuid.output

$execute as @e[tag=ml_aj.vehicle_temp,limit=1,sort=nearest] run function ml_aj:model/vehicle/summon_final {properties:$(properties)}

#The tick function is needed with an AI vehicle
function ml_aj:model/tick_start
