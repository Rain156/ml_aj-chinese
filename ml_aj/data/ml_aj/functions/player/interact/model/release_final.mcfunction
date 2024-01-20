## aj.rig_root entity context
## "id": The unique link id

$tag @s remove ml_aj.model_move_$(id)
function ml_aj:model/vehicle/execute {command:"data modify entity @s NoAI set value 0b"}
