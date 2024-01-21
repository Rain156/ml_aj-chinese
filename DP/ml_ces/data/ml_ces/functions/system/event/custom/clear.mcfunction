## function ml_ces:event/custom/unregister

$data remove storage ml_ces:logic data.event.custom.current[{"id":"$(id)"}].listeners[{"id":$(uuid)}]
$execute unless data storage ml_ces:logic data.event.custom.current[{"id":"$(id)"}].listeners[0] run data remove storage ml_ces:logic data.event.custom.current[{"id":"$(id)"}]
