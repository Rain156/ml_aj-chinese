## player context
## "id": The model's UUID string
## "name": The anim name

$data modify storage ml_aj:logic data.temp.anim_set set value {result:0,model:"",name:"$(name)",blank:""}
$execute as $(id) run data modify storage ml_aj:logic data.temp.anim_set.model set from entity @s item.tag.data.name
$execute as $(id) run function ml_aj:model/chat/anim/custom/add_final with storage ml_aj:logic data.temp.anim_set

$function ml_aj:model/chat/anim/custom/display {id:"$(id)"}

$execute if data storage ml_aj:logic {data:{temp:{anim_set:{result:0}}}} unless data storage ml_aj:logic {data:{temp:{anim_set:{blank:"$(name)"}}}} run tellraw @s [{"text":"","color":"red"},{"text":"\n未能在名为: "},{"storage":"ml_aj:logic","nbt":"data.temp.anim_set.model","color":"gold"},{"text":" 的模型中找到叫做 "},{"text":"$(name)","color":"gold"},{"text":" 的动画.\n"}]
