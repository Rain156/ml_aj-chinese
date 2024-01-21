## player context
## "id": The model's UUID string

$data modify storage ml_aj:logic data.player.temp set value {id:"$(id)",name:"",edited:{"text":""},suggest:"{}",despawn:"N/A",despawn_text:{"text":""}}

$execute as $(id) unless data entity @s item.tag.data.save_name run data modify entity @s item.tag.data.save_name set from entity @s item.tag.data.name
$execute as $(id) run function ml_aj:model/chat/spawn/display_final with entity @s item.tag.data

function ml_aj:model/chat/spawn/display_extra with storage ml_aj:logic data.player.temp
