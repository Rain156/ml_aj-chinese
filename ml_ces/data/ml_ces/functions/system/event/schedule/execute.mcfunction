## function ml_ces:event/schedule/set

execute store result storage ml_ces:logic data.schedule.timestamp.id int 1 run time query gametime
function ml_ces:system/event/schedule/start with storage ml_ces:logic data.schedule.timestamp
