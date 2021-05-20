playsound minecraft:entity.firework_rocket.twinkle master @a ~ ~ ~ 1 1.25
particle falling_dust pink_wool ~ ~1 ~ 1 1 1 3 10 normal
particle falling_dust red_wool ~ ~1 ~ 1 1 1 3 10 normal
particle falling_dust light_blue_wool ~ ~1 ~ 1 1 1 3 10 normal
particle falling_dust magenta_wool ~ ~1 ~ 1 1 1 3 10 normal
execute if entity @e[type=chicken,distance=..0.1] run function sylvan:fireworks
