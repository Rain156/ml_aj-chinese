## player context
## "id": The model's UUID string

$data remove entity $(id) item.tag.data.vehicle_temp
$data remove entity $(id) item.tag.data.vehicle_set

$function ml_aj:model/chat/display {id:"$(id)"}
