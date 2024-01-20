## player context
## "id": The model's UUID string
## "index": The animation index

$execute as $(id) run function ml_aj:model/chat/anim/attack/preview_final with entity @s item.tag.data.anims.attack[$(index)]

$function ml_aj:model/chat/anim/attack/display {id:"$(id)",index:$(index)}
