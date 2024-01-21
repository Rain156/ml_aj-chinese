## function ml_aj:system/entity/raycast/no_hitbox
## "raycast_max": The max distance of the raycast in steps
## "callback": The command to run on any entities that are found within the raycast

execute if score #ml_aj_raycast ml_aj.count >= #ml_aj_raycast ml_aj.raycast_max run return 0

scoreboard players set @s ml_aj.raycast 0
$scoreboard players set @s ml_aj.raycast_max $(raycast_max)
function ml_aj:system/entity/raycast/no_hitbox_loop

#Check if successful raycast on this entity
execute if score @s ml_aj.raycast_max matches -1 run scoreboard players add #ml_aj_raycast ml_aj.count 1
$execute if score @s ml_aj.raycast_max matches -1 at @s run $(callback)
execute if score @s ml_aj.raycast_max matches -1 run scoreboard players set #ml_aj_raycast ml_aj.check 1

return 1
