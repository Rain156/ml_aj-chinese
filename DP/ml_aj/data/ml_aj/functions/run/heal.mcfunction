## Add to the mob's current health
## aj.rig_root entity context
## "amount": The amount to heal by

$data modify storage ml_aj:logic data.temp.damage.amount set value $(amount)f

#Amount must be negated to use in damage function
execute store result score @s ml_aj.number run data get storage ml_aj:logic data.temp.damage.amount 10
execute store result storage ml_aj:logic data.temp.damage.amount float 0.1 run scoreboard players operation @s ml_aj.number *= #ml_aj_negate ml_aj.global

function ml_aj:ai/damage/apply_update
