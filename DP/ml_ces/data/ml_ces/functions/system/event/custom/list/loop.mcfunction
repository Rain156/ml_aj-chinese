## function ml_ces:system/event/custom/list/start
## function ml_ces:system/event/custom/list/loop

data modify storage ml_ces:logic data.event.custom.list.name set from storage ml_ces:logic data.event.custom.list.copy[-1].id
execute unless data storage ml_ces:logic {data:{event:{custom:{list:{name:""}}}}} run function ml_ces:system/event/custom/list/combine with storage ml_ces:logic data.event.custom.list

data remove storage ml_ces:logic data.event.custom.list.copy[-1]
execute if data storage ml_ces:logic data.event.custom.list.copy[-1] run function ml_ces:system/event/custom/list/loop
