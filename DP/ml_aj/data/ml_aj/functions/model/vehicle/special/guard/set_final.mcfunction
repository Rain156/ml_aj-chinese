## function ml_aj:model/vehicle/special/guard/set
## aj.rig_root entity context
## "id": The target's UUID

$execute if data storage ml_aj:logic {data:{no_target:$(id)}} run return 0

$data modify entity @s item.tag.data.guard set value $(id)
$function ml_aj:model/vehicle/execute {command:"function ml_aj:model/vehicle/special/guard/apply {guard:$(id)}"}

return 1
