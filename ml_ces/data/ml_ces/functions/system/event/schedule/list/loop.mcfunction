## function ml_ces:system/event/schedule/list/start
## function ml_ces:system/event/schedule/list/loop

data modify storage ml_ces:logic data.schedule.list.copy_sub set from storage ml_ces:logic data.schedule.list.copy[-1].values
execute if data storage ml_ces:logic data.schedule.list.copy_sub[0] run function ml_ces:system/event/schedule/list/loop_sub

data remove storage ml_ces:logic data.schedule.list.copy[-1]
execute if data storage ml_ces:logic data.schedule.list.copy[-1] run function ml_ces:system/event/schedule/list/loop
