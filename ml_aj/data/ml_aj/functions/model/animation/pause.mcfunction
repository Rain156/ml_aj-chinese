## aj.rig_root entity context
## "pause": The pause function name

$tag @s remove $(pause)
$data modify entity @s item.tag.data.temp.resume set value "$(pause)"
data remove entity @s item.tag.data.temp.pause
