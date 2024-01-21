## Get the distance of two angles
## Place inputs in #ml_temp ml_aj.calc.y1 (source) and #ml_temp ml_aj.calc.y2 (target)
## Output remains in #ml_temp ml_aj.calc.y1

scoreboard players operation #ml_temp ml_aj.calc.y1 -= #ml_temp ml_aj.calc.y2
execute if score #ml_temp ml_aj.calc.y1 matches ..-181 run scoreboard players add #ml_temp ml_aj.calc.y1 360
execute if score #ml_temp ml_aj.calc.y1 matches 180.. run scoreboard players remove #ml_temp ml_aj.calc.y1 360
execute if score #ml_temp ml_aj.calc.y1 matches ..-1 run scoreboard players operation #ml_temp ml_aj.calc.y1 *= #ml_aj_negate ml_aj.global
