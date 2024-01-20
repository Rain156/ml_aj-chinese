## function ml_aj:model/reload/setup_final
## function ml_aj:model/reload/setup_tags
## new aj.rig_root entity context
## "tag": The current tag

$execute unless data entity @s {Tags:["$(tag)"]} run tag @s add $(tag)

data remove storage ml_aj:logic data.temp.reload.tags[-1]
data modify storage ml_aj:logic data.temp.reload.tag set from storage ml_aj:logic data.temp.reload.tags[-1]
execute if data storage ml_aj:logic data.temp.reload.tags[0] run function ml_aj:model/reload/setup_tags with storage ml_aj:logic data.temp.reload
