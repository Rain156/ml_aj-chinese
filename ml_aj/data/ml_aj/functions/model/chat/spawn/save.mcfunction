## player context
## "id": The model's UUID string
## "name": The save name

$execute if data storage ml_aj:logic data.spawn.models[{name:"$(name)"}] run function ml_aj:model/chat/spawn/save_check {id:"$(id)",name:"$(name)"}
$execute unless data storage ml_aj:logic data.spawn.models[{name:"$(name)"}] run function ml_aj:model/chat/spawn/save_confirm {id:"$(id)",name:"$(name)"}
