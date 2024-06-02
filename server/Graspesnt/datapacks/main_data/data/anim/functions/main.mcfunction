# 00000000000000000000000000000000000000000000000000000000000000000000
#                  Анимация: Старт игры
execute if score *custom_lobby_verifed main_score matches 1 if entity @p[tag=verifed] run scoreboard players add *animation1 timers 1
function anim:animation/animation1

# 00000000000000000000000000000000000000000000000000000000000000000000
#                     Доп. Взять лампу
execute as @a at @s if entity @e[tag=icon.lamp, type=item_display, distance=..3] run scoreboard players add *add_lamp timers 1
function anim:animation/add_lamp

# 00000000000000000000000000000000000000000000000000000000000000000000
#                 Анимация: Находит труп
execute as @a at @s if entity @e[tag=icon.trup, type=item_display, distance=..3] run scoreboard players add *animation2 timers 1
function anim:animation/animation2

# 00000000000000000000000000000000000000000000000000000000000000000000
#              Анимация: Натыкаетесь на сектантов
execute as @a at @s if predicate main:at_house run scoreboard players add *animation3 timers 1
function anim:animation/animation3

# 00000000000000000000000000000000000000000000000000000000000000000000
#                 Доп.: Respawn start location
execute as @e[type=zombie, tag=sectant, limit=1] on target if entity @p run tag @p add respawn_start_locate
execute if entity @p[tag=respawn_start_locate] run scoreboard players add *respawn_start_locate timers 1
function anim:animation/respawn_start


## 00000000000000000000000000000000000000000000000000000000000000000000


# Анимация: заходит в подвал 
execute as @a at @s if entity @e[type=minecraft:item_display, tag=podval.trig, limit=1, distance=..1] run scoreboard players add *animation4 timers 1
function anim:animation/animation4

# 00000000000000000000000000000000000000000000000000000000000000000000
#                 Доп.: Respawn 1 location
function anim:animation/time_1locate

## 00000000000000000000000000000000000000000000000000000000000000000000
#                 Анимация: спускается на 2 этаж
execute as @a at @s if entity @e[tag=trigger.2locate, type=item_display, distance=..3] run scoreboard players add *animation5 timers 1
function anim:animation/animation5

# 00000000000000000000000000000000000000000000000000000000000000000000
#                 Анимация: ловит селетон
execute as @a at @s if entity @e[tag=iq_skeleton, type=zombie, distance=..3] run scoreboard players set *skrimer_skeleton timers 1
function anim:animation/respawn_skeleton

# 00000000000000000000000000000000000000000000000000000000000000000000

execute if score *artif_add main_score matches 5.. run scoreboard players add *edit_game timers 1
function anim:animation/end_game