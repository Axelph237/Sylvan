# Visuals
execute at @a[predicate=sylvan:sneaking,predicate=sylvan:has_bloom] run particle minecraft:end_rod ~ ~ ~ 0.3 0 0.3 0 1
execute at @a[predicate=sylvan:sneaking,predicate=sylvan:has_bloom] run particle minecraft:enchant ~ ~1 ~ 0.3 0.4 0.3 0.1 1
execute at @a[predicate=sylvan:sneaking,predicate=sylvan:has_bloom,scores={flowery_tp=60}] run playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 1 0.75
# Add score
scoreboard players add @a[predicate=sylvan:sneaking,predicate=sylvan:has_bloom] flowery_tp 1
# Run when
execute as @e[predicate=sylvan:in_overworld,scores={flowery_tp=60..}] at @s in sylvan:flowery run function sylvan:dim_travel
execute as @e[predicate=sylvan:in_flowery,scores={flowery_tp=60..}] at @s in minecraft:overworld run function sylvan:dim_travel
# Reset score
scoreboard players reset @a[predicate=!sylvan:sneaking,predicate=sylvan:has_bloom] flowery_tp
scoreboard players reset @a[predicate=sylvan:sneaking,predicate=!sylvan:has_bloom] flowery_tp
scoreboard players reset @a[predicate=!sylvan:sneaking,predicate=!sylvan:has_bloom] flowery_tp
scoreboard players reset @a[scores={flowery_tp=60..}] flowery_tp
