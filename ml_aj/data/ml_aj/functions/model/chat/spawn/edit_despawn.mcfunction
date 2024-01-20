## player context
## "id": The model's UUID string
## "despawn": The despawn type

data modify storage ml_aj:logic data.player.temp.despawn set value "N/A"
$execute if data storage ml_aj:logic {data:{player:{temp:{despawn:"$(despawn)"}}}} as $(id) run function ml_aj:model/chat/spawn/despawn_enable {type:1}

data modify storage ml_aj:logic data.player.temp.despawn set value "Disable"
$execute if data storage ml_aj:logic {data:{player:{temp:{despawn:"$(despawn)"}}}} as $(id) run function ml_aj:model/chat/spawn/despawn_enable {type:0}

data modify storage ml_aj:logic data.player.temp.despawn set value "Delete"
$execute if data storage ml_aj:logic {data:{player:{temp:{despawn:"$(despawn)"}}}} as $(id) run function ml_aj:model/chat/spawn/despawn_disable

$function ml_aj:model/chat/spawn/display {id:"$(id)"}
