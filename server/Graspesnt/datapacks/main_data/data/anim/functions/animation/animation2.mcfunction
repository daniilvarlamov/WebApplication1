# начало анимации.
execute if score *animation2 timers matches 1.. run scoreboard players add *animation2 timers 1
execute if score *animation2 timers matches 2 positioned -19.7 11.5 -5.3 summon item_display run function anim:zzzzzzzzzzzzzzzzzz/animation2
execute if score *animation2 timers matches 2 run summon zombie -19.1 10.2 -2.5 {DeathLootTable:"none",NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["camera"]}
execute if score *animation2 timers matches 2 run gamemode spectator @p
execute if score *animation2 timers matches 2 run tag @p add pl.anim
execute if score *animation2 timers matches 2 run tp @e[tag=icon.player, type=item_display] ~ ~-10 ~
execute if score *animation2 timers matches 2 run setblock -20 11 -7 light[level=9]
execute if score *animation2 timers matches 2 run tag @e[tag=icon.trup, type=item_display] remove icon.trup

execute if score *animation2 timers matches 10 as @a at @s run playsound minecraft:voice/trup/1 master @a
execute if score *animation2 timers matches 10..100 run title @p actionbar [" ",{"text": "\u0008","font": "icons"},{"text":" - Тваюж. Ох Алиса. Когда поймаешь связь","color":"gray"}]
execute if score *animation2 timers matches 100..150 run title @p actionbar [" ",{"text": "\u0008","font": "icons"},{"text":" - Звони в 102.","color":"gray"}]
execute if score *animation2 timers matches 160 as @a at @s run playsound minecraft:voice/trup/alisa1 master @a
execute if score *animation2 timers matches 160..200 run title @p actionbar [" ",{"text": "\u0009","font": "icons"},{"text":" - Это ужас, кто это сделал, необходимо узнать.","color":"gray"}]

# 00000000000000000000000000000000000000000000000000000000000000000000000000000000000
execute if score *animation2 timers matches 2..100 as @e[type=zombie, tag=camera, limit=1] at @s run tp @s ~-0.02 10.2 -2.5 160 10.2
execute if score *animation2 timers matches 100 as @e[type=zombie, tag=camera, limit=1] at @s run tp @s -21.94 10.19 -6.99 337.19 5.03
execute if score *animation2 timers matches 100..295 as @e[type=zombie, tag=camera, limit=1] at @s run tp @s ~0.005 10.19 -6.99 337.19 5.03
# 00000000000000000000000000000000000000000000000000000000000000000000000000000000000
execute if score *animation1 timers matches 293..295 run setblock -20 11 -7 air
execute if score *animation2 timers matches 294 run gamemode adventure @p
execute if score *animation2 timers matches 294 as @e[type=zombie, tag=camera, limit=1] at @s run tp 0 -15 0
execute if score *animation2 timers matches 294 run kill @e[type=zombie, tag=camera, limit=1]
execute if score *animation2 timers matches 294 run tag @p remove pl.anim
execute if score *animation2 timers matches 295 run tp @p -20 11 -6 90 0

execute if score *animation2 timers matches 295 run summon interaction -49 11 7 {width:15f,height:10f,Tags:["int.house"]}
execute if score *animation2 timers matches 295 run setblock -26 12 -9 air
execute if score *animation2 timers matches 295 run setblock -26 12 -10 air

execute if score *animation2 timers matches 295.. run tellraw @a {"text":"Изучите лес в глубину.","color":"gray"}
execute if score *animation2 timers matches 295.. run kill @e[tag=obj.animaton2, type=item_display]
execute if score *animation2 timers matches 295.. run scoreboard players set *animation2 timers 0