## player context
## "id": The model's UUID string

$execute as $(id) if entity @s[tag=ml_aj.has_vehicle] run function ml_aj:model/chat/vehicle/remove_final

$function ml_aj:model/chat/display {id:"$(id)"}
