## ml_aj.vehicle entity context

data modify entity @s Glowing set value 1b

function ml_ces:event/schedule/clear {event:"ml_aj.scale_visual"}
function ml_ces:event/schedule/set_named {time:15,measure:"s",command:"data modify entity @s Glowing set value 0b",event:"ml_aj.scale_visual"}
