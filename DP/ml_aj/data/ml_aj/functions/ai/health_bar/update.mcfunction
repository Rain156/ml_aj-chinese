## ml_aj.rig_root entity context
## Place current health in #ml_aj_damage ml_aj.temp and max health in #ml_aj_damage ml_aj.check

execute if data entity @s {item:{tag:{data:{bar:0}}}} run return 0

scoreboard players operation #ml_aj_damage ml_aj.global = #ml_aj_percent ml_aj.global
#Prevent dividing by 0
execute if score #ml_aj_damage ml_aj.temp matches ..0 run scoreboard players set #ml_aj_damage ml_aj.global 0

#Multiply by 100 to allow for precision for two decimal places
execute if score #ml_aj_damage ml_aj.temp matches 1.. run scoreboard players operation #ml_aj_damage ml_aj.global *= #ml_aj_percent ml_aj.global
execute if score #ml_aj_damage ml_aj.temp matches 1.. run scoreboard players operation #ml_aj_damage ml_aj.check *= #ml_aj_percent ml_aj.global

#First divide the max health by the current health to get fraction
execute if score #ml_aj_damage ml_aj.temp matches 1.. run scoreboard players operation #ml_aj_damage ml_aj.check /= #ml_aj_damage ml_aj.temp
#Use current health fraction to determine length of health bar
execute if score #ml_aj_damage ml_aj.temp matches 1.. run scoreboard players operation #ml_aj_damage ml_aj.global /= #ml_aj_damage ml_aj.check
#Prevent no health bar width if current health is a small fraction of max health
execute if score #ml_aj_damage ml_aj.temp matches 1.. if score #ml_aj_damage ml_aj.global matches ..0 run scoreboard players set #ml_aj_damage ml_aj.global 1

#Set the display width based on current health bar length, then animate it
execute if score #ml_aj_damage ml_aj.temp matches 1.. run data modify storage ml_aj:logic data.temp.damage.value set value [0f,0.15f,0.01f]
execute if score #ml_aj_damage ml_aj.temp matches ..0 run data modify storage ml_aj:logic data.temp.damage.value set value [0f,0f,0f]

#Since the x scale is from 0 to 1, multiple current health bar length by 0.1
execute store result storage ml_aj:logic data.temp.damage.value[0] float 0.01 run scoreboard players get #ml_aj_damage ml_aj.global
data merge entity @s {interpolation_duration:5,start_interpolation:1}
data modify entity @s transformation.scale set from storage ml_aj:logic data.temp.damage.value

return 1
