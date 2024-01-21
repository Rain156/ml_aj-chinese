## player context
## "id": The model's UUID string
## "select": The selection type

data modify storage ml_aj:logic data.player.temp.select set value "随机执行"
$execute if data storage ml_aj:logic {data:{player:{temp:{select:"$(select)"}}}} as $(id) run data modify entity @s item.tag.data.anims.attack_i set value 0
$execute unless data storage ml_aj:logic {data:{player:{temp:{select:"$(select)"}}}} as $(id) run data modify entity @s item.tag.data.anims.attack_i set value -1

$function ml_aj:model/chat/anim/attack/display {id:"$(id)"}
