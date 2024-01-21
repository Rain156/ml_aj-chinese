## function ml_aj:player/interact/model/release
## player context
## "id": The unique id to link the model

$execute as @e[tag=aj.rig_root,tag=ml_aj.model_move_$(id)] run function ml_aj:player/interact/model/release_final {id:$(id)}
