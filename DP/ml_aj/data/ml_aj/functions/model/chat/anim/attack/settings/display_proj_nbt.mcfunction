## function ml_aj:model/chat/anim/attack/settings/display_final
## aj.rig_root entity context
## "proj_nbt": The projectile nbt suggest text

$data modify storage ml_aj:logic data.player.temp.proj_nbt set value '$(proj_nbt)'
data modify storage ml_aj:logic data.player.temp.suggest set string storage ml_aj:logic data.player.temp.proj_nbt
function ml_aj:system/data/safe_suggest
data modify storage ml_aj:logic data.player.temp.proj_suggest set from storage ml_aj:logic data.player.temp.suggest
