## player context
## "id": The model's UUID string
## "auto": If the mob auto reloads

data modify storage ml_aj:logic data.player.temp.auto set value "True"

$execute if data storage ml_aj:logic {data:{player:{temp:{auto:"$(auto)"}}}} as $(id) run data remove entity @s item.tag.data.auto_reload
$execute if data storage ml_aj:logic {data:{player:{temp:{auto:"$(auto)"}}}} as $(id) run tag @s remove ml_aj.auto_reload
$execute unless data storage ml_aj:logic {data:{player:{temp:{auto:"$(auto)"}}}} as $(id) run data modify entity @s item.tag.data.auto_reload set value 1
$execute unless data storage ml_aj:logic {data:{player:{temp:{auto:"$(auto)"}}}} as $(id) run tag @s add ml_aj.auto_reload

$function ml_aj:model/chat/display {id:"$(id)"}
