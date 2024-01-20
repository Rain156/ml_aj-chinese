## player context
## "id": The model's UUID string
## "index": The animation index
## "name": The anim name

$data modify storage ml_aj:logic data.temp.anim set value {result:0,model:"",index:$(index),name:"$(name)"}
$execute as $(id) run data modify storage ml_aj:logic data.temp.anim.model set from entity @s item.tag.data.name
$execute as $(id) run function ml_aj:model/chat/anim/attack/settings/set_name_final with storage ml_aj:logic data.temp.anim

$function ml_aj:model/chat/anim/attack/settings/display {id:"$(id)",index:$(index)}

$execute if data storage ml_aj:logic {data:{temp:{anim:{result:0}}}} run tellraw @s [{"text":"","color":"red"},{"text":"\n未能在名为: "},{"storage":"ml_aj:logic","nbt":"data.temp.anim_set.model","color":"gold"},{"text":" 的模型中找到叫做 "},{"text":"$(name)","color":"gold"},{"text":" 的动画.\n"}]
