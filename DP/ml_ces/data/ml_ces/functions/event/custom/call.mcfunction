## Call a command event for all its registered entities
## Example: /function ml_ces:event/custom/call {"event":"custom_event"}
##   "event": The unique event name for the custom event that was used when registered

scoreboard players set #ml_temp ml_ces.temp 0
$execute unless data storage ml_ces:logic data.event.custom.current[{"id":"$(event)"}] store result score #ml_temp ml_ces.temp run function ml_ces:system/error/not_found {"name":"$(event)"}
execute if score #ml_temp ml_ces.temp matches 1 run return 0

$data modify storage ml_ces:logic data.event.custom.execute set from storage ml_ces:logic data.event.custom.current[{"id":"$(event)"}].listeners
execute if data storage ml_ces:logic data.event.custom.execute[-1] summon minecraft:arrow run function ml_ces:system/event/arrow_execute {fn:"ml_ces:system/event/custom/call_loop"}
data remove storage ml_ces:logic data.event.custom.execute
