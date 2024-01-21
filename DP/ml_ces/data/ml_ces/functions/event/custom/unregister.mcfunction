## Unregister a command event for this entity
## Example: /function ml_ces:event/custom/unregister {"event":"custom_event"}
##   "event": The unique event name for the custom event that was used when registered

scoreboard players set #ml_temp ml_ces.temp 0
execute unless entity @s store result score #ml_temp ml_ces.temp run function ml_ces:system/error/context {"fn":"ml_ces:event/custom/unregister"}
$execute if score #ml_temp ml_ces.temp matches 0 unless data storage ml_ces:logic data.event.custom.current[{"id":"$(event)"}] store result score #ml_temp ml_ces.temp run function ml_ces:system/error/not_found {"name":"$(event)"}
execute if score #ml_temp ml_ces.temp matches 1 run return 0

$data modify storage ml_ces:logic data.event.temp set value {"id":"$(event)","uuid":[I;0,0,0,0]}
data modify storage ml_ces:logic data.event.temp.uuid set from entity @s UUID
function ml_ces:system/event/custom/clear with storage ml_ces:logic data.event.temp
