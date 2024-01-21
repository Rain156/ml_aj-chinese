## Ran by ml_ces generic interaction entity attack function
## interaction entity context

scoreboard players set #ml_temp ml_aj.temp 0
execute if entity @s[tag=ml_aj.vehicle_interact] on attacker store result score #ml_temp ml_aj.temp run attribute @s generic.attack_damage get

execute if score #ml_temp ml_aj.temp matches 1.. run function ml_aj:player/attack/check_final
