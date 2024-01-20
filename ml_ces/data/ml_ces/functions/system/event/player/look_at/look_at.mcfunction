## advancement ml_ces:player/look_at

#Prevent event processing if look events are disabled
execute if data storage ml_ces:logic {data:{event:{player:{use_look:0b}}}} run return 0

advancement revoke @s only ml_ces:player/look_away
advancement revoke @s only ml_ces:player/look_at

execute unless data storage ml_ces:logic data.event.player.look_at.current[0] run return 0

data modify storage ml_ces:logic data.event.player.look_at.execute set from storage ml_ces:logic data.event.player.look_at.current
function ml_ces:system/event/player/look_at/loop
data remove storage ml_ces:logic data.event.player.look_at.execute
