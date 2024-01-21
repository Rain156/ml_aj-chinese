## advancement ml_ces:player/interact

advancement revoke @s only ml_ces:player/interact

data modify storage ml_ces:logic data.event.player.interact.execute set value {"source":[I;0,0,0,0],"target":[I;0,0,0,0],"command":""}
data modify storage ml_ces:logic data.event.player.interact.execute.source set from entity @s UUID
execute as @e[type=minecraft:interaction,predicate=ml_ces:entity/interacted,sort=nearest] if data entity @s interaction at @s run function ml_ces:system/event/player/interact/check with storage ml_ces:logic data.event.player.interact.execute

data remove storage ml_ces:logic data.event.player.interact.execute
