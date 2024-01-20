## function minecraft:load

tellraw @a[tag=admin] "[MLAJ] Datapack Loaded"
#Force loading of chunk 0 0 is done by system/data/trig/init

#Scoreboard
scoreboard objectives add ml_aj.anim dummy
scoreboard objectives add ml_aj.check dummy
scoreboard objectives add ml_aj.cooldown dummy
scoreboard objectives add ml_aj.count dummy
scoreboard objectives add ml_aj.delay dummy
scoreboard objectives add ml_aj.global dummy
scoreboard objectives add ml_aj.id dummy
scoreboard objectives add ml_aj.number dummy
scoreboard objectives add ml_aj.raycast dummy
scoreboard objectives add ml_aj.raycast_max dummy
scoreboard objectives add ml_aj.temp dummy

scoreboard objectives add ml_aj.item minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add ml_aj.spawn minecraft.used:minecraft.ghast_spawn_egg

scoreboard objectives add ml_aj.calc.x1 dummy
scoreboard objectives add ml_aj.calc.y1 dummy
scoreboard objectives add ml_aj.calc.z1 dummy
scoreboard objectives add ml_aj.calc.x2 dummy
scoreboard objectives add ml_aj.calc.y2 dummy
scoreboard objectives add ml_aj.calc.z2 dummy

scoreboard players set #ml_error ml_aj.global 0
scoreboard players set #ml_global ml_aj.global 0
scoreboard players set #ml_temp ml_aj.temp 0

scoreboard players set #ml_aj_negate ml_aj.global -1
scoreboard players set #ml_aj_two ml_aj.global 2
scoreboard players set #ml_aj_ten ml_aj.global 10
scoreboard players set #ml_aj_percent ml_aj.global 100
scoreboard players set #ml_aj_step ml_aj.global 0
scoreboard players set #ml_aj_distance ml_aj.global 0

#Run Once (Must be after score init)
#Important: Must be delayed so that ml_ces can load first
execute unless data storage ml_aj:logic data run schedule function ml_aj:system/run_once 10t

#Storage
execute unless data storage ml_aj:logic data run function ml_aj:system/data/init

#MLCES Datapack
datapack enable "file/ml_ces"
datapack enable "file/ml_ces.zip"

#Definitions
#define storage ml_aj:logic All logic data
#define entity @a[tag=admin] Admin
#define entity @a[tag=debug] Admin debug
#define score_holder #ml_temp Fake player for temp scores
#define score_holder #ml_global Fake player for global scores
