## aj.rig_root entity context
## "bar_color": The color id

$data modify entity @s item.tag.data.bar_color set value $(bar_color)
data modify entity @s item.Count set value 1b
$data modify entity @s item.id set from storage ml_aj:logic data.menu.colors[{color:$(bar_color)}].block
