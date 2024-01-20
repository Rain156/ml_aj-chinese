## player context
## "id": The model's UUID string
## "index": The animation index

$data modify storage ml_aj:logic data.player.temp set value {id:"$(id)",index:$(index),name:"",damage:-1,damage_text:"-1",distance:0f,dist_int:0,dir:"True",full:0,impact:0,impact_text:"First Frame",cooldown:0,command:'(未设置回调命令)',suggest:"",cmd_time:"",cmd_entity:"",projectile:"None",proj_speed:{"text":""},proj_nbt:'{}',proj_suggest:"{}",proj_text:{"text":""}}

#Create a temporary lookup for this entity's UUID for simplified edit commands
$data modify storage ml_aj:logic data.player.temp.item_data set value "$(id)"
function ml_aj:player/item_data {item:"ml_aj.edit",mod:"ml_aj:item_data"}

$execute as $(id) run function ml_aj:model/chat/anim/attack/settings/display_final {index:$(index)}

function ml_aj:model/chat/anim/attack/settings/display_extra with storage ml_aj:logic data.player.temp
