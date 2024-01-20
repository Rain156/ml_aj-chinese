## function ml_aj:spawn_radius
## "x": The x spread amount
## "z": The z spread amount
## "radius": The radius amount
## "command": The spawn command to run

scoreboard players add #ml_temp ml_aj.spawn 1

$execute if score #ml_temp ml_aj.spawn matches 11.. run return run $(command)
$execute if score #ml_temp ml_aj.spawn matches ..10 positioned ~$(x) ~ ~$(z) if block ~ ~ ~ #ml_aj:passable run return run $(command)

#Keep trying
$function ml_aj:model/spawn/radius_spread {radius:$(radius),command:'$(command)'}
