## function ml_ces:system/event/player/interact/execute

data modify storage ml_ces:logic data.event.player.interact.execute.temp set from storage ml_ces:logic data.event.player.interact.generic
function ml_ces:system/event/player/interact/run_generic_loop
data remove storage ml_ces:logic data.event.player.interact.execute.temp
