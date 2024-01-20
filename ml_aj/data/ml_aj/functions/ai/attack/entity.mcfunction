## function ml_aj:ai/attack/execute
## target entity context
## "entity": The attacker entity's UUID string
## "impact": The impact time
## "damage": The damage amount
## "rnd": A random number

$execute if data storage ml_aj:logic {data:{temp:{ai:{now:$(impact)}}}} run damage @s $(damage) minecraft:mob_attack by $(entity)
$execute unless data storage ml_aj:logic {data:{temp:{ai:{now:$(impact)}}}} run function ml_ces:event/schedule/set_named {time:$(impact),measure:"t",command:"damage @s $(damage) minecraft:mob_attack by $(entity)",event:"$(rnd)"}
