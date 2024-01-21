## function ml_aj:ai/attack/execute
## aj.rig_root entity context
## "time": The animation time
## "cooldown": The cooldown time

$scoreboard players set @s ml_aj.cooldown $(cooldown)
$scoreboard players add @s ml_aj.cooldown $(time)
