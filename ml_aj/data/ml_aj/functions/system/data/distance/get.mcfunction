## Get the distance of two positions
## Note: Target goes in input.pos2 and source goes in input.pos1
## Place input in ml_aj:logic data.distance.input.pos1 and ml_aj:logic data.distance.input.pos2
## Output is placed in ml_aj:logic data.distance.output

function ml_aj:system/data/distance/diff

#Reduce decimal point by 1 place to prevent possible scoreboard integer overload
scoreboard players set #num ml_aj.temp 10
scoreboard players operation #ml_temp ml_aj.calc.x2 /= #num ml_aj.temp
scoreboard players operation #ml_temp ml_aj.calc.y2 /= #num ml_aj.temp
scoreboard players operation #ml_temp ml_aj.calc.z2 /= #num ml_aj.temp

#Square the differences
scoreboard players operation #ml_temp ml_aj.calc.x2 *= #ml_temp ml_aj.calc.x2
scoreboard players operation #ml_temp ml_aj.calc.y2 *= #ml_temp ml_aj.calc.y2
scoreboard players operation #ml_temp ml_aj.calc.z2 *= #ml_temp ml_aj.calc.z2

#Add the squared differences
scoreboard players operation #ml_temp ml_aj.calc.x2 += #ml_temp ml_aj.calc.y2
scoreboard players operation #ml_temp ml_aj.calc.x2 += #ml_temp ml_aj.calc.z2

#Reduce decimal point by 2 places for a correct format for the sqrt function
scoreboard players set #num ml_aj.temp 100
execute store result score #ml_temp ml_aj.number run scoreboard players operation #ml_temp ml_aj.calc.x2 /= #num ml_aj.temp

#Get the square root value and place the floating point value in the distance output
function ml_aj:system/data/sqrt/get

execute store result storage ml_aj:logic data.distance.output float 0.1 run scoreboard players get #ml_temp ml_aj.number
