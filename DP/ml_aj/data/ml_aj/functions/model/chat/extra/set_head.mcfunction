## player context
## "id": The model's UUID string
## "head": The head bone name

$execute as $(id) run function ml_aj:model/chat/extra/set_head_final {head:"$(head)"}

$function ml_aj:model/chat/extra/display {id:"$(id)"}
