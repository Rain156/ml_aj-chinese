## player context
## "id": The model's UUID string
## "anim": The target animation
## "name": The new name

$data modify storage ml_aj:logic data.temp.anim_set set value {result:0,model:"",anim:"$(anim)",name:"$(name)",blank:""}
$execute as $(id) run data modify storage ml_aj:logic data.temp.anim_set.model set from entity @s item.tag.data.name
$execute as $(id) run function ml_aj:model/chat/anim/set_anim_final with storage ml_aj:logic data.temp.anim_set

$function ml_aj:model/chat/anim/display {id:"$(id)"}

$execute if data storage ml_aj:logic {data:{temp:{anim_set:{result:0}}}} unless data storage ml_aj:logic {data:{temp:{anim_set:{blank:"$(name)"}}}} run tellraw @s [{"text":"\n","color":"red"},{"text":"未找到名称为: "},{"text":"$(name)","color":"gold"},{"text":" 的动画 \n不存在的动画将无法应用于模型的 "},{"text":"$(anim)","color":"gold"},{"text":" 动画\n"}]
