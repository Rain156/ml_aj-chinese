## player context
## "name": The attack animation name

execute if data entity @s {Inventory:[{tag:{data:{item:"ml_aj.edit",item_data:""}}}]} run return 0

$data modify storage ml_aj:logic data.player.temp set value {id:"",name:"$(name)"}
data modify storage ml_aj:logic data.player.temp.id set from entity @s Inventory[{tag:{data:{item:"ml_aj.edit"}}}].tag.data.item_data
execute if data storage ml_aj:logic {data:{player:{temp:{name:"在此处设置名称"}}}} run data modify storage ml_aj:logic data.player.temp.name set value ""

function ml_aj:model/chat/anim/attack/add with storage ml_aj:logic data.player.temp
