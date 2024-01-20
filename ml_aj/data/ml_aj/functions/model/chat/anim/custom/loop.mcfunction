## function ml_aj:model/chat/anim/custom/check
## function ml_aj:model/chat/anim/custom/loop
## aj.rig_root entity context
## "index": The current index

$execute unless data entity @s item.tag.data.anims.custom[$(index)] run return 0

$data modify storage ml_aj:logic data.player.temp.loop.name set from entity @s item.tag.data.anims.custom[$(index)].name
function ml_aj:model/chat/anim/custom/loop_final with storage ml_aj:logic data.player.temp.loop

$scoreboard players set @s ml_aj.temp $(index)
execute store result storage ml_aj:logic data.player.temp.loop.index int 1 run scoreboard players add @s ml_aj.temp 1

function ml_aj:model/chat/anim/custom/loop with storage ml_aj:logic data.player.temp.loop

return 1
