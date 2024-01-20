## player context
## "id": The model's UUID string
## "cmd": The command to set

$data modify storage ml_aj:logic data.player.temp.cmd set value '$(cmd)'
execute if data storage ml_aj:logic {data:{player:{temp:{cmd:'Set Command Here'}}}} run data modify storage ml_aj:logic data.player.temp.cmd set value ''

$execute unless data storage ml_aj:logic {data:{player:{temp:{cmd:''}}}} as $(id) run data modify entity @s item.tag.data.cb.reload set from storage ml_aj:logic data.player.temp.cmd
$execute if data storage ml_aj:logic {data:{player:{temp:{cmd:''}}}} as $(id) run data remove entity @s item.tag.data.cb.reload

$function ml_aj:model/chat/extra/display {id:"$(id)"}
