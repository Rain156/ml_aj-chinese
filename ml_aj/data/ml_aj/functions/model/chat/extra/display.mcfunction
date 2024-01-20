## player context
## "id": The model's UUID string

$data modify storage ml_aj:logic data.player.temp set value {id:"$(id)",badge:0,brightness:"Auto",view:1f,shadow:"0.5",opacity:"1.0",rotation:"False",head:{"text":""},suggest:"",reload:'(No Callback Set)',reload_suggest:"Set Command Here",damage:'(No Callback Set)',damage_suggest:"Set Command Here",death:'(No Callback Set)',death_suggest:"Set Command Here"}

#Create a temporary lookup for this entity's UUID for simplified edit commands
$data modify storage ml_aj:logic data.player.temp.item_data set value "$(id)"
function ml_aj:player/item_data {item:"ml_aj.edit",mod:"ml_aj:item_data"}

$execute as $(id) run function ml_aj:model/chat/extra/display_final

function ml_aj:model/chat/extra/display_extra with storage ml_aj:logic data.player.temp
