## function ml_ces:system/event/schedule/list/loop
## function ml_ces:system/event/schedule/list/loop_sub

data modify storage ml_ces:logic data.schedule.list.name set from storage ml_ces:logic data.schedule.list.copy_sub[-1].name
data remove storage ml_ces:logic data.schedule.list.copy_sub[-1]

execute unless data storage ml_ces:logic {data:{schedule:{list:{name:""}}}} run function ml_ces:system/event/schedule/list/combine with storage ml_ces:logic data.schedule.list
execute if data storage ml_ces:logic data.schedule.list.copy_sub[-1] run function ml_ces:system/event/schedule/list/loop_sub
