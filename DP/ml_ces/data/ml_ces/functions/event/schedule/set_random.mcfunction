## Set a scheduled command to run by this entity, using a randomized time setting
## Example: /function ml_ces:event/schedule/set_random {"min":1,"max":10,"measure":"s","command":"say random schedule between 1 and 10 seconds"}
##   "min": The minimum amount of time to choose between to start the scheduled command
##   "max": The maximum amount of time to choose between to start the scheduled command
##   "measure": "t" for ticks, "s" for seconds, or "d" for days
##   "command": The command to run after the scheduled time is reached

$data modify storage ml_ces:logic data.schedule.random set value {"time":0,"measure":"$(measure)","command":'$(command)'}
$execute store result storage ml_ces:logic data.schedule.random.time int 1 run random value $(min)..$(max)
function ml_ces:event/schedule/set with storage ml_ces:logic data.schedule.random
