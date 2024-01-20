## Play an attack for a model
## aj.rig_root entity context
## "name": The attack animation name
## "entity": The entity selector

execute if entity @s[tag=ml_aj.attacking] run return 0
execute if entity @s[tag=ml_aj.dying] run return 0

scoreboard players set @s ml_aj.temp 0

#Find the animation
data modify storage ml_aj:logic data.temp.ai set value {true:1,now:0,revert:-1,anim:{time:0}}
$data modify storage ml_aj:logic data.temp.ai.anim merge from entity @s item.tag.data.anims.attack[{name:"$(name)"}]
$data modify storage ml_aj:logic data.temp.ai.anim.anim set value "$(name)"
$data modify storage ml_aj:logic data.temp.ai.anim.entity set value "$(entity)"

execute if data storage ml_aj:logic {data:{temp:{ai:{anim:{time:0}}}}} run scoreboard players set @s ml_aj.temp -1

#Run the attack
execute unless score @s ml_aj.temp matches -1 store result score @s ml_aj.temp at @s run function ml_aj:ai/attack/custom/execute with storage ml_aj:logic data.temp.ai.anim

$execute if score @s ml_aj.temp matches -1 run tellraw @a[tag=debug] [{"text":"\n","color":"red"},{"text":"Failed to play the "},{"text":"$(name)","color":"gold"},{"text":" attack for the target model "},{"selector":"@s","color":"gold"},{"text":".\n"}]
