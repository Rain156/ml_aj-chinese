## Get the time length for an animation
## aj.rig_root entity context
## "name": The model name
## "anim": The animation name

scoreboard players set @s ml_aj.check 0
scoreboard players set @s ml_aj.temp 0

#Check if the scoreboard objective exists
$execute store success score @s ml_aj.temp run scoreboard objectives modify aj.$(name).animation.$(anim).local_anim_time rendertype integer
execute if score @s ml_aj.temp matches 0 run return 0

#Force the once loop mode so that it resets to 0 when the animation is finished
$scoreboard players set @s aj.$(name).animation.$(anim).loop_mode 1

#Loop through the animation to get the last frame time
scoreboard players set @s aj.anim_time 0
$scoreboard players set @s aj.$(name).animation.$(anim).local_anim_time 0
$execute store result score @s ml_aj.temp run function ml_aj:model/animation/setup/get_time_loop {name:"$(name)",anim:"$(anim)"}

execute if score @s ml_aj.temp matches 0 run return 0
return run scoreboard players get @s ml_aj.check
