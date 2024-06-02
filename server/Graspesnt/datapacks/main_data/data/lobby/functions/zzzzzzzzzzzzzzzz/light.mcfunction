scoreboard players add *light1 timers 1

execute if score *light1 timers matches 1 as @e[tag=locate1.light, type=minecraft:item_display] at @s run tp @s ~ ~9 ~
execute if score *light1 timers matches 30 as @e[tag=locate1.light, type=minecraft:item_display] at @s run tp @s ~ ~-9 ~
execute if score *light1 timers matches 80.. run scoreboard players set *light1 timers 0



# ====================================
scoreboard players add *light2 timers 1

execute if score *light2 timers matches 2 as @e[tag=finish.1] at @s run tp @s -141 17 -14
execute if score *light2 timers matches 2 as @e[tag=finish.2] at @s run tp @s -140 17 -12
execute if score *light2 timers matches 2 as @e[tag=finish.3] at @s run tp @s -139 17 -9
execute if score *light2 timers matches 2 as @e[tag=finish.4] at @s run tp @s -143 17 -11
execute if score *light2 timers matches 2 as @e[tag=finish.5] at @s run tp @s -141 17 -10
execute if score *light2 timers matches 2 as @e[tag=finish.6] at @s run tp @s -147 17 -10
execute if score *light2 timers matches 2 as @e[tag=finish.7] at @s run tp @s -146 17 -14
execute if score *light2 timers matches 2 as @e[tag=finish.8] at @s run tp @s -144 17 -15
execute if score *light2 timers matches 2 as @e[tag=finish.9] at @s run tp @s -143 17 -13
execute if score *light2 timers matches 2 as @e[tag=finish.10] at @s run tp @s -147 17 -11

execute if score *light2 timers matches 32 as @e[tag=finish.1] at @s run tp @s -140 17 -12
execute if score *light2 timers matches 32 as @e[tag=finish.2] at @s run tp @s -141 17 -14
execute if score *light2 timers matches 32 as @e[tag=finish.3] at @s run tp @s -143 17 -11
execute if score *light2 timers matches 32 as @e[tag=finish.4] at @s run tp @s -139 17 -9
execute if score *light2 timers matches 32 as @e[tag=finish.5] at @s run tp @s -147 17 -10
execute if score *light2 timers matches 32 as @e[tag=finish.6] at @s run tp @s -141 17 -10
execute if score *light2 timers matches 32 as @e[tag=finish.7] at @s run tp @s -144 17 -15
execute if score *light2 timers matches 32 as @e[tag=finish.8] at @s run tp @s -146 17 -14
execute if score *light2 timers matches 32 as @e[tag=finish.9] at @s run tp @s -147 17 -11
execute if score *light2 timers matches 32 as @e[tag=finish.10] at @s run tp @s -143 17 -13
execute if score *light2 timers matches 60.. run scoreboard players set *light2 timers 0