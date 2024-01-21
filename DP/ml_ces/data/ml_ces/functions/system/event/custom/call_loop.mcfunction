## function ml_ces:system/event/arrow_execute
## function ml_ces:system/event/custom/call_loop

function ml_ces:system/run_command_arrow_id with storage ml_ces:logic data.event.custom.execute[-1]
data remove storage ml_ces:logic data.event.custom.execute[-1]

#Loop through all commands for the current custom event if any
execute if data storage ml_ces:logic data.event.custom.execute[-1] run function ml_ces:system/event/custom/call_loop
