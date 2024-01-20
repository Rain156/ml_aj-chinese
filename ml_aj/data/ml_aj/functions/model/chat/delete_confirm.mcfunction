## player context
## "id": The model's UUID string

function ml_aj:system/player/chat_clear
function ml_aj:system/player/notice/display {text:"The Animated Java Model has been deleted from the world.",color:"green",bold:false}

$execute as $(id) at @s run function ml_aj:model/delete with entity @s item.tag.data
