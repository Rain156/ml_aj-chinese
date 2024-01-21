## Start the spawn process
## "name": The save name

data modify storage ml_aj:logic data.temp.spawn set value {model:"",data:{}}
$data modify storage ml_aj:logic data.temp.spawn.model set from storage ml_aj:logic data.spawn.models[{name:"$(name)"}].data.name
$data modify storage ml_aj:logic data.temp.spawn.data set from storage ml_aj:logic data.spawn.models[{name:"$(name)"}].data

$execute unless data storage ml_aj:logic data.spawn.models[{name:"$(name)"}] run function ml_aj:system/error/display {error:"未能生成具有保存名称的模型 名称: '$(name)'."}
$execute if data storage ml_aj:logic data.spawn.models[{name:"$(name)"}] run function ml_aj:model/spawn/found with storage ml_aj:logic data.temp.spawn

data remove storage ml_aj:logic data.temp.spawn
