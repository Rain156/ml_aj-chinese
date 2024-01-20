
execute on passengers if entity @s[type=minecraft:player] run ride @s dismount

ride @s dismount
data merge entity @s {Glowing:0b,Size:0}
execute on passengers run data merge entity @s {Glowing:0b,Size:0}
tp @s ~ -65 ~
execute on passengers run scoreboard players reset @s
execute on passengers run kill @s

scoreboard players reset @s
kill @s
