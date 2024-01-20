## Get the difference of two positions
## Note: Target goes in input.pos2 and source goes in input.pos1
## Place input in ml_aj:logic data.distance.input.pos1 and ml_aj:logic data.distance.input.pos2
## Output is placed in score #ml_temp ml_aj.calc.x2, y2, and z2 (x1000 for float precision)

execute store result score #ml_temp ml_aj.calc.x1 run data get storage ml_aj:logic data.distance.input.pos1[0] 1000
execute store result score #ml_temp ml_aj.calc.y1 run data get storage ml_aj:logic data.distance.input.pos1[1] 1000
execute store result score #ml_temp ml_aj.calc.z1 run data get storage ml_aj:logic data.distance.input.pos1[2] 1000

execute store result score #ml_temp ml_aj.calc.x2 run data get storage ml_aj:logic data.distance.input.pos2[0] 1000
execute store result score #ml_temp ml_aj.calc.y2 run data get storage ml_aj:logic data.distance.input.pos2[1] 1000
execute store result score #ml_temp ml_aj.calc.z2 run data get storage ml_aj:logic data.distance.input.pos2[2] 1000

#Get the differences of the position values
scoreboard players operation #ml_temp ml_aj.calc.x2 -= #ml_temp ml_aj.calc.x1
scoreboard players operation #ml_temp ml_aj.calc.y2 -= #ml_temp ml_aj.calc.y1
scoreboard players operation #ml_temp ml_aj.calc.z2 -= #ml_temp ml_aj.calc.z1
