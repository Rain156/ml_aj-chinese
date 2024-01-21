## player context
## "id": The model's UUID string

execute store result storage ml_aj:logic data.player.temp.model.id int 1 run random value 1..10000
data modify storage ml_aj:logic data.player.temp.model.distance set value 0f

data modify storage ml_aj:logic data.distance.input.pos1 set from entity @s Pos
#Adjust y level of player to be at eye level
execute store result score @s ml_aj.temp run data get storage ml_aj:logic data.distance.input.pos1[1] 100
scoreboard players add @s ml_aj.temp 162
execute store result storage ml_aj:logic data.distance.input.pos1[1] double 0.01 run scoreboard players get @s ml_aj.temp

$execute as @e[tag=aj.rig_root] if data entity @s {item:{tag:{data:{id:"$(id)"}}}} run function ml_aj:model/chat/reposition_final with storage ml_aj:logic data.player.temp.model

#Make player face the model position
execute anchored eyes facing entity @e[tag=ml_aj.face_target,limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~ ~
tag @e remove ml_aj.face_target

function ml_aj:player/interact/model/reposition with storage ml_aj:logic data.player.temp.model
