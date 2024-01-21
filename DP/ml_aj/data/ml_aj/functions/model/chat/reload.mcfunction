## player context
## "id": The model's UUID string
## "name": The model name

$execute as $(id) at @s run function ml_aj:model/reload/setup {name:"$(name)"}

function ml_aj:model/chat/display with storage ml_aj:logic data.temp.reload
