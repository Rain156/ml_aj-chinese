## function ml_aj:model/vehicle/tick/10
## aj.rig_root entity context

execute if data storage ml_aj:logic {data:{temp:{rig:{sitting:2b}}}} run function ml_aj:model/vehicle/special/pet/stand
execute if data storage ml_aj:logic {data:{temp:{rig:{sitting:1b}}}} run function ml_aj:model/vehicle/special/pet/sit
