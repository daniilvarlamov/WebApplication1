# начало анимации.
execute if score *edit_game timers matches 1.. run scoreboard players add *edit_game timers 1
execute if score *edit_game timers matches 2 run scoreboard players set *artif_add main_score 0

## +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
execute if score *edit_game timers matches 2 run stopsound @p master minecraft:music/player_run_for_kids
execute if score *edit_game timers matches 2 run tag @p remove 2etash
execute if score *edit_game timers matches 2 run stopsound @p master minecraft:music/sound_skeleton

execute if score *edit_game timers matches 50 run title @p times 0 2 0
execute if score *edit_game timers matches 50 run title @p title [{"text":"\uF92C","font":"render","color":"#000002"},{"text":"\uF92C","font":"render","color":"#000003"}]

execute if score *edit_game timers matches 70 run title @p times 0 2 0
execute if score *edit_game timers matches 70 run title @p title [{"text":"\uF92C","font":"render","color":"#000002"},{"text":"\uF92C","font":"render","color":"#000003"}]

execute if score *edit_game timers matches 90 run title @p times 0 2 0
execute if score *edit_game timers matches 90 run title @p title [{"text":"\uF92C","font":"render","color":"#000002"},{"text":"\uF92C","font":"render","color":"#000003"}]

execute if score *edit_game timers matches 95 run title @p times 0 2 0
execute if score *edit_game timers matches 95 run title @p title [{"text":"\uF92C","font":"render","color":"#000002"},{"text":"\uF92C","font":"render","color":"#000003"}]

execute if score *edit_game timers matches 100 run title @p times 0 2 0
execute if score *edit_game timers matches 100 run title @p title [{"text":"\uF92C","font":"render","color":"#000002"},{"text":"\uF92C","font":"render","color":"#000003"}]

execute if score *edit_game timers matches 103 run title @p times 0 1 0
execute if score *edit_game timers matches 103 run title @p title [{"text":"\uF92C","font":"render","color":"#000002"},{"text":"\uF92C","font":"render","color":"#000003"}]

execute if score *edit_game timers matches 106 run title @p times 0 1 0
execute if score *edit_game timers matches 106 run title @p title [{"text":"\uF92C","font":"render","color":"#000002"},{"text":"\uF92C","font":"render","color":"#000003"}]

execute if score *edit_game timers matches 110 run title @p times 0 50 20
execute if score *edit_game timers matches 110 run title @p title [{"text":"\uF92C","font":"render","color":"#000002"},{"text":"\uF92C","font":"render","color":"#000003"}]

execute if score *edit_game timers matches 150 run kill @e[tag=artif]
execute if score *edit_game timers matches 150 run playsound minecraft:music/edit_game master @a
execute if score *edit_game timers matches 160 run tp @p -142.70 21.24 -10.66 -1079.59 89.75
execute if score *edit_game timers matches 160 run tellraw @p [" ",{"text": "\u0008","font": "icons"},{"text":" - Это конец Beta версии.","color":"gray"}]
## +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

execute if score *edit_game timers matches 160.. run scoreboard players set *edit_game timers 0