## function ml_ces:event/player/look_at/set

$execute unless data storage ml_ces:logic data.event.player.look_at.current[{"id":$(id)}] run data modify storage ml_ces:logic data.event.player.look_at.current append value {"id":$(id),"command":"","target":""}
$data modify storage ml_ces:logic data.event.player.look_at.current[{"id":$(id)}].command set value '$(command)'

#Get the UUID hex value for targeting
function ml_ces:system/data/uuid/convert
$data modify storage ml_ces:logic data.event.player.look_at.current[{"id":$(id)}].target set from storage ml_ces:logic data.uuid.output
