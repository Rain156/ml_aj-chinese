## player context
## "id": The model's UUID string

$data modify storage ml_aj:logic data.player.temp set value {id:"$(id)",idle:"idle",idle_text:"idle",walk:"walk",walk_text:"walk",swim:"swim",swim_text:"swim",death:"death",death_text:"death",despawn:"despawn",despawn_text:"despawn",sit:"sit",sit_text:"sit",sit_idle:"sit_idle",sit_idle_text:"sit_idle",stand:"stand",stand_text:"stand"}

#Create a temporary lookup for this entity's UUID for simplified edit commands
$data modify storage ml_aj:logic data.player.temp.item_data set value "$(id)"
function ml_aj:player/item_data {item:"ml_aj.edit",mod:"ml_aj:item_data"}

$execute as $(id) run function ml_aj:model/chat/anim/display_final

function ml_aj:model/chat/anim/display_extra with storage ml_aj:logic data.player.temp
