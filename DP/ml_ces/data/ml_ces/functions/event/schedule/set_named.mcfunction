## Set a named, scheduled command to run by this entity
## Example: /function ml_ces:event/schedule/set_named {"time":10,"measure":"s","command":"say hello","event":"cmd1"}
##   "time": The amount of time before the scheduled command runs
##   "measure": "t" for ticks, "s" for seconds, or "d" for days
##   "command": The command to run after the scheduled time is reached
##   "event": The unique event name for the scheduled command so that it can be cleared if needed

$data modify storage ml_ces:logic data.schedule.temp.name set value "$(event)"
$function ml_ces:event/schedule/set {"time":$(time),"measure":"$(measure)","command":'$(command)'}
