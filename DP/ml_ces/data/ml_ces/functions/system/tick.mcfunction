## function minecraft:tick

function ml_ces:system/event/tick/execute

scoreboard players add #ml_temp ml_ces.count 1
execute if score #ml_temp ml_ces.count matches 200.. run function ml_ces:system/tick_seconds
