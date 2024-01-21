## function ml_ces:event/schedule/set

$execute unless data storage ml_ces:logic data.schedule.current[{"id":$(id)}] run data modify storage ml_ces:logic data.schedule.current append value {"id":$(id),"values":[]}
$data modify storage ml_ces:logic data.schedule.current[{"id":$(id)}].values append value {"command":'$(command)',"name":"$(name)","target":[I;0,0,0,0]}
$data modify storage ml_ces:logic data.schedule.current[{"id":$(id)}].values[-1].target set from entity @s UUID
