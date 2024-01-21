## function ml_aj:ai/damage/check
## ml_aj.hitbox entity context

scoreboard players set #ml_temp ml_aj.check 0
execute on attacker if entity @s[tag=ml_aj.attacker] run scoreboard players set #ml_temp ml_aj.check 1

execute if score #ml_temp ml_aj.check matches 0 run return 0

execute anchored eyes positioned ^ ^ ^0.001 run particle minecraft:damage_indicator ~ ~ ~ 0.01 0.01 0.01 0.1 3 normal
execute if entity @s[tag=ml_aj.vehicle] run function ml_aj:ai/damage/lost
execute unless entity @s[tag=ml_aj.vehicle] run function ml_aj:ai/damage/verify_hitbox

data modify entity @s Health set value 1000f
data modify entity @s HurtTime set value 0s

return 1
