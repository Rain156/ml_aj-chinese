## aj.rig_root entity context

execute if entity @s[tag=!ml_aj.attacking,tag=!ml_aj.dying] if entity @p[distance=..25] run function ml_aj:ai/attack/select
