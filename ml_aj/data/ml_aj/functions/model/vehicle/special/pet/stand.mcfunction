## function ml_aj:model/vehicle/special/pet/check
## aj.rig_root entity context

tag @s remove ml_aj.pet_sitting
execute unless entity @s[tag=ml_aj.anim_busy] run function ml_aj:model/animation/action/stand
execute if entity @s[tag=ml_aj.anim_busy,tag=ml_aj.anim_sit] run function ml_aj:model/animation/action/stand

function ml_aj:model/vehicle/execute {command:"execute if entity @s[tag=ml_path.ai_vehicle] run function ml_path:mob/resume"}
