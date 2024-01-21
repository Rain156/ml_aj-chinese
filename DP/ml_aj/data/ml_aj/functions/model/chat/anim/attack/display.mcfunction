## player context
## "id": The model's UUID string

$data modify storage ml_aj:logic data.player.temp set value {id:"$(id)",badge:0,loop:{id:"$(id)",badge:0,index:0},select:"随机执行"}
$execute as $(id) run data modify storage ml_aj:logic data.player.temp.badge set from entity @s item.tag.data.badge
data modify storage ml_aj:logic data.player.temp.loop.badge set from storage ml_aj:logic data.player.temp.badge

$execute as $(id) run function ml_aj:model/chat/anim/attack/display_final

#Create a temporary lookup for this entity's UUID for simplified edit commands
$data modify storage ml_aj:logic data.player.temp.item_data set value "$(id)"
function ml_aj:player/item_data {item:"ml_aj.edit",mod:"ml_aj:item_data"}

function ml_aj:model/chat/anim/attack/display_extra with storage ml_aj:logic data.player.temp
