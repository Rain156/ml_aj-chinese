## Clear the player look-at event for this entity if one is set

scoreboard players set #ml_temp ml_ces.temp 0
execute unless entity @s store result score #ml_temp ml_ces.temp run function ml_ces:system/error/context {"fn":"ml_ces:event/player/look_at/clear"}
execute if score #ml_temp ml_ces.temp matches 1 run return 0

data modify storage ml_ces:logic data.event.temp set value {"id":[I;0,0,0,0]}
data modify storage ml_ces:logic data.event.temp.id set from entity @s UUID
function ml_ces:system/event/player/look_at/clear with storage ml_ces:logic data.event.temp
