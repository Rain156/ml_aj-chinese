## player context
## "id": The model's UUID string
## "color": The color id

$execute as $(id) run function ml_aj:model/chat/vehicle/set_color_final {bar_color:$(color)}

$function ml_aj:model/chat/vehicle/display {id:"$(id)"}
