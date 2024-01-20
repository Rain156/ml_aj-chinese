## function ml_aj:ai/attack/cancel
## aj.rig_root entity context
## "cancel": The event to cancel on targets

$execute as @a run function ml_ces:event/schedule/clear {event:"$(cancel)"}
