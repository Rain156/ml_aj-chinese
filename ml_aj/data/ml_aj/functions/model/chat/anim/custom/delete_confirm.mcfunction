## player context
## "id": The model's UUID string
## "index": The custom animation index

$execute as $(id) run function ml_aj:model/chat/anim/custom/delete_final {index:$(index)}

$function ml_aj:model/chat/anim/custom/display {id:"$(id)"}
