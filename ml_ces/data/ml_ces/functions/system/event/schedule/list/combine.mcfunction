## function ml_ces:system/event/schedule/list/loop

$data modify storage ml_ces:logic data.schedule.list.output set value "$(output) | '$(name)' "
