## Set a scheduled command to run by this entity
## Example: /function ml_ces:event/schedule/set {"time":10,"measure":"s","command":"say hello"}
##   "time": The amount of time before the scheduled command runs
##   "measure": "t" for ticks, "s" for seconds, or "d" for days
##   "command": The command to run after the scheduled time is reached

scoreboard players set #ml_temp ml_ces.temp 0
#Make sure schedule time is at least 1
$scoreboard players set #ml_global ml_ces.global $(time)
execute if score #ml_global ml_ces.global matches ..0 store result score #ml_temp ml_ces.temp run function ml_ces:system/error/time
execute unless entity @s store result score #ml_temp ml_ces.temp run function ml_ces:system/error/context {"fn":"ml_ces:event/schedule/set"}
execute if score #ml_temp ml_ces.temp matches 1 run return 0

$data modify storage ml_ces:logic data.schedule.temp.time set value $(time)
$data modify storage ml_ces:logic data.schedule.temp.command set value '$(command)'
$data modify storage ml_ces:logic data.schedule.measure set value "$(measure)"

#Use seconds or days if needed
execute if data storage ml_ces:logic {data:{schedule:{measure:"s"}}} run scoreboard players operation #ml_global ml_ces.global *= #ml_seconds ml_ces.global
execute if data storage ml_ces:logic {data:{schedule:{measure:"d"}}} run scoreboard players operation #ml_global ml_ces.global *= #ml_days ml_ces.global

#Add the scheduled time onto the current game time to use as a lookup id
execute store result score #ml_temp ml_ces.temp run time query gametime
execute store result storage ml_ces:logic data.schedule.temp.id int 1 run scoreboard players operation #ml_temp ml_ces.temp += #ml_global ml_ces.global

#Use the adjusted timestamp id to set the current scheduled command
function ml_ces:system/event/schedule/set with storage ml_ces:logic data.schedule.temp
$schedule function ml_ces:system/event/schedule/execute $(time)$(measure) append

#Make sure next call has no name unless set_named function is used
data modify storage ml_ces:logic data.schedule.temp.name set value ""
