## Build a model from a data object
## "radius": The spawn radius
## "data": The data object

$data modify storage ml_aj:logic data.temp.spawn set value {model:"",radius:$(radius)f,command:'function ml_aj:model/spawn/found with storage ml_aj:logic data.temp.spawn',data:$(data)}
data modify storage ml_aj:logic data.temp.spawn.model set from storage ml_aj:logic data.temp.spawn.data.name

#Convert radius integer to x10 for random float values
execute store result score #ml_temp ml_aj.temp run data get storage ml_aj:logic data.temp.spawn.radius 10
execute store result storage ml_aj:logic data.temp.spawn.radius int 1 run scoreboard players get #ml_temp ml_aj.temp

scoreboard players set #ml_temp ml_aj.spawn 0
execute if score #ml_temp ml_aj.temp matches ..0 run function ml_aj:model/spawn/found with storage ml_aj:logic data.temp.spawn
execute if score #ml_temp ml_aj.temp matches 1.. run function ml_aj:model/spawn/radius_spread with storage ml_aj:logic data.temp.spawn

function ml_aj:model/spawn/build_check with storage ml_aj:logic data.temp.spawn
data remove storage ml_aj:logic data.temp.spawn

return 1
