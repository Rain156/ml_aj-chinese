## function ml_aj:system/tick_second

execute as @e[tag=ml_aj.initialized] at @s run function ml_aj:model/scan_final
function ml_aj:model/reload/check
