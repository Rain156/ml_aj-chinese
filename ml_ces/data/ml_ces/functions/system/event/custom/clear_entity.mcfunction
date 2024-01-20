## function ml_ces:event/entity_clear

data modify storage ml_ces:logic data.event.custom.clear set from storage ml_ces:logic data.event.custom.current
function ml_ces:system/event/custom/clear_loop
data remove storage ml_ces:logic data.event.custom.clear
data remove storage ml_ces:logic data.event.custom.clear_listener
