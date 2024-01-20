## aj.rig_root entity context
## "data": The model data

execute if entity @s[tag=ml_aj.initialized] run return 0

tag @s add ml_aj.initialized
#Badge setup should only run once for the lifetime of this model
execute store result entity @s item.tag.data.badge int 1 run scoreboard players add #ml_global ml_aj.id 1
scoreboard players operation @s ml_aj.id = #ml_global ml_aj.id

#General Setup
data merge entity @s {teleport_duration:0,shadow_radius:0f,shadow_strength:0.6f,billboard:"vertical",view_range:0.25f,brightness:{sky:15,block:15}}
data modify entity @s item merge value {id:"minecraft:red_concrete",Count:1b}

$data modify entity @s item.tag.data merge value $(data)
execute if data entity @s item.tag.data.shadow_radius run data modify entity @s shadow_radius set from entity @s item.tag.data.shadow_radius
execute if data entity @s item.tag.data.shadow_strength run data modify entity @s shadow_strength set from entity @s item.tag.data.shadow_strength
data remove entity @s item.tag.data.shadow_radius
data remove entity @s item.tag.data.shadow_strength
data modify entity @s item.tag.data.health set from entity @s item.tag.data.health_max

#Identity
function ml_ces:system/data/uuid/convert
data modify entity @s item.tag.data.id set from storage ml_ces:logic data.uuid.output
data modify entity @s CustomNameVisible set value 0b
execute if data entity @s item.tag.data.mob_name run data modify entity @s CustomName set from entity @s item.tag.data.mob_name

function ml_aj:model/setup/init_common
function ml_ces:event/schedule/set {time:3,measure:"t",command:"function ml_aj:model/setup/bones_final"}

#Start idle if available
execute unless data entity @s {item:{tag:{data:{anims:{idle:{time:0}}}}}} run function ml_aj:model/animation/action/idle

#Vehicle
execute if data entity @s item.tag.data.vehicle run function ml_aj:model/vehicle/new
execute if data entity @s item.tag.data.owner run function ml_aj:model/spawn/owner with entity @s item.tag.data

#Misc
execute if data entity @s item.tag.data.has_rotation run tag @s add ml_aj.has_rotation
execute if data entity @s item.tag.data.auto_reload run tag @s add ml_aj.auto_reload
execute if data entity @s item.tag.data.ds_type run tag @s add ml_aj.can_despawn
data remove entity @s item.tag.data.has_rotation
execute unless data entity @s item.tag.data.brightness run data modify entity @s item.tag.data.brightness set value -1
function ml_aj:model/setup/set_brightness with entity @s item.tag.data
execute if data entity @s item.tag.data.variant run function ml_aj:model/setup/variant with entity @s item.tag.data

#Start the tick function if needed
function ml_aj:model/tick_start

return 1
