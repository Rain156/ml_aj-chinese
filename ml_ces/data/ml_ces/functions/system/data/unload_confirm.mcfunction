## function ml_ces:system/unload

function ml_ces:system/player/chat_clear

#Entities
kill @e[tag=ml_ces]

#Scoreboard
scoreboard objectives remove ml_ces.check
scoreboard objectives remove ml_ces.count
scoreboard objectives remove ml_ces.global
scoreboard objectives remove ml_ces.temp
scoreboard players reset #ml_days ml_ces.global
scoreboard players reset #ml_index ml_ces.global
scoreboard players reset #ml_seconds ml_ces.global
scoreboard players reset #ml_uuid ml_ces.global

#Storage
data remove storage ml_ces:logic data

#Disable
datapack disable "file/ml_ces"
datapack disable "file/ml_ces.zip"

tellraw @s {"text":"\n[MLCES] Datapack has been unloaded.\n","color":"green"}

tag @a remove ml_ces.look_at_reset
