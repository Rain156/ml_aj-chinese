## aj.rig_root entity context
## "model": The model name
## "bone": The bone name
## "command": The command to run

data remove storage ml_aj:logic data.temp.locate.translation
$execute on passengers if entity @s[tag=aj.$(model).bone.$(bone)] run data modify storage ml_aj:logic data.temp.locate.translation set from entity @s transformation.translation

execute unless data storage ml_aj:logic data.temp.locate.translation run return 0

$data modify storage ml_aj:logic data.temp.locate.command set value '$(command)'
data modify storage ml_aj:logic data.temp.locate.x set from storage ml_aj:logic data.temp.locate.translation[0]
data modify storage ml_aj:logic data.temp.locate.y set from storage ml_aj:logic data.temp.locate.translation[1]
data modify storage ml_aj:logic data.temp.locate.z set from storage ml_aj:logic data.temp.locate.translation[2]
function ml_aj:model/location/bone/execute_final with storage ml_aj:logic data.temp.locate

return 1
