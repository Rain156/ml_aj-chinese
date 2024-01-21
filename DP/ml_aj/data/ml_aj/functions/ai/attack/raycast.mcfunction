## function ml_aj:ai/attack/execute_dir
## function ml_aj:ai/attack/raycast
## target context

#If time has ran out, target is not within directional range
execute if score @s ml_aj.temp matches ..0 run return 0

scoreboard players remove @s ml_aj.temp 1
scoreboard players set @s ml_aj.check 0

#If line of sight is not blocked and target is near, tag target
execute if block ~ ~ ~ #ml_aj:passable run scoreboard players add @s ml_aj.check 1
execute if block ^-0.2 ^ ^ #ml_aj:passable run scoreboard players add @s ml_aj.check 1
execute if block ^0.2 ^ ^ #ml_aj:passable run scoreboard players add @s ml_aj.check 1
execute if predicate ml_aj:entity/near run scoreboard players add @s ml_aj.check 10
execute if score @s ml_aj.check matches 12..13 run tag @s add ml_aj.attack_target
execute if score @s ml_aj.check matches 2..3 positioned ^ ^ ^0.2 run function ml_aj:ai/attack/raycast

return 1
