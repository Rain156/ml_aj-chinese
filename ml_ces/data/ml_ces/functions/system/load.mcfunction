## function minecraft:load

tellraw @a[tag=admin] "[MLCES] Datapack Loaded"
forceload add 0 0

#Scoreboard
scoreboard objectives add ml_ces.check dummy
scoreboard objectives add ml_ces.count dummy
scoreboard objectives add ml_ces.global dummy
scoreboard objectives add ml_ces.temp dummy
scoreboard players set #ml_days ml_ces.global 24000
scoreboard players set #ml_index ml_ces.global 0
scoreboard players set #ml_seconds ml_ces.global 20
scoreboard players set #ml_uuid ml_ces.global 0

#Run Once (Must be after score init)
execute unless data storage ml_ces:logic data run function ml_ces:system/run_once

#Storage
execute unless data storage ml_ces:logic data run function ml_ces:system/data/init

#Updates
function ml_ces:system/update

#Definitions
#define storage ml_ces:logic All logic data
#define entity @a[tag=admin] Admin
#define entity @a[tag=debug] Admin debug
#define score_holder #ml_temp Fake player for temp scores
#define score_holder #ml_global Fake player for global scores
