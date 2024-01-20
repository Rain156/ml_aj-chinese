## function ml_aj:model/despawn/check
## aj.rig_root entity context

execute if entity @s[tag=ml_aj.dying] run return 1
execute if entity @s[tag=ml_aj.disabled] run return 1

execute if data entity @s {item:{tag:{data:{ds_type:1}}}} run function ml_aj:model/despawn/disable
execute if data entity @s {item:{tag:{data:{ds_type:0}}}} run function ml_aj:run/despawn

return 1
