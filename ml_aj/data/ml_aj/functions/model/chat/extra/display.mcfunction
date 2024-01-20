## player context
## "id": The model's UUID string

$data modify storage ml_aj:logic data.player.temp set value {id:"$(id)",badge:0,brightness:"Auto",view:1f,shadow:"0.5",opacity:"1.0",rotation:"False",head:{"text":""},suggest:"",reload:'(未设置回调命令)',reload_suggest:"在此处填入命令",damage:'(未设置回调命令)',damage_suggest:"在此处填入命令",death:'(未设置回调命令)',death_suggest:"在此处填入命令"}

#Create a temporary lookup for this entity's UUID for simplified edit commands
$data modify storage ml_aj:logic data.player.temp.item_data set value "$(id)"
function ml_aj:player/item_data {item:"ml_aj.edit",mod:"ml_aj:item_data"}

$execute as $(id) run function ml_aj:model/chat/extra/display_final

function ml_aj:model/chat/extra/display_extra with storage ml_aj:logic data.player.temp
