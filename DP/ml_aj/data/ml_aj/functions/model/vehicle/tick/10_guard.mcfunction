## function ml_aj:model/vehicle/tick/10_final
## ml_aj.vehicle entity context

#Check if the model has no target, but the vehicle does
data remove storage ml_aj:logic data.temp.guard
execute if score #ml_temp ml_aj.temp matches 1 if data entity @s AngryAt unless data entity @s {AngryAt:[I;0,0,0,0]} run data modify storage ml_aj:logic data.temp.guard set from entity @s AngryAt

#Check if the model has no target
scoreboard players set #ml_temp ml_aj.check 0
execute if entity @s[type=#ml_aj:guard] unless data entity @s AngryAt run scoreboard players set #ml_temp ml_aj.check 1
execute if entity @s[type=#ml_aj:guard] if data entity @s {AngryAt:[I;0,0,0,0]} run scoreboard players set #ml_temp ml_aj.check 1
execute if score #ml_temp ml_aj.check matches 1 run tag @s remove ml_aj.has_target
