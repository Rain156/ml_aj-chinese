## Disable a model
## aj.rig_root entity context

function ml_aj:ai/attack/cancel
function ml_aj:model/vehicle/execute {command:"data modify entity @s NoAI set value 1b"}

tag @s remove ml_aj.ticking
function ml_ces:event/tick/clear
function ml_aj:model/animation/pause with entity @s item.tag.data.temp
