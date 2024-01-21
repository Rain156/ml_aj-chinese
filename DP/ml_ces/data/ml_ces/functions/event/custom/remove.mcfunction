## Remove a custom event with all its registered entities
## Example: /function ml_ces:event/custom/remove {"event":"custom_event"}
##   "event": The unique event name for the custom event that was used when registered

scoreboard players set #ml_temp ml_ces.temp 0
$execute unless data storage ml_ces:logic data.event.custom.current[{"id":"$(event)"}] store result score #ml_temp ml_ces.temp run function ml_ces:system/error/not_found {"name":"$(event)"}
execute if score #ml_temp ml_ces.temp matches 1 run return 0

$data remove storage ml_ces:logic data.event.custom.current[{"id":"$(event)"}]
