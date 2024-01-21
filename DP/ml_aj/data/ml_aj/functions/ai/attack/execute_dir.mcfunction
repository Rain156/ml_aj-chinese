## function ml_aj:ai/attack/execute
## function ml_aj:ai/attack/custom/execute
## target context
## "dist_tick": The distance tick count
## "rot_x": The source rotation X

#Check for blocked line of sight with raycast to the entity's location
$scoreboard players set @s ml_aj.temp $(dist_tick)

#Offset for initial 1.25 blocks forward
scoreboard players remove @s ml_aj.temp 4
execute unless block ^ ^ ^0.5 #ml_aj:passable run scoreboard players set @s ml_aj.temp 0
$execute unless score @s ml_aj.temp matches 0 facing entity @s eyes rotated $(rot_x) ~ positioned ^ ^-0.25 ^0.25 run function ml_aj:ai/attack/raycast

execute unless entity @s[tag=ml_aj.attack_target] run scoreboard players set @s ml_aj.temp 0

return run scoreboard players get @s ml_aj.temp
