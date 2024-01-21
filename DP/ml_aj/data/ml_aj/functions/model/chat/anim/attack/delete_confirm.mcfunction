## player context
## "id": The model's UUID string
## "index": The attack animation index

$execute as $(id) run function ml_aj:model/chat/anim/attack/delete_final {index:$(index)}

$function ml_aj:model/chat/anim/attack/display {id:"$(id)"}
