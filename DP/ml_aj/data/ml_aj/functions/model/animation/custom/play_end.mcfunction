## aj.rig_root entity context

function ml_aj:model/animation/stop
execute unless entity @s[tag=ml_aj.animating] run function ml_aj:model/animation/action/idle
