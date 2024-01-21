## function ml_ces:event/schedule/list/named

data modify storage ml_ces:logic data.schedule.list.output set value ""
data modify storage ml_ces:logic data.schedule.list.title set value "named scheduled events"
data modify storage ml_ces:logic data.schedule.list.copy set from storage ml_ces:logic data.schedule.current
execute if data storage ml_ces:logic data.schedule.current[0] run function ml_ces:system/event/schedule/list/loop

execute if data storage ml_ces:logic {data:{schedule:{list:{output:""}}}} run function ml_ces:system/event/schedule/list/none
data remove storage ml_ces:logic data.schedule.list.copy
data remove storage ml_ces:logic data.schedule.list.copy_sub

execute unless data storage ml_ces:logic {data:{schedule:{list:{output:""}}}} run function ml_ces:system/event/list_output with storage ml_ces:logic data.schedule.list
