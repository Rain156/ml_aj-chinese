## function ml_ces:event/player/look_at/clear

#If the entity has a look away event, a dummy look at event is needed
scoreboard players set @s ml_ces.temp 0
$data modify storage ml_ces:logic data.event.player.look_at.current[{"id":$(id)}].command set value ""
$execute if data storage ml_ces:logic data.event.player.look_away.current[{"id":$(id)}] store success score @s ml_ces.temp run data modify storage ml_ces:logic data.event.player.look_at.current[{"id":$(id)}].command set value "execute if entity @s[tag=ml_ces.dummy_command]"

execute if score @s ml_ces.temp matches 1 run return 0

$data remove storage ml_ces:logic data.event.player.look_at.current[{"id":$(id)}]
