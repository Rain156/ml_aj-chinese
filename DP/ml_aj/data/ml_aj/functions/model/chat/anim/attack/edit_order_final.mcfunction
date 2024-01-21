## aj.rig_root entity context
## "current": The current index
## "target": The target index

$data modify storage ml_aj:logic data.player.temp.anim set from entity @s item.tag.data.anims.attack[$(current)]
$data remove entity @s item.tag.data.anims.attack[$(current)]
$data modify entity @s item.tag.data.anims.attack insert $(target) from storage ml_aj:logic data.player.temp.anim
