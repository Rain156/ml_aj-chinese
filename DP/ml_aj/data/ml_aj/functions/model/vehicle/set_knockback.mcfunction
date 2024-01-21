## ml_aj.vehicle entity context
## "no_knockback": If the mob has no knockback

$attribute @s minecraft:generic.knockback_resistance base set $(no_knockback)
$execute on passengers if entity @s[tag=ml_aj.hitbox] run attribute @s minecraft:generic.knockback_resistance base set $(no_knockback)
