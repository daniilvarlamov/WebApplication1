#===================================================================
#             [Игровая основа]
execute as @a at @a run function main:tick_player
#===================================================================
##000000000000000000000000000000000000000000000000000000000000000000
# Анимация
execute as @e[tag=camera, type=zombie, limit=1] at @s run spectate @s @p
execute as @e[tag=camera, type=zombie, limit=1] run effect give @s invisibility infinite 1 true

# Animation/Timers
function anim:main
##000000000000000000000000000000000000000000000000000000000000000000

# монстры и их iq"
function monstrs:main



execute as @e[tag=icon.retual, type=item_display, limit=1] at @s if score *artif_add main_score matches 0 run particle minecraft:portal ~ ~-1 ~ 1 0 1 0.05 50
execute as @e[tag=icon.retual, type=item_display, limit=1] at @s if score *artif_add main_score matches 1 run particle minecraft:portal ~ ~-1 ~ 1 0 1 0.05 25
execute as @e[tag=icon.retual, type=item_display, limit=1] at @s if score *artif_add main_score matches 2 run particle minecraft:portal ~ ~-1 ~ 1 0 1 0.05 15
execute as @e[tag=icon.retual, type=item_display, limit=1] at @s if score *artif_add main_score matches 3 run particle minecraft:portal ~ ~-1 ~ 1 0 1 0.05 6
execute as @e[tag=icon.retual, type=item_display, limit=1] at @s if score *artif_add main_score matches 4 run particle minecraft:portal ~ ~-1 ~ 1 0 1 0.05 1
##000000000000000000000000000000000000000000000000000000000000000000
# lobby-start    ! ниже "Animation/Timers"
function lobby:main
scoreboard players set *online_player main_score 0

function lobby:zzzzzzzzzzzzzzzz/rekl