## Get a quaternion from a euler angle
## The output array is placed in ml_aj:logic data.trig.quaternion
## "x": The x rotation, or Rotation[1], or the Pitch
## "y": The y rotation, or Rotation[0], or the Yaw
## "z": The z rotation, or the Roll

# qx = sin(roll/2) * cos(pitch/2) * cos(yaw/2) - cos(roll/2) * sin(pitch/2) * sin(yaw/2)
# qy = cos(roll/2) * sin(pitch/2) * cos(yaw/2) + sin(roll/2) * cos(pitch/2) * sin(yaw/2)
# qz = cos(roll/2) * cos(pitch/2) * sin(yaw/2) - sin(roll/2) * sin(pitch/2) * cos(yaw/2)
# qw = cos(roll/2) * cos(pitch/2) * cos(yaw/2) + sin(roll/2) * sin(pitch/2) * sin(yaw/2)
# return [qx, qy, qz, qw]

data modify storage ml_aj:logic data.trig.quaternion set value [0f,0f,0f,1f]

#Declarations
scoreboard players set #2 ml_aj.number 2
scoreboard players set #1000 ml_aj.number 1000

#sin(pitch/2) and cos(pitch/2)
$data modify storage ml_aj:logic data.trig.temp set value $(x)f
execute store result score #num ml_aj.temp run data get storage ml_aj:logic data.trig.temp 10
execute store result storage ml_aj:logic data.trig.input float 0.1 run scoreboard players operation #num ml_aj.temp /= #2 ml_aj.number
function ml_aj:system/data/trig/sin_cos
scoreboard players operation #sin_pitch ml_aj.number = #sin ml_aj.global
scoreboard players operation #cos_pitch ml_aj.number = #cos ml_aj.global

#sin(yaw/2) and cos(yaw/2)
$data modify storage ml_aj:logic data.trig.temp set value $(y)f
#Negate the yaw value to line up with Minecraft world rotations
execute store result score #num ml_aj.temp run data get storage ml_aj:logic data.trig.temp -10
execute store result storage ml_aj:logic data.trig.input float 0.1 run scoreboard players operation #num ml_aj.temp /= #2 ml_aj.number
function ml_aj:system/data/trig/sin_cos
scoreboard players operation #sin_yaw ml_aj.number = #sin ml_aj.global
scoreboard players operation #cos_yaw ml_aj.number = #cos ml_aj.global

#sin(roll/2) and cos(roll/2)
$data modify storage ml_aj:logic data.trig.temp set value $(z)f
execute store result score #num ml_aj.temp run data get storage ml_aj:logic data.trig.temp 10
execute store result storage ml_aj:logic data.trig.input float 0.1 run scoreboard players operation #num ml_aj.temp /= #2 ml_aj.number
function ml_aj:system/data/trig/sin_cos
scoreboard players operation #sin_roll ml_aj.number = #sin ml_aj.global
scoreboard players operation #cos_roll ml_aj.number = #cos ml_aj.global

# qx = cos(roll/2) * sin(pitch/2) * cos(yaw/2) + sin(roll/2) * cos(pitch/2) * sin(yaw/2)

#Get qx
scoreboard players operation #qx1 ml_aj.number = #cos_roll ml_aj.number
scoreboard players operation #qx1 ml_aj.number *= #sin_pitch ml_aj.number
scoreboard players operation #qx1 ml_aj.number /= #1000 ml_aj.number
scoreboard players operation #qx1 ml_aj.number *= #cos_yaw ml_aj.number
scoreboard players operation #qx2 ml_aj.number = #sin_roll ml_aj.number
scoreboard players operation #qx2 ml_aj.number *= #cos_pitch ml_aj.number
scoreboard players operation #qx2 ml_aj.number /= #1000 ml_aj.number
scoreboard players operation #qx2 ml_aj.number *= #sin_yaw ml_aj.number
scoreboard players operation #qx1 ml_aj.number += #qx2 ml_aj.number
execute store result storage ml_aj:logic data.trig.quaternion[0] float 0.000000001 run scoreboard players get #qx1 ml_aj.number

# qy = cos(roll/2) * cos(pitch/2) * sin(yaw/2) - sin(roll/2) * sin(pitch/2) * cos(yaw/2)

#Get qz
scoreboard players operation #qy1 ml_aj.number = #cos_roll ml_aj.number
scoreboard players operation #qy1 ml_aj.number *= #cos_pitch ml_aj.number
scoreboard players operation #qy1 ml_aj.number /= #1000 ml_aj.number
scoreboard players operation #qy1 ml_aj.number *= #sin_yaw ml_aj.number
scoreboard players operation #qy2 ml_aj.number = #sin_roll ml_aj.number
scoreboard players operation #qy2 ml_aj.number *= #sin_pitch ml_aj.number
scoreboard players operation #qy2 ml_aj.number /= #1000 ml_aj.number
scoreboard players operation #qy2 ml_aj.number *= #cos_yaw ml_aj.number
scoreboard players operation #qy1 ml_aj.number -= #qy2 ml_aj.number
execute store result storage ml_aj:logic data.trig.quaternion[1] float 0.000000001 run scoreboard players get #qy1 ml_aj.number

# qz = sin(roll/2) * cos(pitch/2) * cos(yaw/2) - cos(roll/2) * sin(pitch/2) * sin(yaw/2)

#Get qy
scoreboard players operation #qz1 ml_aj.number = #sin_roll ml_aj.number
scoreboard players operation #qz1 ml_aj.number *= #cos_pitch ml_aj.number
scoreboard players operation #qz1 ml_aj.number /= #1000 ml_aj.number
scoreboard players operation #qz1 ml_aj.number *= #cos_yaw ml_aj.number
scoreboard players operation #qz2 ml_aj.number = #cos_roll ml_aj.number
scoreboard players operation #qz2 ml_aj.number *= #sin_pitch ml_aj.number
scoreboard players operation #qz2 ml_aj.number /= #1000 ml_aj.number
scoreboard players operation #qz2 ml_aj.number *= #sin_yaw ml_aj.number
scoreboard players operation #qz1 ml_aj.number -= #qz2 ml_aj.number
execute store result storage ml_aj:logic data.trig.quaternion[2] float 0.000000001 run scoreboard players get #qz1 ml_aj.number

# qw = cos(roll/2) * cos(pitch/2) * cos(yaw/2) + sin(roll/2) * sin(pitch/2) * sin(yaw/2)

#Get qw
scoreboard players operation #qw1 ml_aj.number = #cos_roll ml_aj.number
scoreboard players operation #qw1 ml_aj.number *= #cos_pitch ml_aj.number
scoreboard players operation #qw1 ml_aj.number /= #1000 ml_aj.number
scoreboard players operation #qw1 ml_aj.number *= #cos_yaw ml_aj.number
scoreboard players operation #qw2 ml_aj.number = #sin_roll ml_aj.number
scoreboard players operation #qw2 ml_aj.number *= #sin_pitch ml_aj.number
scoreboard players operation #qw2 ml_aj.number /= #1000 ml_aj.number
scoreboard players operation #qw2 ml_aj.number *= #sin_yaw ml_aj.number
scoreboard players operation #qw1 ml_aj.number += #qw2 ml_aj.number
execute store result storage ml_aj:logic data.trig.quaternion[3] float 0.000000001 run scoreboard players get #qw1 ml_aj.number
