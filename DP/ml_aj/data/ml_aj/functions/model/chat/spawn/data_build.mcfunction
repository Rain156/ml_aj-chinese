## aj.rig_root entity context

function ml_aj:model/chat/spawn/save_build
data remove storage ml_aj:logic data.spawn.temp.save_name

data modify storage ml_aj:logic data.player.temp.suggest set from storage ml_aj:logic data.spawn.temp
function ml_aj:system/data/safe_suggest

data remove storage ml_aj:logic data.spawn.temp
