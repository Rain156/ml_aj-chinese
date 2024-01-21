## function ml_ces:system/event/player/attack/start

#Make sure we have the correct player that attacked the entity
scoreboard players set @s ml_ces.temp 0
$execute store success score @s ml_ces.temp on attacker if data entity @s {UUID:$(source)}
execute if score @s ml_ces.temp matches 0 run return 0

data modify storage ml_ces:logic data.event.player.attack.execute.target set from entity @s UUID
function ml_ces:system/event/player/attack/execute with storage ml_ces:logic data.event.player.attack.execute
data modify entity @s attack.player set value [I;0,0,0,0]
