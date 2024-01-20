## function ml_aj:system/entity/raycast/start_final
## function ml_aj:system/entity/raycast/loop

execute if score @s ml_aj.raycast >= @s ml_aj.raycast_max run return 0

scoreboard players add @s ml_aj.raycast 1

#Check an overlapping area of 0.01 on the current position for hitbox detection
execute if entity @s[dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run scoreboard players set @s ml_aj.raycast_max -1

execute positioned ^ ^ ^0.1 run function ml_aj:system/entity/raycast/loop

return 1
