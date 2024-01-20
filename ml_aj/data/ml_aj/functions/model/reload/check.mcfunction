## function ml_aj:system/load

execute if data storage ml_aj:logic data.model.reloading run return 0

schedule clear ml_aj:model/reload/loop
execute if data storage ml_aj:logic data.model.outdated[0] run function ml_aj:model/reload/check_final
