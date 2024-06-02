# начало анимации.
execute if score *animation5 timers matches 1.. run scoreboard players add *animation5 timers 1
execute if score *animation5 timers matches 2 positioned -175 13.5 16 summon item_display run function anim:zzzzzzzzzzzzzzzzzz/animation4
execute if score *animation5 timers matches 2 run scoreboard players set *time_timer_1locate timers 0
execute if score *animation5 timers matches 2 run summon zombie -171 17 16 {DeathLootTable:"none",NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["camera"]}
execute if score *animation5 timers matches 2 run gamemode spectator @p
execute if score *animation5 timers matches 2 run tag @p add pl.anim
execute if score *animation5 timers matches 2 run tp @e[tag=icon.player, type=item_display] ~ ~-10 ~
execute if score *animation5 timers matches 2 run xp set @p 0 levels
execute if score *animation5 timers matches 2 run stopsound @p master minecraft:music/youhave2m

execute if score *animation5 timers matches 10 as @a at @s run playsound minecraft:voice/anim5/1 master @a
execute if score *animation5 timers matches 10..70 run title @p actionbar [" ",{"text": "\u0008","font": "icons"},{"text":" - Фух я надеюсь они меня не найдут.","color":"gray"}]
execute if score *animation5 timers matches 70..110 run title @p actionbar [" ",{"text": "\u0008","font": "icons"},{"text":" - Алиса! зачем ты...","color":"gray"}]
execute if score *animation5 timers matches 70 as @a at @s run playsound minecraft:voice/anim5/2 master @a
execute if score *animation5 timers matches 110 as @a at @s run playsound minecraft:voice/anim5/alisa1 master @a
execute if score *animation5 timers matches 110..180 run title @p actionbar [" ",{"text": "\u0009","font": "icons"},{"text":" - Простите, я правда не специально.","color":"gray"}]
execute if score *animation5 timers matches 170 as @a at @s run playsound minecraft:voice/anim5/3 master @a
execute if score *animation5 timers matches 180..250 run title @p actionbar [" ",{"text": "\u0008","font": "icons"},{"text":" - Жесть и куда мы пришли.","color":"gray"}]
execute if score *animation5 timers matches 230 as @a at @s run playsound minecraft:voice/anim5/4 master @a
execute if score *animation5 timers matches 230..295 run title @p actionbar [" ",{"text": "\u0008","font": "icons"},{"text":" - Не думал что в школах такие большие подвалы.","color":"gray"}]
execute if score *animation5 timers matches 320 as @a at @s run playsound minecraft:voice/anim5/alisa2 master @a
execute if score *animation5 timers matches 320..350 run title @p actionbar [" ",{"text": "\u0009","font": "icons"},{"text":" - Я тоже.","color":"gray"}]

# 00000000000000000000000000000000000000000000000000000000000000000000000000000000000
execute if score *animation5 timers matches 2..100 as @e[type=zombie, tag=camera, limit=1] at @s run tp @s ~-0.03 ~-0.03 16 89.7 35.5
execute if score *animation5 timers matches 100 as @e[type=zombie, tag=camera, limit=1] at @s run tp @s -173.9 13.05 16.50 91.2 5.6
execute if score *animation5 timers matches 100..200 as @e[type=zombie, tag=camera, limit=1] at @s run tp @s ~-0.05 13.05 16.50 91.2 5.6
execute if score *animation5 timers matches 200..350 as @e[type=zombie, tag=camera, limit=1] at @s run tp @s -177.9 14.2 17.4 254.1 25.3
# 00000000000000000000000000000000000000000000000000000000000000000000000000000000000
execute if score *animation5 timers matches 350 run gamemode adventure @p
execute if score *animation5 timers matches 350 as @e[type=zombie, tag=camera, limit=1] at @s run tp 0 -15 0
execute if score *animation5 timers matches 350 run kill @e[type=zombie, tag=camera, limit=1]
execute if score *animation5 timers matches 350 run tag @p remove pl.anim
execute if score *animation5 timers matches 350 run tag @p add 2etash
execute if score *animation5 timers matches 350 run tp @p -174 13 16 90.2 0
execute if score *animation5 timers matches 350 run tp @e[type=zombie, tag=iq_skeleton, limit=1] -227 9 19 
execute if score *animation5 timers matches 350.. run kill @e[tag=obj.animaton4, type=item_display]
execute if score *animation5 timers matches 350.. run tellraw @a {"text":"Изучите 2 этаж подвала.","color":"gray"}
execute if score *animation5 timers matches 350.. run scoreboard players set *animation5 timers 0