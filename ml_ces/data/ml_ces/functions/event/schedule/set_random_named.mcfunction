## Set a named, scheduled command to run by this entity, using a randomized time setting
## Example: /function ml_ces:event/schedule/set_random_named {"min":1,"max":10,"measure":"s","command":"say random schedule between 1 and 10 seconds","event":"cmd1"}
##   "min": The minimum amount of time to choose between to start the scheduled command
##   "max": The maximum amount of time to choose between to start the scheduled command
##   "measure": "t" for ticks, "s" for seconds, or "d" for days
##   "command": The command to run after the scheduled time is reached
##   "event": The unique event name for the scheduled command so that it can be cleared if needed

$data modify storage ml_ces:logic data.schedule.temp.name set value "$(event)"
$function ml_ces:event/schedule/set_random {"min":$(min),"max":$(max),"measure":"$(measure)","command":'$(command)'}
