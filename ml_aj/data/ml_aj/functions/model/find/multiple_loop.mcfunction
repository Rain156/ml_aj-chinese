## function ml_aj:model/find/multiple
## function ml_aj:model/find/multiple_loop
## player context
## "id": The target entity's UUID

$execute as @e[tag=aj.rig_root,distance=..10] if data entity @s {UUID:$(id)} run function ml_aj:model/find/multiple_loop_final {id:$(id)}

data remove storage ml_aj:logic data.model.search[0]

execute if data storage ml_aj:logic data.model.search[0] run function ml_aj:model/find/multiple_loop with storage ml_aj:logic data.model.search[0]
