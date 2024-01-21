## player context

execute if entity @s[tag=ml_aj.model_move] run return run function ml_aj:player/interact/model/release

data modify storage ml_aj:logic data.model.search set value []

function ml_aj:system/entity/raycast/no_hitbox {distance:7,limit:5,selector:"tag=aj.rig_root",callback:'function ml_aj:model/find/found',fail:'function ml_aj:model/find/fail'}

execute unless data storage ml_aj:logic data.model.search[1] run function ml_aj:model/find/final with storage ml_aj:logic data.model.search[0]
execute if data storage ml_aj:logic data.model.search[1] run function ml_aj:model/find/multiple
