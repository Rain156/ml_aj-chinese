## function ml_aj:system/data/sqrt/get
## function ml_aj:system/data/sqrt/loop

scoreboard players operation #num_a ml_aj.temp += #num_b ml_aj.temp
scoreboard players operation #num_a ml_aj.temp /= #num ml_aj.temp

scoreboard players operation #num_b ml_aj.temp = #ml_temp ml_aj.number
scoreboard players operation #num_b ml_aj.temp /= #num_a ml_aj.temp

execute if score #num_a ml_aj.temp <= #num_b ml_aj.temp run scoreboard players operation #ml_temp ml_aj.number = #num_a ml_aj.temp
execute if score #num_a ml_aj.temp > #num_b ml_aj.temp run function ml_aj:system/data/sqrt/loop
