## function ml_aj:model/chat/display
## aj.rig_root entity context
## "id": The model's UUID string
## "name": The model name

$execute if function ml_aj:model/is_outdated run data modify storage ml_aj:logic data.player.temp.outdated set value [{"text":"  |  "},{"text":" [*重载模型*] ","color":"#f2d1a2","hoverEvent":{"action":"show_text","contents":"重载这个旧的AJ模型"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/reload {id:\"$(id)\",name:\"$(name)\"}"}}]

data remove entity @s item.tag.data.vehicle_temp
data remove entity @s item.tag.data.vehicle_set
data modify storage ml_aj:logic data.player.temp.badge set from entity @s item.tag.data.badge
data modify storage ml_aj:logic data.player.temp.name set from entity @s item.tag.data.name
data modify storage ml_aj:logic data.player.temp.mob_name set from entity @s item.tag.data.mob_name
data modify storage ml_aj:logic data.player.temp.suggest set from entity @s item.tag.data.mob_name_raw

execute if data entity @s item.tag.data.variant run data modify storage ml_aj:logic data.player.temp.variant set from entity @s item.tag.data.variant
execute unless data entity @s item.tag.data.auto_reload run data modify storage ml_aj:logic data.player.temp.auto set value "False"

#Pet Owner
execute if entity @s[tag=ml_aj.is_pet] if data entity @s item.tag.data.owner run data modify storage ml_aj:logic data.player.temp.owner set from entity @s item.tag.data.owner
$execute if entity @s[tag=ml_aj.is_pet] if data entity @s item.tag.data.owner run data modify storage ml_aj:logic data.player.temp.pet_remove set value [{"text":"  | "},{"text":" [删除] ","color":"red","hoverEvent":{"action":"show_text","contents":"删除此宠物的所有者"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/pet_remove {id:\"$(id)\"}"}}]
