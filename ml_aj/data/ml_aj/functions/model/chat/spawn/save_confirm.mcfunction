## player context
## "id": The model's UUID string
## "name": The save name

$execute as $(id) run function ml_aj:model/chat/spawn/save_final {name:"$(name)"}

$function ml_aj:model/chat/spawn/display {id:"$(id)"}

function ml_aj:system/player/notice/display {text:"模型数据已保存.",color:"green",bold:false}
