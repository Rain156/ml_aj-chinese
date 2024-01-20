## function ml_aj:ai/attack/select
## aj.rig_root entity context
## "name": The name of the animation
## "time": The time duration
## "impact": The time of impact
## "distance": The distance of reach
## "dist_tick": The distance tick count
## "dir": If the attack is directional
## "damage": The attack damage amount

scoreboard players set #ml_temp ml_aj.temp 0
$data modify storage ml_aj:logic data.temp.target set value {rot_x:0f,dist_tick:$(dist_tick)}
data modify storage ml_aj:logic data.temp.target.rot_x set from entity @s Rotation[0]
$execute if data storage ml_aj:logic {data:{temp:{ai:{true:$(dir)}}}} run function ml_aj:model/vehicle/execute_pos {command:"execute anchored eyes positioned ^ ^ ^0.001 store result score #ml_temp ml_aj.temp as @a[distance=..$(distance)] run function ml_aj:ai/attack/execute_dir with storage ml_aj:logic data.temp.target"}
$execute unless data storage ml_aj:logic {data:{temp:{ai:{true:$(dir)}}}} run function ml_aj:model/vehicle/execute_pos {command:"execute anchored eyes positioned ^ ^ ^0.001 store result score #ml_temp ml_aj.temp as @a[distance=..$(distance)] run function ml_aj:ai/attack/execute_non_dir with storage ml_aj:logic data.temp.target"}

#Return if no players to attack
execute if score #ml_temp ml_aj.temp matches 0 run return 0

#Play the attack animation
$function ml_aj:model/animation/action/attack {anim:"$(name)",time:$(time)}

#Set type of directional facing
tag @s[tag=!ml_aj.anim_attack_z] add ml_aj.rotate_fixed
$execute if data storage ml_aj:logic {data:{temp:{ai:{true:$(dir)}}}} run tag @s[tag=!ml_aj.anim_attack_z] add ml_aj.rotate_target

#Attack the player at the impact time
#If the impact time is large enough, the raycast needs to be checked again at time of impact
$scoreboard players set @s ml_aj.temp $(impact)
data modify storage ml_aj:logic data.temp.ai.anim.entity set from entity @s item.tag.data.id

#Use random number for impact event name
execute store result storage ml_aj:logic data.temp.ai.anim.rnd int 1 run random value 0..1000
data modify entity @s item.tag.data.temp.event_impact set from storage ml_aj:logic data.temp.ai.anim.rnd

$execute if data storage ml_aj:logic {data:{temp:{ai:{revert:$(damage)}}}} run data modify storage ml_aj:logic data.temp.ai.anim.damage set from entity @s item.tag.data.damage
$execute unless data storage ml_aj:logic {data:{temp:{ai:{revert:$(damage)}}}} run data modify storage ml_aj:logic data.temp.ai.anim.damage set value $(damage)
execute if score @s ml_aj.temp matches ..15 as @a[tag=ml_aj.attack_target] run function ml_aj:ai/attack/entity with storage ml_aj:logic data.temp.ai.anim
execute if score @s ml_aj.temp matches 16.. as @a[tag=ml_aj.attack_target] run function ml_aj:ai/attack/entity_impact with storage ml_aj:logic data.temp.ai.anim

#Set cooldown if needed
execute if data storage ml_aj:logic data.temp.ai.anim.cooldown run function ml_aj:ai/attack/cooldown with storage ml_aj:logic data.temp.ai.anim

#Run callback if needed
$execute if data storage ml_aj:logic data.temp.ai.anim.command run function ml_aj:ai/attack/callback {time:$(time),impact:$(impact)}

#Shoot projectile if needed
execute unless data storage ml_aj:logic data.temp.ai.anim.proj_nbt run data modify storage ml_aj:logic data.temp.ai.anim.proj_nbt set value {}
execute if data storage ml_aj:logic data.temp.ai.anim.proj run function ml_aj:model/vehicle/execute {command:"function ml_aj:ai/attack/projectile with storage ml_aj:logic data.temp.ai.anim"}

tag @a remove ml_aj.attack_target

return 1
