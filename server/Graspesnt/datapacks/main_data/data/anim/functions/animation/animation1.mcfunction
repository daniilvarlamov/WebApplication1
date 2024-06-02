# начало анимации.
execute if score *animation1 timers matches 1.. run scoreboard players add *animation1 timers 1
execute if score *animation1 timers matches 2 run tag @p remove verifed
execute if score *animation1 timers matches 2 run scoreboard players set *custom_lobby_verifed main_score 0
 
execute if score *animation1 timers matches 10 run title @p times 40 160 40
execute if score *animation1 timers matches 10 run title @p title [{"text":"\uF92C","font":"render","color":"#000002"},{"text":"\uF92C","font":"render","color":"#000003"},{"text":"\uF92C","font":"render","color":"#000004"},{"text":"\uF92C","font":"render","color":"#000005"}]
# ===================================================================
# середина.
execute if score *animation1 timers matches 30 as @a at @p run playsound minecraft:zzzzzzzzzz/start/see_logo master @a
execute if score *animation1 timers matches 200 run gamemode spectator @a
execute if score *animation1 timers matches 200 run summon zombie 65.3 12 -23 {DeathLootTable:"none",NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["camera"]}
execute if score *animation1 timers matches 360 run kill @e[tag=text.lobby.start, type=text_display]
execute if score *animation1 timers matches 360 run title @p times 20 220 10
execute if score *animation1 timers matches 360 run title @p title [{"text":"\uF92C","font":"render","color":"#000002"},{"text":"\uF92C","font":"render","color":"#000003"},{"text":"\uF92C","font":"render","color":"#000004"},{"text":"\uF92C","font":"render","color":"#000005"}]



execute if score *animation1 timers matches 530 as @a at @p run playsound minecraft:zzzzzzzzzz/start/les master @p
execute if score *animation1 timers matches 530 run gamemode adventure @p
execute if score *animation1 timers matches 550 run gamemode spectator @p
execute if score *animation1 timers matches 600 as @a at @p run playsound minecraft:zzzzzzzzzz/start/car_go master @p
execute if score *animation1 timers matches 600 run summon item_display 126 11.5 -45 {Tags:["icon.killer.car"],item:{id:"minecraft:red_dye",Count:1b,tag:{CustomModelData:3}}}
execute if score *animation1 timers matches 600 run summon item_display 126 11.5 -48 {Tags:[light,icon.killer.car],Invulnerable:1b,Rotation:[0.0f,0.0f],item:{id:"minecraft:lime_stained_glass",Count:1b,tag:{CustomModelData:6707}},item_display:"head"}
execute if score *animation1 timers matches 600..760 as @e[tag=icon.killer.car] at @s run tp @s ~ ~ ~-0.3
execute if score *animation1 timers matches 740 run title @p times 10 20 10
execute if score *animation1 timers matches 740 run title @p title [{"text":"\uF92C","font":"render","color":"#000002"},{"text":"\uF92C","font":"render","color":"#000003"}]
execute if score *animation1 timers matches 740 run kill @e[tag=obj.animaton1, type=item_display]
execute if score *animation1 timers matches 760 positioned 131.0 4 -51.3 summon item_display run function anim:zzzzzzzzzzzzzzzzzz/obj_animation1



# Root*
execute if score *animation1 timers matches 3400 positioned -6 11.5 2 summon item_display run function anim:zzzzzzzzzzzzzzzzzz/obj_animation1_root
execute if score *animation1 timers matches 3431 run summon zombie 3.1 9.7 13.2 {DeathLootTable:"none",NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["camera"]}


# ===================================================================
# конец.

execute if score *animation1 timers matches 200.. as @e[type=zombie, tag=camera, limit=1] at @s run function anim:camera/animation1
execute if score *animation1 timers matches 3400.. as @e[type=zombie, tag=camera, limit=1] at @s run function anim:camera/animation1_root

execute if score *animation1 timers matches 4200 run summon item_display -11 12 26 {Tags:["icon.lamp"],item:{id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:10018}}}
execute if score *animation1 timers matches 4200 run setblock -11 12 26 light


execute if score *animation1 timers matches 4200 run tellraw @a {"text":"Подойдите к источнику света.","color":"gray"}
execute if score *animation1 timers matches 4200 run kill @e[type=zombie, tag=camera, limit=1]
execute if score *animation1 timers matches 4200.. run scoreboard players set *animation1 timers 0



