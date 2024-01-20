## function ml_aj:ai/attack/execute
## target entity context
## "entity": The attacker entity's UUID string
## "impact": The impact time
## "damage": The damage amount
## "distance": The distance amount
## "dist_tick": The distance tick amount
## "dir": If the attack is directional
## "rnd": A random number

$execute if data storage ml_aj:logic {data:{temp:{ai:{true:$(dir)}}}} run function ml_ces:event/schedule/set_named {time:$(impact),measure:"t",command:'function ml_aj:ai/attack/entity_impact_dir {entity:"$(entity)",damage:$(damage),dist_tick:$(dist_tick)}',event:"$(rnd)"}
$execute unless data storage ml_aj:logic {data:{temp:{ai:{true:$(dir)}}}} run function ml_ces:event/schedule/set_named {time:$(impact),measure:"t",command:'function ml_aj:ai/attack/entity_impact_non_dir {entity:"$(entity)",damage:$(damage),dist_tick:$(dist_tick)}',event:"$(rnd)"}
