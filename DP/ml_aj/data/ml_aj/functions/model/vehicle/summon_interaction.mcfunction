## function ml_aj:model/vehicle/summon_final
## new interaction entity context

data merge entity @s {Tags:[ml_aj.vehicle_interact,ml_aj.entity],response:0b,width:1f,height:-2f}
ride @s mount @e[tag=ml_aj.vehicle_temp,limit=1,sort=nearest]
