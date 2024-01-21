## aj.rig_root entity context

tag @s remove ml_aj.animating
tag @s remove ml_aj.anim_custom
tag @s remove ml_aj.anim_idle
tag @s remove ml_aj.anim_walk
tag @s remove ml_aj.anim_swim
tag @s remove ml_aj.anim_death
tag @s remove ml_aj.anim_despawn
tag @s remove ml_aj.anim_sit
tag @s remove ml_aj.anim_sit_idle
tag @s remove ml_aj.anim_stand
tag @s remove ml_aj.anim_attack

execute unless entity @s[tag=ml_aj.anim_attack_z] run tag @s remove ml_aj.attacking
