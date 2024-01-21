## function ml_aj:player/interact/model/move_final
## aj.rig_root entity context
## "distance": The distance from the player

$execute positioned ^ ^ ^$(distance) facing entity @p[tag=ml_aj.model_move_source] feet run tp @s ~ ~ ~ ~ 0
$execute positioned ^ ^ ^$(distance) facing entity @p[tag=ml_aj.model_move_source] feet run function ml_aj:player/interact/model/move_model_final with entity @s item.tag.data
