## function ml_ces:system/event/tick/loop

function ml_ces:system/run_command with storage ml_ces:logic data.event.tick.execute[-1]
data remove storage ml_ces:logic data.event.tick.execute[-1]

#Loop through all commands for the current tick event if any
execute if data storage ml_ces:logic data.event.tick.execute[-1] run function ml_ces:system/event/tick/loop
