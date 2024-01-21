## function ml_ces:system/event/custom/list/loop

$data modify storage ml_ces:logic data.event.custom.list.output set value "$(output) | '$(name)' "
