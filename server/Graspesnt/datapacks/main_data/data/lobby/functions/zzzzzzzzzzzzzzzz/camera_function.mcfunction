scoreboard players add *camera_function timers 1
execute if entity @s[predicate=main:at_cameratr] run scoreboard players add *camera_function_at timers 1


execute if score *camera_function timers matches 1 run title @s times 0 40 0

execute if score *camera_function timers matches 1 run title @p title [{"text":"\u0011","font":"icons","color":"#20000"}]

execute if score *camera_function timers matches 35 run title @p title [{"text":"\u0012","font":"icons","color":"#20000"}]
execute if score *camera_function timers matches 40 run title @p title [{"text":"\u0011","font":"icons","color":"#20000"}]
execute if score *camera_function timers matches 77 run title @p title [{"text":"\u0011","font":"icons","color":"#20000"}]
execute if score *camera_function timers matches 80 run title @p title [{"text":"\u0013","font":"icons","color":"#20000"}]
execute if score *camera_function timers matches 90 run title @p title [{"text":"\u0014","font":"icons","color":"#20000"}]
execute if score *camera_function timers matches 100 run title @p title [{"text":"\u0011","font":"icons","color":"#20000"}]
execute if score *camera_function timers matches 139 run title @p title [{"text":"\u0011","font":"icons","color":"#20000"}]
execute if score *camera_function timers matches 160 run title @p title [{"text":"\u0011","font":"icons","color":"#20000"}]
execute if score *camera_function timers matches 170 run title @p title [{"text":"\u0015","font":"icons","color":"#20000"}]
execute if score *camera_function timers matches 180 run title @p title [{"text":"\u0013","font":"icons","color":"#20000"}]
execute if score *camera_function timers matches 200 run title @p title [{"text":"\u0011","font":"icons","color":"#20000"}]
execute if score *camera_function timers matches 230 run scoreboard players set *camera_function timers 0

execute as @e[tag=iq_skeleton, type=zombie, limit=1] at @s run tp @e[tag=text.camera, type=minecraft:text_display, limit=1] ^ ^ ^1.5

execute if score *camera_function_at timers matches 0 run kill @e[tag=text.camera, type=minecraft:text_display, limit=1]
execute if score *camera_function_at timers matches 2 run summon text_display ~ ~ ~ {billboard:"center",shadow:1b,Tags:["text.camera"],text:'{"text":"\\u0016","font":"icons"}',background:16711680}
execute if score *camera_function_at timers matches 40.. run scoreboard players add *camera_function_at timers 0