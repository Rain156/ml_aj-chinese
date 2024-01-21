## player context
## "id": The model's UUID string
## "rotation": If the mob's head rotates separately

data modify storage ml_aj:logic data.player.temp.rotation set value "True"

$execute if data storage ml_aj:logic {data:{player:{temp:{rotation:"$(rotation)"}}}} as $(id) run function ml_aj:model/chat/extra/rotation_disable
$execute unless data storage ml_aj:logic {data:{player:{temp:{rotation:"$(rotation)"}}}} as $(id) run function ml_aj:model/chat/extra/rotation_enable

$function ml_aj:model/chat/extra/display {id:"$(id)"}
