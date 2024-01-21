## player context
## "name": The new custom name

execute if data entity @s {Inventory:[{tag:{data:{item:"ml_aj.edit",item_data:""}}}]} run return 0

data modify storage ml_aj:logic data.player.temp set value {id:""}
data modify storage ml_aj:logic data.player.temp.id set from entity @s Inventory[{tag:{data:{item:"ml_aj.edit"}}}].tag.data.item_data

$data modify storage ml_aj:logic data.text.interpret.input set value '$(name)'
execute if data storage ml_aj:logic {data:{text:{interpret:{input:'在此处设置名称'}}}} run data modify storage ml_aj:logic data.text.interpret.input set value ''
function ml_aj:system/data/json/get_json

function ml_aj:model/chat/set_name with storage ml_aj:logic data.player.temp
