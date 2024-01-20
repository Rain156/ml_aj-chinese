## Get the square root value
## Place input in scoreboard #ml_temp ml_aj.number multiplied by 100 if floating point result is needed
## Output gets placed in scoreboard #ml_temp ml_aj.number (Multiply by 0.1 to get floating point result)
## Adapted from NOPEname's square root function

scoreboard players set #num ml_aj.temp 2
scoreboard players set #num_a ml_aj.temp 1
scoreboard players operation #num_b ml_aj.temp = #ml_temp ml_aj.number

execute if score #num_b ml_aj.temp > #num_a ml_aj.temp run function ml_aj:system/data/sqrt/loop
