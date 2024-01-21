## function ml_aj:model/chat/anim/attack/settings/display_final
## aj.rig_root entity context
## "prop": The properties suggest text

$data modify storage ml_aj:logic data.player.temp.prop set value $(prop)

data modify storage ml_aj:logic data.player.temp.suggest set from storage ml_aj:logic data.player.temp.prop
function ml_aj:system/data/safe_suggest
data modify storage ml_aj:logic data.player.temp.prop_suggest set from storage ml_aj:logic data.player.temp.suggest
