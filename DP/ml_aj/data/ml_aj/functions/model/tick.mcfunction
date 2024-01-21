## tick event
## aj.rig_root entity context

scoreboard players add @s ml_aj.count 1
execute if score @s ml_aj.cooldown matches 1.. run scoreboard players remove @s ml_aj.cooldown 1

execute if entity @s[tag=ml_aj.has_rotation,tag=!ml_aj.rotate_fixed,tag=!ml_aj.targeting,tag=!ml_aj.dying] if entity @p[distance=..10] run function ml_aj:model/location/player
function ml_aj:model/vehicle/tick/first with entity @s item.tag.data

#Slower tick rate
execute if score @s ml_aj.count matches 10.. run scoreboard players set @s ml_aj.count 0
