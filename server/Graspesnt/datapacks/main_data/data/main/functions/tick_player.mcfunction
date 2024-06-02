scoreboard players add *online_player main_score 1
execute if score *online_player main_score matches 2 as @p run tellraw @a "В игре может принимать участвие только 1 человек."
# закрытые предметы
execute as @e[tag=int.closet_car, type=interaction, nbt={interaction:{}}] run function lobby:zzzzzzzzzzzzzzzz/closet_car
execute as @e[tag=int.closet, type=interaction, nbt={interaction:{}}] run function lobby:zzzzzzzzzzzzzzzz/closet
execute as @e[tag=int.closet_shkaf, type=interaction, nbt={interaction:{}}] run function lobby:zzzzzzzzzzzzzzzz/closet_shkaf
execute as @e[tag=int.closet_door, type=interaction, nbt={interaction:{}}] run function lobby:zzzzzzzzzzzzzzzz/closet_door

execute as @e[tag=int.discord, type=interaction, nbt={interaction:{}}] run tellraw @p {"text":"https://discord.gg/ehGE3HsWbW","color":"light_purple","clickEvent":{"action":"open_url","value":"https://discord.gg/ehGE3HsWbW"}}
execute as @e[tag=int.discord, type=interaction, nbt={interaction:{}}] run data remove entity @s interaction

execute as @e[tag=int.boosty, type=interaction, nbt={interaction:{}}] run tellraw @p {"text":"https://boosty.to/tagesbw","color":"gold","clickEvent":{"action":"open_url","value":"https://boosty.to/tagesbw"}}
execute as @e[tag=int.boosty, type=interaction, nbt={interaction:{}}] run data remove entity @s interaction
function lobby:zzzzzzzzzzzzzzzz/light

#- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Проверки на анимации
execute if entity @s[tag=play,tag=!pl.anim] rotated ~180 0 positioned ^ ^ ^0.20 run tp @e[tag=icon.player] ~ ~0.5 ~ ~ ~
data modify storage main temp set from entity @s Pos
execute store result score *x main_score run data get storage main temp[0] 100
execute store result score *z main_score run data get storage main temp[2] 100
scoreboard players operation *x2 main_score = *x main_score
scoreboard players operation *z2 main_score = *z main_score
scoreboard players operation *x2 main_score -= @s pos.x
scoreboard players operation *z2 main_score -= @s pos.z
execute if entity @s[tag=play,tag=!pl.anim] run function play:animation/main_player
scoreboard players operation @s pos.x = *x main_score
scoreboard players operation @s pos.z = *z main_score
#- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# лампа
execute if entity @s[nbt={SelectedItem:{tag:{lamp:1}}},tag=!skeleton_raid] positioned ~ ~1.5 ~ run tp @e[tag=light.lamp, type=item_display] ^ ^ ^1
execute if entity @s[nbt=!{SelectedItem:{tag:{lamp:1}}}] run tp @e[tag=light.lamp, type=item_display] ~ ~15 ~
execute if entity @e[tag=iq_skeleton, distance=..12] run tag @s add skeleton_raid
execute if entity @e[tag=iq_skeleton, distance=12..] run tag @s remove skeleton_raid

# лампа без ПГ
fill ~10 ~3 ~10 ~-10 ~-3 ~-10 air replace light[level=13]
execute if entity @p[gamemode=!spectator] if entity @s[nbt={SelectedItem:{tag:{lamp:1}}},tag=!skeleton_raid] unless block ~ ~1 ~ iron_door run setblock ~ ~1 ~ light[level=13]

# детектор
function play:animation/detectors

execute if entity @p[tag=icon_camera] run function lobby:zzzzzzzzzzzzzzzz/camera_function
execute if entity @p[tag=2etash] run function lobby:zzzzzzzzzzzzzzzz/sound_skeleton

# ========================================================================================
execute as @e[tag=int.artif1, type=interaction, nbt={interaction:{}}] run give @p white_dye{display:{Name:'{"text":"Артифакт силы","color":"light_purple","italic":false}'},CustomModelData:10029,art:1}
execute as @e[tag=int.artif1, type=interaction, nbt={interaction:{}}] run kill @e[tag=int.artif1]

execute as @e[tag=int.artif3, type=interaction, nbt={interaction:{}}] run give @p white_dye{display:{Name:'{"text":"Артифакт анонимности","color":"light_purple","italic":false}'},CustomModelData:10027,art:3}
execute as @e[tag=int.artif3, type=interaction, nbt={interaction:{}}] run kill @e[tag=int.artif3]

execute as @e[tag=int.artif4, type=interaction, nbt={interaction:{}}] run give @p white_dye{display:{Name:'{"text":"Артифакт края","color":"light_purple","italic":false}'},CustomModelData:10028,art:5}
execute as @e[tag=int.artif4, type=interaction, nbt={interaction:{}}] run kill @e[tag=int.artif4]


execute if entity @s[nbt={SelectedItem:{tag:{art:1}}}] as @e[tag=int.retual, type=interaction, nbt={interaction:{}}] run function lobby:zzzzzzzzzzzzzzzz/art1
execute if entity @s[nbt={SelectedItem:{tag:{art:2}}}] as @e[tag=int.retual, type=interaction, nbt={interaction:{}}] run function lobby:zzzzzzzzzzzzzzzz/art2
execute if entity @s[nbt={SelectedItem:{tag:{art:3}}}] as @e[tag=int.retual, type=interaction, nbt={interaction:{}}] run function lobby:zzzzzzzzzzzzzzzz/art3
execute if entity @s[nbt={SelectedItem:{tag:{art:4}}}] as @e[tag=int.retual, type=interaction, nbt={interaction:{}}] run function lobby:zzzzzzzzzzzzzzzz/art4
execute if entity @s[nbt={SelectedItem:{tag:{art:5}}}] as @e[tag=int.retual, type=interaction, nbt={interaction:{}}] run function lobby:zzzzzzzzzzzzzzzz/art5
execute as @e[tag=int.retual, type=interaction, nbt={interaction:{}}] run function lobby:zzzzzzzzzzzzzzzz/retual_none
tag @p remove icon.player

# заагро
scoreboard players set *agre_skeleton main_score 0
execute as @e[tag=iq_skeleton,type=zombie,limit=1] on target run scoreboard players set *agre_skeleton main_score 1
execute if score *agre_skeleton main_score matches 1 run scoreboard players add *skeleton_sound timers 1
execute if score *agre_skeleton main_score matches 0 run scoreboard players set *skeleton_sound timers 0
execute as @e[tag=iq_skeleton,type=zombie,limit=1] on target if score *skeleton_sound timers matches 0 as @p at @s run stopsound @p master minecraft:music/player_run_for_kids
execute as @e[tag=iq_skeleton,type=zombie,limit=1] on target if score *skeleton_sound timers matches 1 as @p at @s run playsound minecraft:music/player_run_for_kids master @p


# облоко 
effect give @a saturation infinite 1 true

clear @a white_dye{killer:55}