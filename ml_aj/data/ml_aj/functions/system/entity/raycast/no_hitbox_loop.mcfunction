## function ml_aj:system/entity/raycast/no_hitbox_final
## function ml_aj:system/entity/raycast/no_hitbox_loop

execute if score @s ml_aj.raycast >= @s ml_aj.raycast_max run return 0

scoreboard players add @s ml_aj.raycast 1

#Check for entities within a short distance
execute if predicate ml_aj:entity/raycast run scoreboard players set @s ml_aj.raycast_max -1

execute positioned ^ ^ ^0.1 run function ml_aj:system/entity/raycast/no_hitbox_loop

return 1
