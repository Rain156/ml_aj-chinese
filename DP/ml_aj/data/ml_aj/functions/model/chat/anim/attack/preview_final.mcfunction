## aj.rig_root entity context
## "name": The animation name
## "time": The animation time

function ml_aj:model/animation/stop
$function ml_aj:model/animation/action/attack {anim:"$(name)",time:$(time)}
function ml_ces:event/schedule/clear {event:"ml_aj.attack_preview"}
$function ml_ces:event/schedule/set_named {time:$(time),measure:"t",command:"function ml_aj:model/animation/setup/reset_to_idle",event:"ml_aj.attack_preview"}
