## function ml_aj:model/tick
## aj.rig_root entity context
## "mob": The vehicle UUID string

execute unless entity @s[tag=ml_aj.has_vehicle] run return 0

scoreboard players set #ml_temp ml_aj.check 0
scoreboard players operation #ml_temp ml_aj.count = @s ml_aj.count
$execute as $(mob) run function ml_aj:model/vehicle/tick/final

#Update to new mob position
$execute at $(mob) run function ml_aj:model/vehicle/tick/position

$execute if score @s ml_aj.count matches 10.. run function ml_aj:model/vehicle/tick/10 {mob:"$(mob)"}

execute if score #ml_temp ml_aj.check matches 0 run tag @s remove ml_aj.on_ground
execute if score #ml_temp ml_aj.check matches 1 run tag @s add ml_aj.on_ground
