## function ml_ces:system/event/player/look_at/look_at
## function ml_ces:system/event/player/look_at/loop

data modify storage ml_ces:logic data.event.player.look_at.execute[-1].source set from entity @s UUID
scoreboard players set @s ml_ces.check 0
execute store result score @s ml_ces.check run function ml_ces:system/event/player/look_at/execute with storage ml_ces:logic data.event.player.look_at.execute[-1]
execute if score @s ml_ces.check matches 0 run tag @s remove ml_ces.looking_at

data remove storage ml_ces:logic data.event.player.look_at.execute[-1]

#If the loop is ended and no target entity was found, reset the look target for the player
execute if score @s ml_ces.check matches 0 unless entity @s[tag=ml_ces.look_at_reset] unless data storage ml_ces:logic data.event.player.look_at.execute[-1] run function ml_ces:system/event/player/look_at/reset
execute if score @s ml_ces.check matches 0 if data storage ml_ces:logic data.event.player.look_at.execute[-1] run function ml_ces:system/event/player/look_at/loop
