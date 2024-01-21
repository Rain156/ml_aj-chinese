## function ml_aj:player/attack/check
## ml_aj.vehicle_interact entity context

execute on vehicle if data entity @s[tag=ml_aj.vehicle] {Invulnerable:1b} run return 0

execute anchored eyes positioned ^ ^ ^0.001 run particle minecraft:damage_indicator ~ ~ ~ 0.01 0.01 0.01 0.1 10 normal
execute store result storage ml_aj:logic data.temp.damage.amount float 1 run scoreboard players get #ml_temp ml_aj.temp
execute on vehicle if entity @s[tag=ml_aj.vehicle] run function ml_aj:model/execute {command:"function ml_aj:ai/damage/apply_update"}

return 1
