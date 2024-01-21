## function ml_ces:event/player/look_away/set

$execute unless data storage ml_ces:logic data.event.player.look_away.current[{"id":$(id)}] run data modify storage ml_ces:logic data.event.player.look_away.current append value {"id":$(id),"command":"","target":""}
$data modify storage ml_ces:logic data.event.player.look_away.current[{"id":$(id)}].command set value '$(command)'

#Get the UUID hex value for targeting
function ml_ces:system/data/uuid/convert
$data modify storage ml_ces:logic data.event.player.look_away.current[{"id":$(id)}].target set from storage ml_ces:logic data.uuid.output

#A look at event is needed in order to trigger the look away event
$execute if data storage ml_ces:logic data.event.player.look_at.current[{"id":$(id)}] run return 0

$data modify storage ml_ces:logic data.event.player.look_at.current append value {"id":$(id),"command":"execute if entity @s[tag=ml_ces.dummy_command]","target":""}
data modify storage ml_ces:logic data.event.player.look_at.current[-1].target set from storage ml_ces:logic data.uuid.output
