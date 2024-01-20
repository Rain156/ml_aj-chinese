## Set a command to run by this entity when the player looks at it
## Example: /function ml_ces:event/player/look_at/set {"command":"say player looked at me"}
##   "command": The command to run by this entity when the player looks at it

scoreboard players set #ml_temp ml_ces.temp 0
execute unless entity @s store result score #ml_temp ml_ces.temp run function ml_ces:system/error/context {"fn":"ml_ces:event/player/look_at/set"}
execute if score #ml_temp ml_ces.temp matches 1 run return 0

#Enable since disabled by default
data modify storage ml_ces:logic data.event.player.use_look set value 1b
advancement revoke @a only ml_ces:player/look_at

$data modify storage ml_ces:logic data.event.temp set value {"id":[I;0,0,0,0],"command":'$(command)'}
data modify storage ml_ces:logic data.event.temp.id set from entity @s UUID
function ml_ces:system/event/player/look_at/set with storage ml_ces:logic data.event.temp
