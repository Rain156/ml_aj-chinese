## function ml_ces:event/tick/set

$execute unless data storage ml_ces:logic data.event.tick.current[{"id":$(id)}] run data modify storage ml_ces:logic data.event.tick.current prepend value {"id":$(id),"command":"","target":""}
$data modify storage ml_ces:logic data.event.tick.current[{"id":$(id)}].command set value '$(command)'

#Get the UUID hex value for targeting, unless one is supplied
function ml_ces:system/data/uuid/convert
$data modify storage ml_ces:logic data.event.tick.current[{"id":$(id)}].target set from storage ml_ces:logic data.uuid.output
