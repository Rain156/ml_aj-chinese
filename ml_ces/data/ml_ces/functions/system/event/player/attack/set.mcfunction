## function ml_ces:event/player/attack/set

$execute unless data storage ml_ces:logic data.event.player.attack.current[{"id":$(id)}] run data modify storage ml_ces:logic data.event.player.attack.current append value {"id":$(id),"command":""}
$data modify storage ml_ces:logic data.event.player.attack.current[{"id":$(id)}].command set value '$(command)'
