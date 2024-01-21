## aj.rig_root entity context
## "mob": The vehicle UUID string

execute if entity @s[tag=ml_aj.is_hostile] run function ml_aj:ai/attack/check

scoreboard players set #ml_temp ml_aj.temp 0
scoreboard players set @s ml_aj.temp 0
execute unless data entity @s item.tag.data.target run scoreboard players set #ml_temp ml_aj.temp 1
$execute store result score @s ml_aj.temp as $(mob) at @s run function ml_aj:model/vehicle/tick/10_final

#Pet type
execute if score @s ml_aj.temp matches 2 run function ml_aj:model/vehicle/special/pet/check

#Guard type
execute if entity @s[tag=ml_aj.is_guard,tag=!ml_aj.is_hostile] run function ml_aj:ai/attack/custom/check
