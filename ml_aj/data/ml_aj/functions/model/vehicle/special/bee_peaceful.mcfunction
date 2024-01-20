## function ml_aj:model/vehicle/special/bee
## ml_aj.vehicle entity context

data merge entity @s {AngerTime:-400,AngryAt:[I;0,0,0,0]}
attribute @s minecraft:generic.follow_range base set 0
function ml_ces:event/schedule/set {time:3,measure:"t",command:'attribute @s minecraft:generic.follow_range base set 16'}
