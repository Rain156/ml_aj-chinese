## function ml_aj:model/spawn/radius
## function ml_aj:model/spawn/radius_spread_final
## "radius": The radius amount
## "command": The spawn command to run

$data modify storage ml_aj:logic data.spawn.radius set value {x:0,z:0,radius:$(radius),command:'$(command)'}
$execute store result storage ml_aj:logic data.spawn.radius.x float 0.1 run random value -$(radius)..$(radius)
$execute store result storage ml_aj:logic data.spawn.radius.z float 0.1 run random value -$(radius)..$(radius)
function ml_aj:model/spawn/radius_spread_final with storage ml_aj:logic data.spawn.radius
