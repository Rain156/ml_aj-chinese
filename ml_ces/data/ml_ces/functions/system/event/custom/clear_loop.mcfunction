## function ml_ces:system/event/custom/clear_entity
## function ml_ces:system/event/custom/clear_loop
## Store entity uuid in ml_ces:logic data.event.temp

data modify storage ml_ces:logic data.event.temp.id set from storage ml_ces:logic data.event.custom.clear[-1].id
function ml_ces:system/event/custom/clear with storage ml_ces:logic data.event.temp
data remove storage ml_ces:logic data.event.custom.clear[-1]

#Loop through all custom events if any left
execute if data storage ml_ces:logic data.event.custom.clear[-1] run function ml_ces:system/event/custom/clear_loop
