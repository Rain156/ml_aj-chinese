## function ml_ces:system/event/arrow_execute
## function ml_ces:system/event/schedule/loop
## new arrow entity context

function ml_ces:system/run_command_arrow with storage ml_ces:logic data.schedule.execute.values[0]
data remove storage ml_ces:logic data.schedule.execute.values[0]
execute unless data storage ml_ces:logic data.schedule.execute.values[0] run data remove storage ml_ces:logic data.schedule.execute

#Loop through all commands for the current schedule if any
execute if data storage ml_ces:logic data.schedule.execute run function ml_ces:system/event/schedule/loop
