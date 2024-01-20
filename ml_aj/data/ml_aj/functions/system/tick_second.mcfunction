## function ml_aj:system/tick

#Ran every two seconds

scoreboard players set #ml_aj_counter ml_aj.global 0

#Check for outdated/out of range rig models
function ml_aj:model/scan
