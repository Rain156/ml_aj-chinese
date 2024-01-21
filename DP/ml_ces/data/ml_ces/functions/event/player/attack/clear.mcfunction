## Clear the player attack event for this interaction entity if one is set

scoreboard players set #ml_temp ml_ces.temp 0
execute unless entity @s[type=minecraft:interaction] store result score #ml_temp ml_ces.temp run function ml_ces:system/error/context_interact {"fn":"ml_ces:event/player/attack/clear"}
execute if score #ml_temp ml_ces.temp matches 1 run return 0

data modify storage ml_ces:logic data.event.temp set value {"id":[I;0,0,0,0]}
data modify storage ml_ces:logic data.event.temp.id set from entity @s UUID
function ml_ces:system/event/player/attack/clear with storage ml_ces:logic data.event.temp
