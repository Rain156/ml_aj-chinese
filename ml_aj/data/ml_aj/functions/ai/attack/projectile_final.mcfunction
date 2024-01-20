## function ml_aj:ai/attack/projectile
## new projectile entity context
## "nbt": The projectile nbt
## "target_id": The target id
## "speed": The projectile speed

execute if entity @s[type=minecraft:trident] run data modify entity @s item set value {id:"minecraft:air"}
$data merge entity @s $(nbt)

#Find the amount of motion based on two positions, creating motion vector
execute store result score @s ml_aj.calc.x1 run data get entity @s Pos[0] 1000
execute store result score @s ml_aj.calc.y1 run data get entity @s Pos[1] 1000
execute store result score @s ml_aj.calc.z1 run data get entity @s Pos[2] 1000
tp @s ^ ^ ^0.1
execute store result score @s ml_aj.calc.x2 run data get entity @s Pos[0] 1000
execute store result score @s ml_aj.calc.y2 run data get entity @s Pos[1] 1000
execute store result score @s ml_aj.calc.z2 run data get entity @s Pos[2] 1000

#Set the calculated motion vector
$execute store result entity @s Motion[0] double $(speed) run scoreboard players operation @s ml_aj.calc.x2 -= @s ml_aj.calc.x1
$execute store result entity @s Motion[1] double $(speed) run scoreboard players operation @s ml_aj.calc.y2 -= @s ml_aj.calc.y1
$execute store result entity @s Motion[2] double $(speed) run scoreboard players operation @s ml_aj.calc.z2 -= @s ml_aj.calc.z1

#Make sure the random id is removed
$tag @e remove ml_aj.proj_target_$(target_id)
