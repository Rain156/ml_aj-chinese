## aj.rig_root entity context
## "name": The save name

function ml_aj:model/chat/spawn/save_build

$execute unless data storage ml_aj:logic data.spawn.models[{name:"$(name)"}] run data modify storage ml_aj:logic data.spawn.models append value {name:"$(name)"}
$data modify storage ml_aj:logic data.spawn.models[{name:"$(name)"}].data set from storage ml_aj:logic data.spawn.temp

data remove storage ml_aj:logic data.spawn.temp
