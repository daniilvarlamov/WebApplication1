# начало анимации.
execute if score *skrimer_skeleton timers matches 1.. run scoreboard players add *skrimer_skeleton timers 1
execute if score *skrimer_skeleton timers matches 2 run tp @e[type=zombie, tag=iq_skeleton, limit=1] -227 9 19

## +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

execute if score *skrimer_skeleton timers matches 20 run scoreboard players set *sound_skeleton timers 0
execute if score *skrimer_skeleton timers matches 2 as @p at @s positioned ~ ~0.5 ~ positioned ^ ^ ^1 positioned ^-1 ^ ^ summon item_display run function anim:zzzzzzzzzzzzzzzzzz/respawn_skelton
execute if score *skrimer_skeleton timers matches 2 as @p at @s run summon zombie ~ ~ ~ {DeathLootTable:"none",NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["camera"]}
execute if score *skrimer_skeleton timers matches 2 as @p at @s run tp @e[tag=camera, type=zombie, limit=1] ~ ~ ~ facing entity @e[tag=obj.skrimer_skeleton, limit=1] eyes
execute if score *skrimer_skeleton timers matches 2 as @p at @s run playsound minecraft:game/skrimer master @p

execute if score *skrimer_skeleton timers matches 2 run gamemode spectator @p
execute if score *skrimer_skeleton timers matches 2 run title @p times 0 20 20
execute if score *skrimer_skeleton timers matches 2 run title @p title [{"text":"\u0010","font":"icons","color":"#000000"}]

execute if score *skrimer_skeleton timers matches 20 run title @p times 0 20 20
execute if score *skrimer_skeleton timers matches 20 run title @p title [{"text":"\uF92C","font":"render","color":"#000002"},{"text":"\uF92C","font":"render","color":"#000003"}]

execute if score *skrimer_skeleton timers matches 20 run stopsound @p master minecraft:music/player_run_for_kids
execute if score *skrimer_skeleton timers matches 20 run gamemode adventure @p
execute if score *skrimer_skeleton timers matches 20 run kill @e[tag=camera, type=zombie, limit=1]
execute if score *skrimer_skeleton timers matches 20 run kill @e[tag=obj.skrimer_skeleton, type=item_display, limit=1]
execute if score *skrimer_skeleton timers matches 20 run tp @p -175.49 13.00 16.49 -1709.70 0.63
execute if score *skrimer_skeleton timers matches 20 run title @p actionbar [" ",{"text": "\u0009","font": "icons"},{"text":" - Я тоже.","color":"gray"}]
## +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

execute if score *skrimer_skeleton timers matches 20.. run scoreboard players set *skrimer_skeleton timers 0