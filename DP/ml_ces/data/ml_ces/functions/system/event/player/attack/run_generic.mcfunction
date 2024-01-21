## function ml_ces:system/event/player/attack/execute

data modify storage ml_ces:logic data.event.player.attack.execute.temp set from storage ml_ces:logic data.event.player.attack.generic
function ml_ces:system/event/player/attack/run_generic_loop
data remove storage ml_ces:logic data.event.player.attack.execute.temp
