## player context
## "id": The model's UUID string
## "bar": If the health bar is visible

data modify storage ml_aj:logic data.player.temp.bar set value "True"

$execute if data storage ml_aj:logic {data:{player:{temp:{bar:"$(bar)"}}}} as $(id) run function ml_aj:model/chat/vehicle/edit_bar_final {bar:0,scale:0f}
$execute unless data storage ml_aj:logic {data:{player:{temp:{bar:"$(bar)"}}}} as $(id) run function ml_aj:model/chat/vehicle/edit_bar_final {bar:1,scale:0.15f}

$function ml_aj:model/chat/vehicle/display {id:"$(id)"}
