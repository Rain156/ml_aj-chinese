## aj.rig_root entity context
## "command": The command to execute on the vehicle

execute unless data entity @s item.tag.data.mob run return 0

data modify storage ml_aj:logic data.vehicle.mob set from entity @s item.tag.data.mob
$data modify storage ml_aj:logic data.vehicle.command set value '$(command)'
function ml_aj:model/vehicle/execute_final with storage ml_aj:logic data.vehicle

return 1
