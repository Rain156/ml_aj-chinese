## function ml_aj:model/vehicle/tick/10
## ml_aj.vehicle entity context

execute unless data entity @s[tag=!ml_aj.has_target] {AngryAt:[I;0,0,0,0]} run function ml_aj:model/vehicle/special/bee_peaceful
data merge entity @s {CannotEnterHiveTicks:1000,HasStung:0b,HasNectar:0b,TicksSincePollination:0,FlowerPos:{X:0,Y:0,Z:0}}
