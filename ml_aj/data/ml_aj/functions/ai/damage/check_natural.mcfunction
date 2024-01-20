## function ml_aj:model/vehicle/tick/5
## ml_aj.vehicle context

#If the damage is from a player, let the damage check function handle it
execute on attacker if entity @s[type=minecraft:player] run return 0

#If the damage is from a non-player entity, run the damage check
scoreboard players set #ml_temp ml_aj.temp 0
execute on attacker if entity @s[type=!minecraft:player] run scoreboard players set #ml_temp ml_aj.temp 1
execute if score #ml_temp ml_aj.temp matches 1 run return run function ml_aj:ai/damage/lost

data modify entity @s Health set value 1000f
data modify entity @s HurtTime set value 0s

return 1
