## function ml_aj:model/setup/owner
## ml_aj.vehicle entity context

execute if entity @s[type=#ml_aj:pet] run data modify entity @s Owner set from entity @p[tag=ml_aj.owner_target,limit=1,sort=nearest] UUID
execute if entity @s[type=#ml_aj:pet] if entity @p[tag=ml_aj.owner_target] run tag @s add ml_aj.has_owner
execute if entity @s[type=#ml_aj:pet] run scoreboard players set #ml_temp ml_aj.temp 1
