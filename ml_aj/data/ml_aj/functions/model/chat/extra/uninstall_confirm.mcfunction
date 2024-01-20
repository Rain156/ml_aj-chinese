## player context
## "id": The model's UUID string

$function ml_aj:model/chat/extra/display {id:"$(id)"}

$execute as $(id) run function ml_aj:model/chat/extra/uninstall_final with entity @s item.tag.data
