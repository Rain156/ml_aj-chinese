## Set a command to run by this entity every tick
## Example: /function ml_ces:event/tick/set {"command":"say hello"}
##   "command": The command to run every tick for this entity

scoreboard players set #ml_temp ml_ces.temp 0
execute unless entity @s store result score #ml_temp ml_ces.temp run function ml_ces:system/error/context {"fn":"ml_ces:event/tick/set"}
execute if score #ml_temp ml_ces.temp matches 1 run return 0

$data modify storage ml_ces:logic data.event.temp set value {"id":[I;0,0,0,0],"command":'$(command)'}
data modify storage ml_ces:logic data.event.temp.id set from entity @s UUID
function ml_ces:system/event/tick/set with storage ml_ces:logic data.event.temp
