## player context
## 'cmd': The command to set

execute if data entity @s {Inventory:[{tag:{data:{item:"ml_aj.edit",item_data:""}}}]} run return 0

$data modify storage ml_aj:logic data.player.temp set value {id:"",cmd:'$(cmd)'}
data modify storage ml_aj:logic data.player.temp.id set from entity @s Inventory[{tag:{data:{item:"ml_aj.edit"}}}].tag.data.item_data
execute if data storage ml_aj:logic {data:{player:{temp:{cmd:'Set Command Here'}}}} run data modify storage ml_aj:logic data.player.temp.cmd set value ''

#Check if function begins with /
scoreboard players set @s ml_aj.temp 0
data modify storage ml_aj:logic data.text.check set string storage ml_aj:logic data.player.temp.cmd 0 1
execute store success score @s ml_aj.temp run data modify storage ml_aj:logic data.text.check set value "/"
execute if score @s ml_aj.temp matches 0 run data modify storage ml_aj:logic data.player.temp.cmd set string storage ml_aj:logic data.player.temp.cmd 1

function ml_aj:model/chat/extra/set_death with storage ml_aj:logic data.player.temp
