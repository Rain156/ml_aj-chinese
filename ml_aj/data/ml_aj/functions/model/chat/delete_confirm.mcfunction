## player context
## "id": The model's UUID string

function ml_aj:system/player/chat_clear
function ml_aj:system/player/notice/display {text:"Animated Java模型已成功从世界中删除.",color:"green",bold:false}

$execute as $(id) at @s run function ml_aj:model/delete with entity @s item.tag.data
