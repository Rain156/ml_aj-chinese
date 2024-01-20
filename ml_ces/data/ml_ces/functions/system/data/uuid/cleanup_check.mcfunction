## function ml_ces:system/data/uuid/cleanup_loop

$execute as $(string) run data modify storage ml_ces:logic data.uuid.dictionary append from storage ml_ces:logic data.uuid.dictionary_copy[-1]
