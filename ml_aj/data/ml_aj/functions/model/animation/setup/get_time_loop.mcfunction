## function ml_aj:model/animation/setup/get_time
## function ml_aj:model/animation/setup/get_time_loop
## aj.rig_root entity context
## "name": The name of the model
## "anim": The animation name

scoreboard players add @s ml_aj.check 1
execute if score @s ml_aj.check matches 200.. run return 0

$function animated_java:$(name)/zzzzzzzz/animations/$(anim)/tick_animation

#Check if scoreboard objective exists, but animation doesn't
$execute if score @s ml_aj.check matches 1 if score @s aj.$(name).animation.$(anim).local_anim_time matches 0 run return 0

$execute unless score @s aj.$(name).animation.$(anim).local_anim_time matches 0 run function ml_aj:model/animation/setup/get_time_loop {name:"$(name)",anim:"$(anim)"}

return 1
