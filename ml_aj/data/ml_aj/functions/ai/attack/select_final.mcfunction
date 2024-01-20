## function ml_aj:ai/attack/select
## aj.rig_root entity context
## "max": The maximum index

$execute store result storage ml_aj:logic data.temp.ai.target int 1 run random value 0..$(max)
function ml_aj:ai/attack/select_anim with storage ml_aj:logic data.temp.ai
