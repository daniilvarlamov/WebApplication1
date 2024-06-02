execute as @e[type=minecraft:interaction, tag=int.detector, nbt={interaction:{}}] if entity @p[nbt=!{SelectedItem:{tag:{blue_cart:1}}}] run title @p actionbar "Вам нужна синяя карта"
execute as @e[type=minecraft:interaction, tag=int.detector, nbt={interaction:{}}] if entity @p[nbt={SelectedItem:{tag:{blue_cart:1}}}] run scoreboard players add *timer_open_blue timers 1
execute if score *timer_open_blue timers matches 1.. run scoreboard players add *timer_open_blue timers 1
execute if score *timer_open_blue timers matches 2 run setblock -152 10 9 redstone_block
execute if score *timer_open_blue timers matches 40.. run setblock -152 10 9 air
execute if score *timer_open_blue timers matches 40.. run scoreboard players set *timer_open_blue timers 0
execute as @e[type=minecraft:interaction, tag=int.detector, nbt={interaction:{}}] run data remove entity @s interaction


execute as @e[type=minecraft:interaction, tag=int.detector2, nbt={interaction:{}}] if entity @p[nbt=!{SelectedItem:{tag:{red_cart:1}}}] run title @p actionbar "Вам нужна красная карта"
execute as @e[type=minecraft:interaction, tag=int.detector2, nbt={interaction:{}}] if entity @p[nbt={SelectedItem:{tag:{red_cart:1}}}] run scoreboard players add *timer_open_red timers 1
execute if score *timer_open_red timers matches 1.. run scoreboard players add *timer_open_red timers 1
execute if score *timer_open_red timers matches 2 run setblock -131 10 29 redstone_block
execute if score *timer_open_red timers matches 39.. run setblock -131 10 29 air
execute if score *timer_open_red timers matches 40.. run scoreboard players set *timer_open_red timers 0
execute as @e[type=minecraft:interaction, tag=int.detector2, nbt={interaction:{}}] run data remove entity @s interaction


execute as @e[type=minecraft:interaction, tag=int.detector3, nbt={interaction:{}}] if entity @p[nbt=!{SelectedItem:{tag:{red_cart:1}}}] run title @p actionbar "Вам нужна красная карта"
execute as @e[type=minecraft:interaction, tag=int.detector3, nbt={interaction:{}}] if entity @p[nbt={SelectedItem:{tag:{red_cart:1}}}] run scoreboard players add *timer_open_red timers 1
execute if score *timer_open_red timers matches 1.. run scoreboard players add *timer_open_red timers 1
execute if score *timer_open_red timers matches 2 run setblock -130 11 -23 redstone_block
execute if score *timer_open_red timers matches 40.. run setblock -130 11 -23 air
execute if score *timer_open_red timers matches 40.. run scoreboard players set *timer_open_red timers 0
execute as @e[type=minecraft:interaction, tag=int.detector3, nbt={interaction:{}}] run data remove entity @s interaction


execute as @e[type=minecraft:interaction, tag=int.detector4, nbt={interaction:{}}] if entity @p[nbt=!{SelectedItem:{tag:{black_cart:1}}}] run title @p actionbar "Вам нужна чёрная карта"
execute as @e[type=minecraft:interaction, tag=int.detector4, nbt={interaction:{}}] if entity @p[nbt={SelectedItem:{tag:{black_cart:1}}}] run scoreboard players add *timer_open_black timers 1
execute if score *timer_open_black timers matches 1.. run scoreboard players add *timer_open_black timers 1
execute if score *timer_open_black timers matches 2 run setblock -145 10 21 redstone_block
execute if score *timer_open_black timers matches 40.. run setblock -145 10 21 air
execute if score *timer_open_black timers matches 40.. run scoreboard players set *timer_open_black timers 0
execute as @e[type=minecraft:interaction, tag=int.detector4, nbt={interaction:{}}] run data remove entity @s interaction