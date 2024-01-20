## function minecraft:tick

execute as @a at @s run function ml_aj:system/player/tick

scoreboard players add #ml_aj_counter ml_aj.global 1
execute if score #ml_aj_counter ml_aj.global matches 40.. run function ml_aj:system/tick_second
