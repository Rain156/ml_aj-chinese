## function ml_ces:event/custom/register

$execute unless data storage ml_ces:logic data.event.custom.current[{"id":"$(id)"}].listeners[{"id":$(uuid)}] run data modify storage ml_ces:logic data.event.custom.current[{"id":"$(id)"}].listeners append value {"id":$(uuid),"command":""}
$data modify storage ml_ces:logic data.event.custom.current[{"id":"$(id)"}].listeners[{"id":$(uuid)}].command set value '$(command)'
