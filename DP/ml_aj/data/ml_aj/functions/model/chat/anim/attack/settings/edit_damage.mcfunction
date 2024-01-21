## player context
## "id": The model's UUID string
## "index": The animation index
## "damage": The damage amount
## "action": The current action

#Projectile doesn't use damage setting
$execute unless data entity $(id) item.tag.data.anims.attack[$(index)].proj run function ml_aj:model/chat/anim/attack/settings/edit_damage_final {id:"$(id)",index:$(index),damage:$(damage),action:$(action)}

$function ml_aj:model/chat/anim/attack/settings/display {id:"$(id)",index:$(index)}
