## advancement ml_ces:player/attack

advancement revoke @s only ml_ces:player/attack

data modify storage ml_ces:logic data.event.player.attack.execute set value {"source":[I;0,0,0,0],"target":[I;0,0,0,0],"command":""}
data modify storage ml_ces:logic data.event.player.attack.execute.source set from entity @s UUID
execute as @e[type=minecraft:interaction,predicate=ml_ces:entity/attacked,sort=nearest] if data entity @s attack at @s run function ml_ces:system/event/player/attack/check with storage ml_ces:logic data.event.player.attack.execute

data remove storage ml_ces:logic data.event.player.attack.execute
