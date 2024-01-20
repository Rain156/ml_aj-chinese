## Set the damage variant for a model
## player context
## "name": The variant name

execute if data entity @s {Inventory:[{tag:{data:{item:"ml_aj.edit",item_data:""}}}]} run return 0

$data modify storage ml_aj:logic data.player.temp.variant set value {id:"",name:"",variant:"$(name)"}
data modify storage ml_aj:logic data.player.temp.variant.id set from entity @s Inventory[{tag:{data:{item:"ml_aj.edit"}}}].tag.data.item_data

function ml_aj:model/chat/vehicle/set_d_variant with storage ml_aj:logic data.player.temp.variant
