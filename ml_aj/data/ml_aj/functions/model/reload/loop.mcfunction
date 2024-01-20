## function ml_aj:model/reload/check_final
## function ml_aj:model/reload/loop

function ml_aj:model/reload/loop_final with storage ml_aj:logic data.model.outdated[-1]

data remove storage ml_aj:logic data.model.outdated[-1]
execute if data storage ml_aj:logic data.model.outdated[0] run schedule function ml_aj:model/reload/loop 1t

execute unless data storage ml_aj:logic data.model.outdated[0] run function ml_aj:model/reload/final
