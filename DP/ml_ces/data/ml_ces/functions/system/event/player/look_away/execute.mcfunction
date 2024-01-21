## function ml_ces:system/event/player/look_away/loop

tag @s add ml_ces.looking_away
function ml_ces:system/run_command with storage ml_ces:logic data.event.player.look_away.execute[-1]
tag @s remove ml_ces.looking_away
