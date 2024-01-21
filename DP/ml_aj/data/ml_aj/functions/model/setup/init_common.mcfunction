## aj.rig_root entity context

function ml_aj:ai/health_bar/init
function ml_aj:model/chat/vehicle/set_color_final with entity @s item.tag.data

function ml_aj:model/setup/bones with entity @s item.tag.data
execute if data entity @s item.tag.data.head run function ml_aj:model/setup/head_update with entity @s item.tag.data
function ml_aj:model/setup/locator with entity @s item.tag.data
