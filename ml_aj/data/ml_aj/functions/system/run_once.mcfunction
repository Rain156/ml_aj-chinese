## function ml_aj:system/load

#Only runs once

gamerule commandBlockOutput false

function ml_aj:system/data/trig/init

function ml_ces:system/event/player/interact/set_generic {command:"function ml_aj:player/interact/check"}
function ml_ces:system/event/player/attack/set_generic {command:"function ml_aj:player/attack/check"}
