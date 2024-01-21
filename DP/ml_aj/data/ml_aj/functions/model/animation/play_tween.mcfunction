## aj.rig_root entity context
## Note: A time of 3 is a good average amount
## "name": The model name
## "anim": The animation name
## "loop": The loop mode
## "time": The duration of the tween
## "anim_time": The duration of the animation

$function ml_aj:model/animation/play {name:"$(name)",anim:"$(anim)",loop:$(loop),time:$(anim_time)}

$scoreboard players set @s aj.tween_time $(time)
$execute on passengers run data modify entity @s interpolation_duration set value $(time)
scoreboard players remove @s aj.tween_time 1
