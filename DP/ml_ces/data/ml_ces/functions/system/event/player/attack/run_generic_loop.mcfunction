## function ml_ces:system/event/player/attack/run_generic
## function ml_ces:system/event/player/attack/run_generic_loop

function ml_ces:system/run_command with storage ml_ces:logic data.event.player.attack.execute.temp[-1]
data remove storage ml_ces:logic data.event.player.attack.execute.temp[-1]

execute if data storage ml_ces:logic data.event.player.attack.execute.temp[0] run function ml_ces:system/event/player/attack/run_generic_loop
