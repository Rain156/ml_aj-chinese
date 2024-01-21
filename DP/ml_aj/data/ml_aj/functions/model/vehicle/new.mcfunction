## aj.rig_root entity context

function ml_aj:model/vehicle/refresh
data modify entity @s item.tag.data.health set from entity @s item.tag.data.health_max

tag @s add ml_aj.has_vehicle

data modify storage ml_aj:logic data.temp.ai set value {id:"",type:"minecraft:minecraft:ocelot",properties:{}}
data modify storage ml_aj:logic data.temp.ai.id set from entity @s item.tag.data.id
data modify storage ml_aj:logic data.temp.ai.type set from entity @s item.tag.data.vehicle.type
execute if data entity @s item.tag.data.vehicle.prop run data modify storage ml_aj:logic data.temp.ai.properties set from entity @s item.tag.data.vehicle.prop
data remove entity @s item.tag.data.vehicle.prop_update

#Pet types
execute if data storage ml_aj:logic {data:{temp:{ai:{type:"minecraft:cat"}}}} run tag @s add ml_aj.is_pet
execute if data storage ml_aj:logic {data:{temp:{ai:{type:"minecraft:wolf"}}}} run tag @s add ml_aj.is_pet

#Flying types
execute if data storage ml_aj:logic {data:{temp:{ai:{type:"minecraft:bat"}}}} run tag @s add ml_aj.is_flying
execute if data storage ml_aj:logic {data:{temp:{ai:{type:"minecraft:bee"}}}} run tag @s add ml_aj.is_flying
execute if data storage ml_aj:logic {data:{temp:{ai:{type:"minecraft:allay"}}}} run tag @s add ml_aj.is_flying
execute if data storage ml_aj:logic {data:{temp:{ai:{type:"minecraft:vex"}}}} run tag @s add ml_aj.is_flying
execute if data storage ml_aj:logic {data:{temp:{ai:{type:"minecraft:blaze"}}}} run tag @s add ml_aj.is_flying

#Guard types
execute if data storage ml_aj:logic {data:{temp:{ai:{type:"minecraft:bee"}}}} run tag @s add ml_aj.is_guard
execute if data storage ml_aj:logic {data:{temp:{ai:{type:"minecraft:wolf"}}}} run tag @s add ml_aj.is_guard
execute if data storage ml_aj:logic {data:{temp:{ai:{type:"minecraft:iron_golem"}}}} run tag @s add ml_aj.is_guard
execute if data storage ml_aj:logic {data:{temp:{ai:{type:"minecraft:polar_bear"}}}} run tag @s add ml_aj.is_guard

#Hostile types
execute if data storage ml_aj:logic {data:{temp:{ai:{type:"minecraft:vex"}}}} run tag @s add ml_aj.is_hostile
execute if data storage ml_aj:logic {data:{temp:{ai:{type:"minecraft:slime"}}}} run tag @s add ml_aj.is_hostile
execute if data storage ml_aj:logic {data:{temp:{ai:{type:"minecraft:magma_cube"}}}} run tag @s add ml_aj.is_hostile
execute if data storage ml_aj:logic {data:{temp:{ai:{type:"minecraft:zoglin"}}}} run tag @s add ml_aj.is_hostile
execute if data storage ml_aj:logic {data:{temp:{ai:{type:"minecraft:blaze"}}}} run tag @s add ml_aj.is_hostile
execute if data storage ml_aj:logic {data:{temp:{ai:{type:"minecraft:witch"}}}} run tag @s add ml_aj.is_hostile
execute if data storage ml_aj:logic {data:{temp:{ai:{type:"minecraft:zombie"}}}} run tag @s add ml_aj.is_hostile
execute if data storage ml_aj:logic {data:{temp:{ai:{type:"minecraft:piglin"}}}} run tag @s add ml_aj.is_hostile
execute if data storage ml_aj:logic {data:{temp:{ai:{type:"minecraft:drowned"}}}} run tag @s add ml_aj.is_hostile
execute if data storage ml_aj:logic {data:{temp:{ai:{type:"minecraft:guardian"}}}} run tag @s add ml_aj.is_hostile
execute if data storage ml_aj:logic {data:{temp:{ai:{type:"minecraft:ravager"}}}} run tag @s add ml_aj.is_hostile
execute if data storage ml_aj:logic {data:{temp:{ai:{type:"minecraft:silverfish"}}}} run tag @s add ml_aj.is_hostile
#Most hostile mobs don't need the silverfish
execute if entity @s[tag=ml_aj.is_hostile] unless data storage ml_aj:logic {data:{temp:{ai:{type:"minecraft:blaze"}}}} run data modify entity @s item.tag.data.vehicle.hostile set value 2

#Tag the rest of the mobs that are not hostile but using hostile AI
execute if data entity @s {item:{tag:{data:{vehicle:{hostile:1}}}}} run tag @s add ml_aj.is_hostile

#Special types
execute if data entity @s {item:{tag:{data:{vehicle:{type:"minecraft:armor_stand"}}}}} run data modify storage ml_aj:logic data.temp.ai.properties merge value {Invulnerable:1b,Invisible:1b,Small:0b,DisabledSlots:4144896}
execute if data entity @s {item:{tag:{data:{vehicle:{type:"minecraft:panda"}}}}} unless data storage ml_aj:logic data.temp.ai.properties.MainGene run data modify storage ml_aj:logic data.temp.ai.properties merge value {MainGene:"normal"}
execute if data entity @s {item:{tag:{data:{vehicle:{type:"minecraft:bee"}}}}} run data modify storage ml_aj:logic data.temp.ai.properties merge value {CannotEnterHiveTicks:10000}
execute if data entity @s {item:{tag:{data:{vehicle:{type:"minecraft:slime"}}}}} unless data storage ml_aj:logic data.temp.ai.properties.Size run data modify storage ml_aj:logic data.temp.ai.properties merge value {Size:1}
execute if data entity @s {item:{tag:{data:{vehicle:{type:"minecraft:magma_cube"}}}}} unless data storage ml_aj:logic data.temp.ai.properties.Size run data modify storage ml_aj:logic data.temp.ai.properties merge value {Size:1}
execute if data entity @s {item:{tag:{data:{vehicle:{type:"minecraft:piglin"}}}}} run data modify storage ml_aj:logic data.temp.ai.properties merge value {IsImmuneToZombification:1b}

function ml_aj:model/vehicle/summon with storage ml_aj:logic data.temp.ai

#Updates
function ml_aj:model/vehicle/set_health with entity @s item.tag.data
function ml_aj:model/vehicle/set_speed with entity @s item.tag.data
