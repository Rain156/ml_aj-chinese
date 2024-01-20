## function ml_aj:spawn_radius
## "radius": The radius amount
## "name": The save name

$data modify storage ml_aj:logic data.temp.spawn set value {radius:$(radius)f,command:'function ml_aj:model/spawn/start {name:"$(name)"}'}

#Convert radius integer to x10 for random float values
execute store result score #ml_temp ml_aj.temp run data get storage ml_aj:logic data.temp.spawn.radius 10
execute store result storage ml_aj:logic data.temp.spawn.radius int 1 run scoreboard players get #ml_temp ml_aj.temp

scoreboard players set #ml_temp ml_aj.spawn 0
$execute if score #ml_temp ml_aj.temp matches ..0 run return run function ml_aj:model/spawn/start {name:"$(name)"}

function ml_aj:model/spawn/radius_spread with storage ml_aj:logic data.temp.spawn

return 1
