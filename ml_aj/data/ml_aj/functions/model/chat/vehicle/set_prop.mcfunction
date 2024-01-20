## player context
## "id": The model's UUID string
## "nbt": The mob nbt

data modify storage ml_aj:logic data.temp.prop set value {none:{}}
$execute if data storage ml_aj:logic {data:{temp:{prop:{none:$(nbt)}}}} as $(id) run data remove entity @s item.tag.data.vehicle_temp.prop
$execute unless data storage ml_aj:logic {data:{temp:{anim:{none:$(nbt)}}}} as $(id) run data modify entity @s item.tag.data.vehicle_temp.prop set value $(nbt)

$data modify entity $(id) item.tag.data.vehicle_set set value 1b
$data modify entity $(id) item.tag.data.vehicle_temp.prop_update set value 1b

$function ml_aj:model/chat/vehicle/display {id:"$(id)"}
