## function ml_ces:event/custom/list/named

data modify storage ml_ces:logic data.event.custom.list.output set value ""
data modify storage ml_ces:logic data.event.custom.list.title set value "named custom events"
data modify storage ml_ces:logic data.event.custom.list.copy set from storage ml_ces:logic data.event.custom.current
execute if data storage ml_ces:logic data.event.custom.current[0] run function ml_ces:system/event/custom/list/loop

execute if data storage ml_ces:logic {data:{event:{custom:{list:{output:""}}}}} run function ml_ces:system/event/custom/list/none
data remove storage ml_ces:logic data.event.custom.list.copy

execute unless data storage ml_ces:logic {data:{event:{custom:{list:{output:""}}}}} run function ml_ces:system/event/list_output with storage ml_ces:logic data.event.custom.list
