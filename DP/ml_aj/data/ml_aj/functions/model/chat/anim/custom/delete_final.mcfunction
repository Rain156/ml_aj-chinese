## function ml_aj:model/chat/anim/custom/delete
## aj.rig_root entity context
## "index": The custom animation index

function ml_aj:model/animation/stop
$data remove entity @s item.tag.data.anims.custom[$(index)]
