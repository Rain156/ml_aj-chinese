## function ml_ces:system/event/schedule/execute

$data modify storage ml_ces:logic data.schedule.execute set from storage ml_ces:logic data.schedule.current[{"id":$(id)}]
$data remove storage ml_ces:logic data.schedule.current[{"id":$(id)}]
execute if data storage ml_ces:logic data.schedule.execute summon minecraft:arrow run function ml_ces:system/event/arrow_execute {fn:"ml_ces:system/event/schedule/loop"}
