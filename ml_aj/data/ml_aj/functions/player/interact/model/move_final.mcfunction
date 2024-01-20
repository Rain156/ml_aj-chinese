## function ml_aj:player/interact/model/move
## player context
## "id": The unique link id
## "distance": The distance from the player

tag @s add ml_aj.model_move_source
$execute anchored eyes positioned ^ ^ ^0.001 as @e[tag=aj.rig_root,tag=ml_aj.model_move_$(id)] run function ml_aj:player/interact/model/move_model {distance:$(distance)}
tag @s remove ml_aj.model_move_source
