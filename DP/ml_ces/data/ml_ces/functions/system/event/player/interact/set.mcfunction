## function ml_ces:event/player/interact/set

$execute unless data storage ml_ces:logic data.event.player.interact.current[{"id":$(id)}] run data modify storage ml_ces:logic data.event.player.interact.current append value {"id":$(id),"command":""}
$data modify storage ml_ces:logic data.event.player.interact.current[{"id":$(id)}].command set value '$(command)'
