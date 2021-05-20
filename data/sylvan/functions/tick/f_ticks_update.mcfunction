# Set portion scores to max
scoreboard players operation @s f_tick_14 = @s f_tick_max
scoreboard players operation @s f_tick_12 = @s f_tick_max
scoreboard players operation @s f_tick_34 = @s f_tick_max
# Divide portion scores to correct amounts
scoreboard players operation @s f_tick_14 /= $divider f_tick_14
scoreboard players operation @s f_tick_12 /= $divider f_tick_12
scoreboard players operation @s f_tick_34 /= $divider f_tick_34
scoreboard players operation @s f_tick_34 *= $multiplier f_tick_34
