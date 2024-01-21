## function ml_aj:ai/attack/execute
## ml_aj.vehicle entity context

execute store result storage ml_aj:logic data.temp.ai.anim.random int 1 run random value -5..5
#In case of scheduled impact time, use a random id to target the entity
execute store result storage ml_aj:logic data.temp.ai.anim.target_id int 1 run random value 0..10000
execute store result storage ml_aj:logic data.temp.ai.anim.speed float 0.01 run data get storage ml_aj:logic data.temp.ai.anim.proj_speed

function ml_aj:ai/attack/projectile_target with storage ml_aj:logic data.temp.ai.anim
