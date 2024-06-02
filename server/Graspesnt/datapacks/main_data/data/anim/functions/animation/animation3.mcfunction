# начало анимации.
execute if score *animation3 timers matches 1.. run scoreboard players add *animation3 timers 1
execute if score *animation3 timers matches 2 positioned -32 11.5 8 summon item_display run function anim:zzzzzzzzzzzzzzzzzz/animation3
execute if score *animation3 timers matches 2 run summon zombie -29 11 7.3 {DeathLootTable:"none",NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["camera"]}
execute if score *animation3 timers matches 2 run gamemode spectator @p

execute if score *animation3 timers matches 2 run tag @p add pl.anim
execute if score *animation3 timers matches 2 run tp @e[tag=icon.player, type=item_display] ~ ~-10 ~

execute if score *animation3 timers matches 2 run kill @e[type=interaction, tag=int.house, limit=1]

## +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

execute if score *animation3 timers matches 10 as @a at @s run playsound minecraft:voice/anim2/1 master @a
execute if score *animation3 timers matches 10..50 run title @p actionbar [" ",{"text": "\u0008","font": "icons"},{"text":" - Стой! ты это видишь.","color":"gray"}]

execute if score *animation3 timers matches 80 as @a at @s run playsound minecraft:voice/anim2/alisa1 master @a
execute if score *animation3 timers matches 80..100 run title @p actionbar [" ",{"text": "\u0009","font": "icons"},{"text":" - Конечно, я же человек.","color":"gray"}]

execute if score *animation3 timers matches 150 as @a at @s run playsound minecraft:voice/anim2/2 master @a
execute if score *animation3 timers matches 150..249 run title @p actionbar [" ",{"text": "\u0008","font": "icons"},{"text":" - Ну тут сектанты, Алиса что это за место.","color":"gray"}]
# ради sound 150..249*

execute if score *animation3 timers matches 272 as @a at @s run playsound minecraft:voice/anim2/alisa2 master @a
execute if score *animation3 timers matches 270..390 run title @p actionbar [" ",{"text": "\u0009","font": "icons"},{"text":" - По моим последним данным. Рядом заброшенная школа.","color":"gray"}]

execute if score *animation3 timers matches 392 as @a at @s run playsound minecraft:voice/anim2/3 master @a
execute if score *animation3 timers matches 392..500 run title @p actionbar [" ",{"text": "\u0008","font": "icons"},{"text":" - Хм. Я не услышатал о чём они говорят.","color":"gray"}]

execute if score *animation3 timers matches 502 as @a at @s run playsound minecraft:voice/anim2/alisa3 master @a
execute if score *animation3 timers matches 502..570 run title @p actionbar [" ",{"text": "\u0009","font": "icons"},{"text":" - Подойди поближе к ним только осторожно.","color":"gray"}]

execute if score *animation3 timers matches 572 store result score *random1_2 main_score run random value 1..11
execute if score *animation3 timers matches 572 if score *random1_2 main_score matches 1 as @a at @s run playsound minecraft:voice/anim2/4secret master @a
execute if score *animation3 timers matches 572 if score *random1_2 main_score matches 1 as @a at @s run tellraw @p "Вы открыли секретный проигрыватель."
execute if score *animation3 timers matches 572 if score *random1_2 main_score matches 2..11 as @a at @s run playsound minecraft:voice/anim2/4 master @a
execute if score *animation3 timers matches 571..620 run title @p actionbar [" ",{"text": "\u0008","font": "icons"},{"text":" - Ты что с ума сошла.","color":"gray"}]
execute if score *animation3 timers matches 620..700 run title @p actionbar [" ",{"text": "\u0008","font": "icons"},{"text":" - Я вижу у них открыт подвал.","color":"gray"}]

execute if score *animation3 timers matches 702 as @a at @s run playsound minecraft:voice/anim2/5 master @a
execute if score *animation3 timers matches 702..750 run title @p actionbar [" ",{"text": "\u0008","font": "icons"},{"text":" - Я попробую пробратся в него.","color":"gray"}]
execute if score *animation3 timers matches 760 run title @p actionbar ""

# 00000000000000000000000000000000000000000000000000000000000000000000000000000000000
execute if score *animation3 timers matches 2 as @e[type=zombie, tag=camera, limit=1] at @s run tp @s -29 11 7.3 -649 9.5
execute if score *animation3 timers matches 2..150 as @e[type=zombie, tag=camera, limit=1] at @s run tp @s ~-0.05 11 ~-0.01 -649 9.5

execute if score *animation3 timers matches 150..270 as @e[type=zombie, tag=camera, limit=1] at @s run tp @s -33.12 10.25 6.05 -32.40 -6.26

execute if score *animation3 timers matches 270 as @e[type=zombie, tag=camera, limit=1] at @s run tp @s -53.74 10.87 7.37 92.91 -3.55
execute if score *animation3 timers matches 271..390 as @e[type=zombie, tag=camera, limit=1] at @s run tp @s -53.74 10.87 ~-0.01 92.91 -3.55


execute if score *animation3 timers matches 390 as @e[type=zombie, tag=camera, limit=1] at @s run tp @s -35.1 10.2 4.8 299.7 1
execute if score *animation3 timers matches 391..500 as @e[type=zombie, tag=camera, limit=1] at @s run tp @s -35.1 10.2 ~0.02 299.7 1

execute if score *animation3 timers matches 500 as @e[type=zombie, tag=camera, limit=1] at @s run tp @s -56.36 11.69 17.68 71.90 2.72
execute if score *animation3 timers matches 501..570 as @e[type=zombie, tag=camera, limit=1] at @s run tp @s ~-0.01 11.69 17.68 71.90 2.72

execute if score *animation3 timers matches 570..700 as @e[type=zombie, tag=camera, limit=1] at @s run tp @s -33.12 10.25 6.05 -32.40 -6.26

# 00000000000000000000000000000000000000000000000000000000000000000000000000000000000


## +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


execute if score *animation3 timers matches 770 run title @p times 30 40 20
execute if score *animation3 timers matches 770 run title @p title [{"text":"\uF92C","font":"render","color":"#000002"},{"text":"\uF92C","font":"render","color":"#000003"}]

execute if score *animation3 timers matches 800 run kill @e[tag=obj.animaton3, type=item_display]
execute if score *animation3 timers matches 800 as @e[type=zombie, tag=camera, limit=1] at @s run tp 0 -15 0
execute if score *animation3 timers matches 800 run kill @e[type=zombie, tag=camera, limit=1]
execute if score *animation3 timers matches 800 run tag @p remove pl.anim
execute if score *animation3 timers matches 800 run gamemode adventure @p
execute if score *animation3 timers matches 800 run tp @p -31.48 11.00 7.93 92.91 -1.09
execute if score *animation3 timers matches 800 run effect clear @p invisibility
execute if score *animation3 timers matches 800 run playsound minecraft:zzzzzzzzzz/start/les master @p
execute if score *animation3 timers matches 800 run tag @e[type=minecraft:item_display, tag=trigger.podval, limit=1] add podval.trig
execute if score *animation3 timers matches 800.. run tellraw @a {"text":"Проникните в подвал в заброшенной школе.","color":"gray"}
execute if score *animation3 timers matches 800.. run scoreboard players set *animation3 timers 0
