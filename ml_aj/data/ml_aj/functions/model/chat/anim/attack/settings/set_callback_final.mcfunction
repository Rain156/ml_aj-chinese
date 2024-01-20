## aj.rig_root context
## "index": The attack animation index

$execute unless data entity @s item.tag.data.anims.attack[$(index)].cmd_time run data modify entity @s item.tag.data.anims.attack[$(index)].cmd_time set value 0
$execute unless data entity @s item.tag.data.anims.attack[$(index)].cmd_entity run data modify entity @s item.tag.data.anims.attack[$(index)].cmd_entity set value 0
