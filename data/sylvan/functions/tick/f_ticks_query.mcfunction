# Check if f_tick_max has been updated
execute as @e[tag=farmer,type=minecraft:area_effect_cloud] unless score @s f_tick_max = @s f_tick_prev run function sylvan:tick/f_ticks_update
# Update f_tick_prev
execute as @e[tag=farmer,type=minecraft:area_effect_cloud] run scoreboard players operation @s f_tick_prev = @s f_tick_max
