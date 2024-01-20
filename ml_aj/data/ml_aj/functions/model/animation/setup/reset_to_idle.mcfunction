## aj.rig_root entity context

execute on passengers if entity @s[tag=ml_aj.bone] run function ml_aj:model/animation/setup/reset
tag @s add ml_aj.force_idle
function ml_aj:model/animation/action/idle
