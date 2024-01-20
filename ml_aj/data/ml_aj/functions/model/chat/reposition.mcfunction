## player context
## "id": The model's UUID string
## "action": The action to take

data modify storage ml_aj:logic data.player.temp.action set value "Start"
$execute if data storage ml_aj:logic {data:{player:{temp:{action:"$(action)"}}}} run function ml_aj:model/chat/reposition_start {id:"$(id)"}
$execute unless data storage ml_aj:logic {data:{player:{temp:{action:"$(action)"}}}} run function ml_aj:player/interact/model/release

$function ml_aj:model/chat/display {id:"$(id)"}
