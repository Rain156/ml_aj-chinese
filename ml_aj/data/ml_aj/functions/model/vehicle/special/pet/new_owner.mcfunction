## function ml_aj:model/vehicle/tick/10_pet
## ml_aj.vehicle entity context

data modify storage ml_aj:logic data.temp.ai.owner.owner set from entity @s Owner
function ml_aj:model/execute {command:"function ml_aj:model/vehicle/special/pet/new_owner_final with storage ml_aj:logic data.temp.ai.owner"}
