## function ml_ces:system/load

data modify storage ml_ces:logic data set value {}
data modify storage ml_ces:logic data.event set value {"tick":{"current":[]},"custom":{"current":[]},"player":{"attack":{"current":[],generic:[]},"interact":{"current":[],generic:[]},"look_at":{"current":[]},"look_away":{"current":[]},"use_look":0b}}
data modify storage ml_ces:logic data.schedule set value {"current":[],"temp":{"id":0,"time":0,"command":"","name":""},"timestamp":{"id":0},"measure":"t"}
data modify storage ml_ces:logic data.uuid set value {"input":[I;0,0,0,0],"output":""}
