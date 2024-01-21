## function ml_aj:ai/damage/apply
## aj.rig_root entity context

$execute on passengers run function animated_java:$(name)/zzzzzzzz/apply_variant/$(d_variant)/as_bone

function ml_ces:event/schedule/clear {event:"ml_aj.damage_variant"}
function ml_ces:event/schedule/set_named {time:12,measure:"t",command:"function ml_aj:model/reset_variant",event:"ml_aj.damage_variant"}
