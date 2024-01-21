## player context
## "id": The model's UUID string
## "type": The mob type

$execute as $(id) run function ml_aj:model/chat/vehicle/type/set_final {type:"$(type)"}

$function ml_aj:model/chat/vehicle/display {id:"$(id)"}
