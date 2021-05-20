scoreboard players operation $duration long_timers = @s long_timers
scoreboard players operation $duration long_timers -= $gametime long_timers
execute if score $duration long_timers matches ..-8000 run scoreboard players set $check long_timers 1
execute unless score $duration long_timers matches ..-8000 run scoreboard players set $check long_timers 0
