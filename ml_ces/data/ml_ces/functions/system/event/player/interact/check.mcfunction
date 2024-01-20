## function ml_ces:system/event/player/interact/start

#Make sure we have the correct player that interacted with the entity
scoreboard players set @s ml_ces.temp 0
$execute store success score @s ml_ces.temp on target if data entity @s {UUID:$(source)}
execute if score @s ml_ces.temp matches 0 run return 0

data modify storage ml_ces:logic data.event.player.interact.execute.target set from entity @s UUID
function ml_ces:system/event/player/interact/execute with storage ml_ces:logic data.event.player.interact.execute
data modify entity @s interaction.player set value [I;0,0,0,0]
