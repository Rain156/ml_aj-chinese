## function ml_aj:ai/npc/character/tick
## aj.rig_root entity context

#Get the current and target rotations
scoreboard players set #ml_temp ml_aj.calc.x1 0
execute store result score #ml_temp ml_aj.calc.y1 run data get entity @s Rotation[0]
scoreboard players operation @s ml_aj.calc.y1 = #ml_temp ml_aj.calc.y1
execute facing entity @p eyes run tp @s ~ ~ ~ ~ ~
execute store result score #ml_temp ml_aj.calc.x2 run data get entity @s Rotation[1]
execute store result score #ml_temp ml_aj.calc.y2 run data get entity @s Rotation[0]

#Reset rotation to origin
tp @s ~ ~ ~ ~ 0

function ml_aj:system/data/distance/angle
function ml_aj:system/data/distance/angle_x

#Return if rotation angle is too far from the origin
execute if score #ml_temp ml_aj.calc.y1 matches 75.. if score @s ml_aj.count matches 5 run data modify entity @s transformation.right_rotation set value [0f,0f,0f,1f]
execute if score #ml_temp ml_aj.calc.y1 matches 75.. run return 0
#Clamp X rotation if needed
execute if score #ml_temp ml_aj.calc.x1 matches 50.. run scoreboard players set #ml_temp ml_aj.calc.x1 49
execute if score #ml_temp ml_aj.calc.x1 matches ..-50 run scoreboard players set #ml_temp ml_aj.calc.x1 -49

#Subtract from the actual model rotation for the quaternion
scoreboard players operation #ml_temp ml_aj.calc.y2 -= @s ml_aj.calc.y1

#Use a quaternion angle to smoothly rotate the head on the model
data modify storage ml_aj:logic data.temp.rig set value {x:0,y:0,z:0}
execute store result storage ml_aj:logic data.temp.rig.x float -1 run scoreboard players get #ml_temp ml_aj.calc.x1
execute store result storage ml_aj:logic data.temp.rig.y float 1 run scoreboard players get #ml_temp ml_aj.calc.y2

function ml_aj:system/data/trig/to_quaternion with storage ml_aj:logic data.temp.rig
execute on passengers if entity @s[tag=ml_aj.bone_head] run data modify entity @s interpolation_duration set value 3
execute on passengers if entity @s[tag=ml_aj.bone_head] run data modify entity @s transformation.right_rotation set from storage ml_aj:logic data.trig.quaternion
