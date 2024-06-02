# начало анимации.
execute if score *respawn_start_locate timers matches 1.. run scoreboard players add *respawn_start_locate timers 1

## +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

execute if score *respawn_start_locate timers matches 2 run title @p times 0 20 20
execute if score *respawn_start_locate timers matches 2 run title @p title [{"text":"\uF92C","font":"render","color":"#000002"},{"text":"\uF92C","font":"render","color":"#000003"}]
execute if score *respawn_start_locate timers matches 2 run tp @p -31.48 11.00 7.93 92.91 -1.09
execute if score *respawn_start_locate timers matches 20 run tag @a remove respawn_start_locate
execute if score *respawn_start_locate timers matches 20 as @a at @s run stopsound @p master minecraft:zzzzzzzzzz/start/les
execute if score *respawn_start_locate timers matches 20 as @a at @s run playsound minecraft:zzzzzzzzzz/start/les master @p
execute if score *respawn_start_locate timers matches 2 as @a at @s run playsound minecraft:game/respawn master @a ~ ~ ~ 20 0.9
execute if score *respawn_start_locate timers matches 20 run title @p actionbar [" ",{"text": "\u0008","font": "icons"},{"text":" - Я попробую забраться в подвал.","color":"gray"}]
## +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

execute if score *respawn_start_locate timers matches 20.. run scoreboard players set *respawn_start_locate timers 0