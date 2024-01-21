## Enable a model
## aj.rig_root entity context

tag @s remove ml_aj.disabled

function ml_aj:model/animation/resume with entity @s item.tag.data.temp
function ml_aj:model/tick_start
function ml_aj:model/vehicle/execute {command:"data modify entity @s NoAI set value 0b"}
