## function ml_aj:model/chat/anim/attack/check
## function ml_aj:model/chat/anim/attack/loop
## aj.rig_root entity context
## "index": The current index

$execute unless data entity @s item.tag.data.anims.attack[$(index)] run return 0

$data modify storage ml_aj:logic data.player.temp.loop.name set from entity @s item.tag.data.anims.attack[$(index)].name
function ml_aj:model/chat/anim/attack/loop_final with storage ml_aj:logic data.player.temp.loop

$scoreboard players set @s ml_aj.temp $(index)
execute store result storage ml_aj:logic data.player.temp.loop.index int 1 run scoreboard players add @s ml_aj.temp 1

function ml_aj:model/chat/anim/attack/loop with storage ml_aj:logic data.player.temp.loop

return 1
