execute at @s run playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 1 0.75
execute at @s run particle minecraft:end_rod ~ ~1 ~ 0.3 0.5 0.3 0.2 50
forceload add ~ ~ ~ ~
tp @s ~ ~300 ~
spreadplayers ~ ~ 1 20 false @s
scoreboard players reset @s flowery_tp
forceload remove ~ ~ ~ ~
execute at @s run playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 1 0.75
execute at @s run particle minecraft:end_rod ~ ~1 ~ 0.3 0.5 0.3 0.2 50
execute if predicate sylvan:in_overworld run title @s title {"text":"The Overworld"}
execute if predicate sylvan:in_flowery run title @s title {"text":"Gaea"}
