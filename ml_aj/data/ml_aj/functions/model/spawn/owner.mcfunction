## function ml_aj:model/spawn/init
## aj.rig_root entity context
## "owner": The owner name

$tag $(owner) add ml_aj.owner_target
function ml_aj:model/vehicle/execute {command:"function ml_aj:model/setup/owner_final"}
tag @a remove ml_aj.owner_target
