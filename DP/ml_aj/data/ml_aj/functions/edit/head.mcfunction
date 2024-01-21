## player context
## "name": The new head bone name

execute if data entity @s {Inventory:[{tag:{data:{item:"ml_aj.edit",item_data:""}}}]} run return 0

$data modify storage ml_aj:logic data.player.temp set value {id:"",head:"$(name)"}
data modify storage ml_aj:logic data.player.temp.id set from entity @s Inventory[{tag:{data:{item:"ml_aj.edit"}}}].tag.data.item_data
execute if data storage ml_aj:logic {data:{player:{temp:{head:""}}}} run data modify storage ml_aj:logic data.player.temp.head set value "h_head"

function ml_aj:model/chat/extra/set_head with storage ml_aj:logic data.player.temp
