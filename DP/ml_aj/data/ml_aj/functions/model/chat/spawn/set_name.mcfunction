## player context
## "id": The model's UUID string
## "name": The new save name

$execute as $(id) run data modify entity @s item.tag.data.save_name set value "$(name)"
$execute as $(id) if data entity @s {item:{tag:{data:{save_name:""}}}} run data modify entity @s item.tag.data.save_name set from entity @s item.tag.data.name

$function ml_aj:model/chat/spawn/display {id:"$(id)"}
