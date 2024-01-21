## player context
## "nbt": The mob nbt data

execute if data entity @s {Inventory:[{tag:{data:{item:"ml_aj.edit",item_data:""}}}]} run return 0

$data modify storage ml_aj:logic data.player.temp set value {id:"",nbt:$(nbt)}
data modify storage ml_aj:logic data.player.temp.id set from entity @s Inventory[{tag:{data:{item:"ml_aj.edit"}}}].tag.data.item_data

function ml_aj:model/chat/vehicle/set_prop with storage ml_aj:logic data.player.temp
