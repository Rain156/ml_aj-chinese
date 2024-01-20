## function ml_aj:model/vehicle/special/pet/check
## aj.rig_root entity context

tag @s add ml_aj.pet_sitting

function ml_aj:model/vehicle/execute {command:"function ml_aj:model/vehicle/special/pet/sit_final"}

execute if entity @s[tag=!ml_aj.anim_idle,tag=!ml_aj.anim_busy] run function ml_aj:model/animation/stop
execute unless entity @s[tag=ml_aj.anim_busy] run function ml_aj:model/animation/action/sit
execute if entity @s[tag=ml_aj.anim_busy,tag=ml_aj.anim_stand] run function ml_aj:model/animation/action/sit
