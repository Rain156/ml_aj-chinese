## function ml_ces:system/event/player/look_at/loop

tag @s add ml_ces.look_at_reset
data modify storage ml_ces:logic data.event.player.look_at.temp.source set from entity @s UUID
function ml_ces:system/event/player/look_at/reset_final with storage ml_ces:logic data.event.player.look_at.temp
