## function ml_aj:ai/attack/callback
## target entity context
## "id": The model's UUID string
## "time": The callback time
## "command": The callback command
## "rnd": A random number

$function ml_ces:event/schedule/set_named {time:$(time),measure:"t",command:'function ml_aj:ai/attack/callback_delay {id:"$(id)",command:"$(command)"}',event:"$(rnd)"}
