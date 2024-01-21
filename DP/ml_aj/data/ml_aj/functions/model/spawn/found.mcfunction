## function ml_aj:model/spawn/start
## "model": The model name
## "data": The model data

$execute rotated ~ 0 run function animated_java:$(model)/summon
$execute as @e[tag=aj.$(model).root] if score @s aj.id = .aj.last_id aj.id at @s run function ml_aj:model/spawn/init {data:$(data)}
