## aj.rig_root entity context
## "id": The unique link id

$tag @s add ml_aj.model_move_$(id)
tag @s add ml_aj.face_target

function ml_aj:model/vehicle/execute {command:"data modify entity @s NoAI set value 1b"}

#Get the distance from the player to maintain hold position
data modify storage ml_aj:logic data.distance.input.pos2 set from entity @s Pos
function ml_aj:system/data/distance/get

execute if score #ml_temp ml_aj.number matches 151.. run data modify storage ml_aj:logic data.distance.output set value 15f

data modify storage ml_aj:logic data.player.temp.model.distance set from storage ml_aj:logic data.distance.output
