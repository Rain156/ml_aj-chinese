## function ml_ces:event/schedule/clear
## function ml_ces:system/event/schedule/clear_loop

$execute unless data storage ml_ces:logic data.schedule.current[$(i)] run return 0

#Find the scheduled event to clear
scoreboard players set #ml_index ml_ces.temp 0
$execute store success score #ml_index ml_ces.temp run data remove storage ml_ces:logic data.schedule.current[$(i)].values[{"name":"$(name)","target":$(target)}]

scoreboard players add #ml_index ml_ces.global 1
execute store result storage ml_ces:logic data.schedule.clear.i int 1 run scoreboard players get #ml_index ml_ces.global
execute if score #ml_index ml_ces.temp matches 0 run function ml_ces:system/event/schedule/clear_loop with storage ml_ces:logic data.schedule.clear
