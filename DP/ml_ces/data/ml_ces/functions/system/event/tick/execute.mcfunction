## function ml_ces:system/tick

execute unless data storage ml_ces:logic data.event.tick.current[0] run return 0

data modify storage ml_ces:logic data.event.tick.execute set from storage ml_ces:logic data.event.tick.current
function ml_ces:system/event/tick/loop
data remove storage ml_ces:logic data.event.tick.execute
