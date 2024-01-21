## function ml_ces:system/data/uuid/cleanup
## function ml_ces:system/data/uuid/cleanup_loop

function ml_ces:system/data/uuid/cleanup_check with storage ml_ces:logic data.uuid.dictionary_copy[-1]
data remove storage ml_ces:logic data.uuid.dictionary_copy[-1]
execute if data storage ml_ces:logic data.uuid.dictionary_copy[0] run function ml_ces:system/data/uuid/cleanup_loop
