## player context
## "id": The model's UUID string

$data modify storage ml_aj:logic data.player.temp set value {id:"$(id)",scale:1,speed:3,health:0,health_text:"Invulnerable",bar:"False",color_text:{"text":""},offset:0f,offset_text:{"text":""},type:"Cat",knockback:"False",hostile:"False",damage:5,d_variant:"None",prop:'{}',prop_suggest:"{}"}

$execute as $(id) run function ml_aj:model/chat/vehicle/display_final with entity @s item.tag.data

#Create a temporary lookup for this entity's UUID for simplified edit commands
$data modify storage ml_aj:logic data.player.temp.item_data set value "$(id)"
function ml_aj:player/item_data {item:"ml_aj.edit",mod:"ml_aj:item_data"}

function ml_aj:model/chat/vehicle/display_extra with storage ml_aj:logic data.player.temp
