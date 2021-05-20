execute as @e[type=minecraft:armor_stand,nbt={ArmorItems:[{id:"minecraft:carved_pumpkin"}]},tag=!scarecrow,tag=!notscarecrow] at @s if entity @a[tag=sylvan,distance=..8] unless entity @e[type=minecraft:armor_stand,tag=scarecrow,distance=..12] run function sylvan:scarecrow/visuals
execute as @e[type=minecraft:armor_stand,nbt={ArmorItems:[{id:"minecraft:carved_pumpkin"}]},tag=!scarecrow,tag=!notscarecrow] at @s if entity @a[tag=sylvan,distance=..8] if entity @e[type=minecraft:armor_stand,tag=scarecrow,distance=..12] run function sylvan:scarecrow/fail
execute as @e[type=minecraft:armor_stand,nbt={ArmorItems:[{id:"minecraft:carved_pumpkin"}]},tag=!scarecrow,tag=!notscarecrow] unless entity @a[tag=sylvan,distance=..8] run tag @s add notscarecrow
# Ticking
execute as @e[type=minecraft:armor_stand,tag=scarecrow] at @s if block ~ ~ ~ minecraft:fire run particle minecraft:lava ~ ~1 ~ 0.3 0.6 0.3 0 1 normal
execute as @e[type=minecraft:armor_stand,tag=scarecrow] at @s if block ~ ~ ~ minecraft:fire run scoreboard players add @s kill 1
execute as @e[type=minecraft:armor_stand,tag=scarecrow] at @s if entity @e[type=!player,type=!#sylvan:inanimate,distance=..5,tag=!scarecrow,type=!#sylvan:peaceful,nbt=!{ActiveEffects:[{Id:18b}]}] run scoreboard players add @s scarecrow_weak 1
execute as @e[type=minecraft:armor_stand,tag=scarecrow] at @s facing entity @e[type=!player,type=!#sylvan:inanimate,distance=..5,tag=!scarecrow,type=!#sylvan:peaceful,nbt=!{ActiveEffects:[{Id:18b}]}] eyes run tp @s ~ ~ ~ ~ ~
# Sound and Kill
execute as @e[type=minecraft:armor_stand,tag=scarecrow,scores={kill=1}] at @s run playsound minecraft:entity.generic.burn master @a ~ ~ ~ 1 1
execute as @e[type=minecraft:armor_stand,tag=scarecrow,scores={kill=30..}] at @s if block ~ ~ ~ minecraft:fire run function sylvan:scarecrow/kill
execute as @e[type=minecraft:armor_stand,tag=scarecrowP] at @s unless entity @e[type=minecraft:armor_stand,tag=scarecrow,distance=..0.1,limit=1] run function sylvan:scarecrow/kill
# Apply Weakness
execute as @e[type=minecraft:armor_stand,tag=scarecrow,scores={scarecrow_weak=1..}] at @s unless entity @e[type=!player,tag=!scarecrow,distance=..4.5] run scoreboard players set @s scarecrow_weak 40
execute as @e[type=minecraft:armor_stand,tag=scarecrow,scores={scarecrow_weak=20}] run replaceitem entity @s armor.head minecraft:carved_pumpkin{CustomModelData:1002}
execute as @e[type=minecraft:armor_stand,tag=scarecrow,scores={scarecrow_weak=15}] at @s run playsound minecraft:entity.evoker.prepare_wololo master @a ~ ~ ~ 1 0.7
execute as @e[type=minecraft:armor_stand,tag=scarecrow,scores={scarecrow_weak=20..}] at @s positioned ~ ~1.7 ~ run function sylvan:scarecrow/particles
execute as @e[type=minecraft:armor_stand,tag=scarecrow,scores={scarecrow_weak=35}] at @s run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 0.75
execute as @e[type=minecraft:armor_stand,tag=scarecrow,scores={scarecrow_weak=40}] at @s run function sylvan:scarecrow/weakness
execute as @e[type=minecraft:armor_stand,tag=scarecrow,scores={scarecrow_weak=40..}] run scoreboard players set @s scarecrow_weak 0
# Particles
execute as @e[tag=sylvan] at @s as @e[type=minecraft:armor_stand,tag=scarecrowP,distance=..12,limit=1,sort=nearest] at @s if entity @e[tag=sylvan,distance=..12] run function sylvan:scarecrow/primary_radius
