## advancement ml_ces:player/look_away

#Prevent data modify if no data has been initialized
execute unless data storage ml_ces:logic data run return 0

#Prevent event processing if look events are disabled
execute if data storage ml_ces:logic {data:{event:{player:{use_look:0b}}}} run return 0

#Clear the player's current look target
data modify storage ml_ces:logic data.event.player.look_away.temp.source set from entity @s UUID
function ml_ces:system/event/player/look_away/reset with storage ml_ces:logic data.event.player.look_away.temp

#No need to continue if no look away events are set
execute unless data storage ml_ces:logic data.event.player.look_away.current[0] run return 0

data modify storage ml_ces:logic data.event.player.look_away.execute set from storage ml_ces:logic data.event.player.look_away.current
function ml_ces:system/event/player/look_away/loop
data remove storage ml_ces:logic data.event.player.look_away.execute
