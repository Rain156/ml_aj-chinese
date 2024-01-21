## function ml_ces:system/event/player/look_away/look_away
## function ml_ces:system/event/player/look_away/loop

#Check if the current execute target matches the player's previous target
scoreboard players set @s ml_ces.check 1
execute store success score @s ml_ces.check run data modify storage ml_ces:logic data.event.player.look_away.execute[-1].target set from storage ml_ces:logic data.event.player.look_away.temp.target

execute if score @s ml_ces.check matches 0 run function ml_ces:system/event/player/look_away/execute with storage ml_ces:logic data.event.player.look_away.execute[-1]

data remove storage ml_ces:logic data.event.player.look_away.execute[-1]
execute if data storage ml_ces:logic data.event.player.look_away.execute[-1] run function ml_ces:system/event/player/look_away/loop
