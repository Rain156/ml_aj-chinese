## function ml_aj:run/target
## target entity context

#Return if a target has already been set
execute if data storage ml_aj:logic data.temp.attack.id run return 0

data modify storage ml_aj:logic data.temp.attack.id set from entity @s UUID
function ml_ces:system/data/uuid/convert

return 1
