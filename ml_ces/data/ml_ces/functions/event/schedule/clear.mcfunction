## Clear a scheduled command by its unique event name
## Example: /function ml_ces:event/schedule/clear {"event":"cmd1"}
##   "event": The event name that was used when setting the scheduled command

scoreboard players set #ml_index ml_ces.global 0
scoreboard players set #ml_index ml_ces.temp 0
$data modify storage ml_ces:logic data.schedule.clear set value {"i":0,"name":"$(event)","target":[I;0,0,0,0]}
data modify storage ml_ces:logic data.schedule.clear.target set from entity @s UUID

execute if data storage ml_ces:logic data.schedule.current[0] run function ml_ces:system/event/schedule/clear_loop with storage ml_ces:logic data.schedule.clear
$execute if score #ml_index ml_ces.temp matches 0 run function ml_ces:system/error/no_schedule {"name":"$(event)"}
