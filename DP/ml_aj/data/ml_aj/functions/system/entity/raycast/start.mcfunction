## Run a raycast on specific entities from a starting position
## "distance": The distance of the raycast
## "limit": The amount of entities to limit being found by the raycast
## "selector": The selector for the entities to target
## 'callback': The command to run on any entities that are found within the raycast
## 'fail': The command to run if the raycast fails

$data modify storage ml_aj:logic data.temp.raycast set value {distance:$(distance),raycast_max:1,callback:'$(callback)'}

#Calculate the max raycast steps based on the distance and movement amount
scoreboard players set #ml_aj_step ml_aj.global 1
execute store result score #ml_aj_distance ml_aj.global run data get storage ml_aj:logic data.temp.raycast.distance 10
execute store result storage ml_aj:logic data.temp.raycast.raycast_max int 1 run scoreboard players operation #ml_aj_distance ml_aj.global /= #ml_aj_step ml_aj.global

scoreboard players set #ml_aj_raycast ml_aj.check 0
scoreboard players set #ml_aj_raycast ml_aj.count 0
$scoreboard players set #ml_aj_raycast ml_aj.raycast_max $(limit)
$execute as @e[distance=..$(distance),sort=nearest,$(selector)] run function ml_aj:system/entity/raycast/start_final with storage ml_aj:logic data.temp.raycast

#Run the fail if no entities were found
$execute if score #ml_aj_raycast ml_aj.check matches 0 run $(fail)
