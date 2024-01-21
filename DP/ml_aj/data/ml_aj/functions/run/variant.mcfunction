## Set the variant for a model
## aj.rig_root entity context
## "name": The variant name

scoreboard players set @s ml_aj.temp 0
$data modify storage ml_aj:logic data.player.temp.variant set value {name:"",variant:"$(name)"}
data modify storage ml_aj:logic data.player.temp.variant.name set from entity @s item.tag.data.name
execute if data storage ml_aj:logic {data:{player:{temp:{variant:{variant:""}}}}} run data modify storage ml_aj:logic data.player.temp.variant.variant set value "default"

execute store result score @s ml_aj.temp run function ml_aj:model/setup/variant with storage ml_aj:logic data.player.temp.variant

$execute if score @s ml_aj.temp matches 0 run tellraw @a[tag=debug] [{"text":"\n","color":"red"},{"text":"未能成功加载模型: "},{"text":"$(name)","color":"gold"},{"text":" 的变体 "},{"selector":"@s","color":"gold"},{"text":". Either the variant does not exist, or you need to check the Include Apply Variant Functions option in your Animated Java Project Settings when exporting the model.\n"}]
