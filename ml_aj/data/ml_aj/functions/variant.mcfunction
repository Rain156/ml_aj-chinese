## Set the variant for a model
## player context
## "id": The model id
## "name": The variant name

scoreboard players set @s ml_aj.temp 0
$data modify storage ml_aj:logic data.player.temp.variant set value {name:"",variant:"$(name)"}
$execute as @e[tag=aj.rig_root] if data entity @s {item:{tag:{data:{badge:$(id)}}}} run data modify storage ml_aj:logic data.player.temp.variant.name set from entity @s item.tag.data.name
execute if data storage ml_aj:logic {data:{player:{temp:{variant:{variant:""}}}}} run data modify storage ml_aj:logic data.player.temp.variant.variant set value "default"

$execute store result score @s ml_aj.temp as @e[tag=aj.rig_root] if data entity @s {item:{tag:{data:{badge:$(id)}}}} run function ml_aj:model/setup/variant with storage ml_aj:logic data.player.temp.variant

$execute if score @s ml_aj.temp matches 0 run tellraw @s [{"text":"\n","color":"red"},{"text":"未能在模型ID为: "},{"text":"$(id)","color":"gold"},{"text":" 的模型中找到名为: "},{"text":"$(name)","color":"gold"},{"text":". 的模型变体\n可能是此变体并不存在,也可能是您在导出模型时并未在项目设置中勾选“Include Apply Variant Functions“选项"}]

$execute as @e[tag=aj.rig_root] if data entity @s {item:{tag:{data:{badge:$(id)}}}} run data modify storage ml_aj:logic data.player.temp.id set from entity @s item.tag.data.id
execute unless score @s ml_aj.temp matches 0 as @p[tag=ml_aj.editor,distance=..1] run function ml_aj:model/chat/display with storage ml_aj:logic data.player.temp
