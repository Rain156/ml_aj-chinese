## player context
## "id": The model's UUID string

$data modify storage ml_aj:logic data.player.temp set value {id:"$(id)"}

function ml_aj:model/chat/vehicle/type/display_extra with storage ml_aj:logic data.player.temp
