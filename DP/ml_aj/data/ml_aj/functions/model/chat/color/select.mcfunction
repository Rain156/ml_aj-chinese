## player context
## "id": The model's UUID string
## "color": The selected color id

$execute if entity @s[tag=ml_aj.menu_vehicle] run function ml_aj:model/chat/vehicle/set_color {id:"$(id)",color:$(color)}
