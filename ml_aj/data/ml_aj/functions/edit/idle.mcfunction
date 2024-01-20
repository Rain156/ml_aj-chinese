## player context
## "name": The new idle name

execute if data entity @s {Inventory:[{tag:{data:{item:"ml_aj.edit",item_data:""}}}]} run return 0

$data modify storage ml_aj:logic data.player.temp set value {id:"",anim:"idle",name:"$(name)"}
data modify storage ml_aj:logic data.player.temp.id set from entity @s Inventory[{tag:{data:{item:"ml_aj.edit"}}}].tag.data.item_data
execute if data storage ml_aj:logic {data:{player:{temp:{name:"Set Name Here"}}}} run data modify storage ml_aj:logic data.player.temp.name set value ""

function ml_aj:model/chat/anim/set_anim with storage ml_aj:logic data.player.temp
