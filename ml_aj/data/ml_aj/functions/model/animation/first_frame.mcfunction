## function ml_aj:model/animation/play
## aj.rig_root entity context

execute on passengers run data modify entity @s interpolation_duration set value 0
$function animated_java:$(name)/zzzzzzzz/animations/$(anim)/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
