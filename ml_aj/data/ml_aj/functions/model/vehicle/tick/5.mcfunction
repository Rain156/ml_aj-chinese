## function ml_aj:model/vehicle/tick/first
## ml_aj.vehicle entity context

execute unless data entity @s {HurtTime:0s} run function ml_aj:ai/damage/check_natural

scoreboard players set #ml_temp ml_aj.check 0
execute if data entity @s {OnGround:1b} run scoreboard players set #ml_temp ml_aj.check 1
execute if entity @s[type=minecraft:bat] if data entity @s {BatFlags:1b} run scoreboard players set #ml_temp ml_aj.check 1
