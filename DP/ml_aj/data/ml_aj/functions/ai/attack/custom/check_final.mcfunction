## function ml_aj:ai/attack/custom/check_target
## aj.rig_root entity context

tag @s add ml_aj.targeting
execute if entity @s[tag=!ml_aj.attacking,tag=!ml_aj.dying] run function ml_aj:ai/attack/select

return 1
