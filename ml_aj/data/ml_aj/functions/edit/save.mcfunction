## player context
## "name": The new save name

execute if data entity @s {Inventory:[{tag:{data:{item:"ml_aj.edit",item_data:""}}}]} run return 0

$data modify storage ml_aj:logic data.player.temp set value {id:"",name:"$(name)"}
data modify storage ml_aj:logic data.player.temp.id set from entity @s Inventory[{tag:{data:{item:"ml_aj.edit"}}}].tag.data.item_data

function ml_aj:model/chat/spawn/set_name with storage ml_aj:logic data.player.temp
