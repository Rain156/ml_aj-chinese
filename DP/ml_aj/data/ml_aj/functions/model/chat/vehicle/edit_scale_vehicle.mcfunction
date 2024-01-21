## ml_aj.vehicle entity context

execute store result entity @s Attributes[{Name:"minecraft:generic.scale"}].Base double 0.1 run data get storage ml_aj:logic data.temp.scale
execute on passengers if entity @s[tag=ml_aj.vehicle_interact] store result entity @s height float -0.2 run data get storage ml_aj:logic data.temp.scale
execute on passengers if entity @s[tag=ml_aj.vehicle_interact] store result entity @s width float 0.1 run data get storage ml_aj:logic data.temp.scale
