## advancement ml_aj:player/reposition
## player context

advancement revoke @s only ml_aj:player/reposition

execute unless data entity @s Inventory[{tag:{data:{item:"ml_aj.edit"}}}] run function ml_aj:player/interact/model/release

execute if entity @s[tag=ml_aj.model_move] run function ml_aj:player/interact/model/move_final with entity @s Inventory[{tag:{data:{item:"ml_aj.edit"}}}].tag.data.reposition
