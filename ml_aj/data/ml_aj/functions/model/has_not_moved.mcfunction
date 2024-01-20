## aj.rig_root entity context

execute unless entity @s[tag=ml_aj.pet_sitting] run function ml_aj:model/animation/action/idle
execute if entity @s[tag=ml_aj.pet_sitting] run function ml_aj:model/animation/action/sit_idle
