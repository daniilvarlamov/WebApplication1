# начало анимации.
execute if score *add_lamp timers matches 1.. run scoreboard players add *add_lamp timers 1
execute if score *add_lamp timers matches 2 run kill @e[tag=icon.lamp, type=item_display]
execute if score *add_lamp timers matches 2 run tag @p add pl.anim
execute if score *add_lamp timers matches 2 run tp @e[tag=icon.player, type=item_display] ~ ~-10 ~
execute if score *add_lamp timers matches 2 positioned -10 11.5 26 summon item_display run function anim:camera/add_lamp
execute if score *add_lamp timers matches 2 run summon zombie -10.4 10 25.4 {DeathLootTable:"none",NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["camera"]}
execute if score *add_lamp timers matches 2 run gamemode spectator @p
# 00000000000000000000000000000000000000000000000000000000000000000000000000000000000
execute if score *add_lamp timers matches 2..100 as @e[type=zombie, tag=camera, limit=1] at @s run tp @s -10.4 ~0.015 25.4 -389.3 3.3
execute if score *add_lamp timers matches 100..136 as @e[type=zombie, tag=camera, limit=1] at @s run tp @s -8.7 10.2 24.8 48.2 -4
# 00000000000000000000000000000000000000000000000000000000000000000000000000000000000
execute if score *add_lamp timers matches 136 run gamemode adventure @p
execute if score *animation1 timers matches 136 run setblock -11 12 26 air
execute if score *add_lamp timers matches 136 as @e[type=zombie, tag=camera, limit=1] at @s run tp 0 -15 0
execute if score *add_lamp timers matches 136 run kill @e[type=zombie, tag=camera, limit=1] 
execute if score *add_lamp timers matches 137 run tp @p -10.1 11 26.7 -899.1 3.3
execute if score *add_lamp timers matches 137 run give @p white_dye{lamp:1,display:{Name:'{"text":"Светильник","color":"light_purple","italic":false}',Lore:['{"text":"Светится только при \\"Потрясающей графике\\"","color":"gray","italic":false}']},CustomModelData:10018} 1
execute if score *add_lamp timers matches 137 run tag @p remove pl.anim
execute if score *add_lamp timers matches 137 positioned -22 11 -6 if entity @e[type=minecraft:item_display,distance=..1.5] run tag @e[type=minecraft:item_display,distance=..1.5] add icon.trup

execute if score *add_lamp timers matches 137.. run tellraw @a {"text":"Изучите лес около машины.","color":"gray"}
execute if score *add_lamp timers matches 137.. run kill @e[tag=obj.lamp, type=item_display]
execute if score *add_lamp timers matches 137.. run scoreboard players set *add_lamp timers 0