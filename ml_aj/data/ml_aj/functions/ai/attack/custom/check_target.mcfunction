## function ml_aj:ai/attack/custom/check
## aj.rig_root entity context
## "target": The current attack target

scoreboard players set @s ml_aj.temp 0
$execute store result score @s ml_aj.temp at $(target) if predicate ml_aj:entity/target at @s facing entity $(target) feet run function ml_aj:ai/attack/custom/check_final

execute if score @s ml_aj.temp matches 0 run tag @s remove ml_aj.targeting
