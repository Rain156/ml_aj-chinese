## function ml_aj:highlight
## aj.rig_root entity context

execute on passengers run data modify entity @s Glowing set value 1b
function ml_ces:event/schedule/clear {event:"ml_aj.highlight"}
function ml_ces:event/schedule/set_named {time:10,measure:"s",command:"execute on passengers run data modify entity @s Glowing set value 0b",event:"ml_aj.highlight"}

return 1
