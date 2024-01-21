## function ml_aj:model/animation/resume
## aj.rig_root entity context
## "play_time": The remaining play time

$function ml_ces:event/schedule/set_named {time:$(play_time),measure:"t",command:"function ml_aj:model/animation/custom/play_end",event:"ml_aj.custom_anim"}
