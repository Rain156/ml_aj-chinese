## function ml_aj:model/reload/check
## aj.rig_root entity context

data modify storage ml_aj:logic data.model.outdated append value {id:""}
data modify storage ml_aj:logic data.model.outdated[-1].id set from entity @s item.tag.data.id
