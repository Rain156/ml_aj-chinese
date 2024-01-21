## Register a command event to run by this entity when called
## Example: /function ml_ces:event/custom/register {"event":"custom_event","command":"say this is a custom event command"}
##   "event": The unique event name for the custom event that will be used when called
##   "command": The command to run by this entity when the custom event is called

scoreboard players set #ml_temp ml_ces.temp 0
execute unless entity @s store result score #ml_temp ml_ces.temp run function ml_ces:system/error/context {"fn":"ml_ces:event/custom/register"}
execute if score #ml_temp ml_ces.temp matches 1 run return 0

$execute unless data storage ml_ces:logic data.event.custom.current[{"id":"$(event)"}] run data modify storage ml_ces:logic data.event.custom.current append value {"id":"$(event)","listeners":[]}
$data modify storage ml_ces:logic data.event.temp set value {"id":"$(event)","uuid":[I;0,0,0,0],"command":'$(command)'}
data modify storage ml_ces:logic data.event.temp.uuid set from entity @s UUID
function ml_ces:system/event/custom/set with storage ml_ces:logic data.event.temp
