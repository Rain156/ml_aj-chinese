## Remove from the mob's current health
## aj.rig_root entity context
## "amount": The amount to remove

$data modify storage ml_aj:logic data.temp.damage.amount set value $(amount)f

function ml_aj:ai/damage/apply_update
