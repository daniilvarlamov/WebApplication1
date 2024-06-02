scoreboard players add *sound_skeleton timers 1
execute if score *sound_skeleton timers matches 1 run stopsound @p master minecraft:music/sound_skeleton
execute if score *sound_skeleton timers matches 1 run playsound minecraft:music/sound_skeleton master @p
execute if score *sound_skeleton timers matches 2150.. run scoreboard players set *sound_skeleton timers 0