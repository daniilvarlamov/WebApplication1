# начало анимации.
execute if score *animation4 timers matches 1.. run scoreboard players add *animation4 timers 1
execute if score *animation4 timers matches 2 positioned -120 11.5 13 summon item_display run function anim:zzzzzzzzzzzzzzzzzz/animation4
execute if score *animation4 timers matches 2 run effect give @p invisibility infinite 1 true
execute if score *animation4 timers matches 2 run tag @p add pl.anim
execute if score *animation4 timers matches 2 run tp @e[tag=icon.player, type=item_display] ~ ~-10 ~

execute if score *animation4 timers matches 2 run tag @e[type=minecraft:item_display, tag=podval.trig, limit=1] remove podval.trig

execute if score *animation4 timers matches 2 run title @p times 20 20 20
execute if score *animation4 timers matches 2 run title @p title [{"text":"\uF92C","font":"render","color":"#000002"},{"text":"\uF92C","font":"render","color":"#000003"}]
execute if score *animation4 timers matches 2 as @e[tag=animation4] at @s run tp @s -116.24 18.5 13.50

execute if score *animation4 timers matches 30 run summon zombie -120.20 9.77 12.76 {DeathLootTable:"none",NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["camera"]}
execute if score *animation4 timers matches 30 run gamemode spectator @p
## +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

execute if score *animation4 timers matches 50 as @a at @s run playsound minecraft:voice/anim3/1 master @a
execute if score *animation4 timers matches 50..100 run title @p actionbar [" ",{"text": "\u0008","font": "icons"},{"text":" - Фух. Пробрались.","color":"gray"}]

execute if score *animation4 timers matches 120 as @a at @s run playsound minecraft:voice/anim3/alisa1 master @a
execute if score *animation4 timers matches 120..180 run title @p actionbar [" ",{"text": "\u0009","font": "icons"},{"text":" - Я не знаю зачем ты сюда пошол, но надеюсь эти действия оправданны.","color":"gray"}]

execute if score *animation4 timers matches 220 as @a at @s run playsound minecraft:voice/anim3/alisa2 master @a
execute if score *animation4 timers matches 220..300 run title @p actionbar [" ",{"text": "\u0009","font": "icons"},{"text":" - Если вы будите находится в подвале, то я смогу не дозвониться до 911.","color":"gray"}]

execute if score *animation4 timers matches 250 as @a at @s run playsound minecraft:voice/anim3/boom master @a
execute if score *animation4 timers matches 270 as @e[tag=animation4] at @s run tp @s ~ ~-4 ~

execute if score *animation4 timers matches 330 as @a at @s run playsound minecraft:voice/anim3/2 master @a
execute if score *animation4 timers matches 330..420 run title @p actionbar [" ",{"text": "\u0008","font": "icons"},{"text":" - *Испуг, Алиса шкаф упал!","color":"gray"}]

execute if score *animation4 timers matches 420 as @a at @s run playsound minecraft:voice/anim3/alisa3 master @a
execute if score *animation4 timers matches 420..470 run title @p actionbar [" ",{"text": "\u0009","font": "icons"},{"text":" - Куда шкаф упал?","color":"gray"}]

execute if score *animation4 timers matches 460 as @a at @s run playsound minecraft:voice/anim3/3 master @a
execute if score *animation4 timers matches 460..540 run title @p actionbar [" ",{"text": "\u0008","font": "icons"},{"text":" - Шкаф упал и перегородил выход.","color":"gray"}]

execute if score *animation4 timers matches 540 as @a at @s run playsound minecraft:voice/anim3/alisa4 master @a
execute if score *animation4 timers matches 540..590 run title @p actionbar [" ",{"text": "\u0009","font": "icons"},{"text":" - *громко Не переживайте мне кажется у вас всё получиться.","color":"gray"}]
execute if score *animation4 timers matches 590..640 run title @p actionbar [" ",{"text": "\u0009","font": "icons"},{"text":" - Вам просто нужно найти альтернативный выход.","color":"gray"}]

execute if score *animation4 timers matches 650 as @a at @s run playsound minecraft:voice/anim3/4 master @a
execute if score *animation4 timers matches 650..680 run title @p actionbar [" ",{"text": "\u0008","font": "icons"},{"text":" - Твоюж программу Алиса!","color":"gray"}]
# 00000000000000000000000000000000000000000000000000000000000000000000000000000000000
execute if score *animation4 timers matches 40 as @e[type=zombie, tag=camera, limit=1] at @s run tp @s -120.20 9.77 12.76 642.1 -10.6
execute if score *animation4 timers matches 40..210 as @e[type=zombie, tag=camera, limit=1] at @s run tp @s ~-0.02 9.77 12.76 642.1 -10.6

execute if score *animation4 timers matches 210..300 as @e[type=zombie, tag=camera, limit=1] at @s run tp @s -120.20 11.26 14.47 -109.17 9.59

execute if score *animation4 timers matches 301 as @e[type=zombie, tag=camera, limit=1] at @s run tp @s -121.44 10.76 12.67 -90.99 -0.84
execute if score *animation4 timers matches 302..440 as @e[type=zombie, tag=camera, limit=1] at @s run tp @s -121.44 10.76 ~0.01 -90.99 -0.84

execute if score *animation4 timers matches 440..600 as @e[type=zombie, tag=camera, limit=1] at @s run tp @s -117.37 12.00 14.20 102.02 33.13

execute if score *animation4 timers matches 600..680 as @e[type=zombie, tag=camera, limit=1] at @s run tp @s -121.38 12.18 12.30 -60.22 15.89
# 00000000000000000000000000000000000000000000000000000000000000000000000000000000000


## ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

execute if score *animation4 timers matches 680 run kill @e[type=item, nbt={Item:{tag:{cart:1}}}]
execute if score *animation4 timers matches 680 run clear @p white_dye{cart:1}
execute if score *animation4 timers matches 680 run item replace block -138 12 -19 container.13 with white_dye{display:{Name:'{"text":"Синяя ключь карта","color":"aqua","italic":false}'},CustomModelData:10021,blue_cart:1,cart:1} 1
execute if score *animation4 timers matches 680 run item replace block -147 11 10 container.16 with white_dye{display:{Name:'{"text":"Красная ключь карта","color":"red","italic":false}'},CustomModelData:10022,red_cart:1,cart:1} 1
execute if score *animation4 timers matches 680 run item replace block -131 12 -19 container.16 with white_dye{display:{Name:'{"text":"Чёрная ключь карта","color":"gray","italic":false}'},CustomModelData:10023,black_cart:1,cart:1} 1
execute if score *animation4 timers matches 680 run kill @e[tag=obj.animaton4, type=item_display]
execute if score *animation4 timers matches 680 as @e[type=zombie, tag=camera, limit=1] at @s run tp 0 -15 0
execute if score *animation4 timers matches 680 run kill @e[type=zombie, tag=camera, limit=1]
execute if score *animation4 timers matches 680 run tag @p remove pl.anim
execute if score *animation4 timers matches 680 run gamemode adventure @p
execute if score *animation4 timers matches 680 run tp @p -118.47 11.00 13.60 89.96 -0.11
execute if score *animation4 timers matches 680 as @p at @p run playsound minecraft:music/youhave2m master @p
execute if score *animation4 timers matches 680 run scoreboard players add *time_timer_1locate timers 1
execute if score *animation4 timers matches 680.. run tellraw @a {"text":"Найдите альтернативный выход за 70 сек.","color":"gray"}
execute if score *animation4 timers matches 680.. run scoreboard players set *animation4 timers 0