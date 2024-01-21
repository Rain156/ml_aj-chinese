## function ml_aj:ai/attack/callback
## aj.rig_root entity context
## "time": The callback time
## "command": The callback command

$function ml_ces:event/schedule/set_named {time:$(time),measure:"t",command:'$(command)',event:"ml_aj.attack_callback"}
