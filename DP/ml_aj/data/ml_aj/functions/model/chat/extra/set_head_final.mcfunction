## aj.rig_root entity context
## "head": The head bone name

$data modify entity @s item.tag.data.head set value "$(head)"
function ml_aj:model/setup/head_update with entity @s item.tag.data
