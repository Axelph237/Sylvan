data modify entity @s Particle set value "flame"
data modify entity @s Radius set value 0.5f
data modify entity @s Duration set value 40
summon area_effect_cloud ~ ~ ~ {Particle:"smoke",Duration:40,Radius:0.5f,Tags:["particles"]}
summon area_effect_cloud ~ ~ ~ {Particle:"flame",Duration:40,Radius:0.5f,Tags:["particles"]}
playsound minecraft:entity.generic.burn master @a ~ ~ ~ 1 1
fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:fire
