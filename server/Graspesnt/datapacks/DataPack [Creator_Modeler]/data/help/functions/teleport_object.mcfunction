# Если игрок заспавнит яйцо телепортации
execute as @e[tag=help.teleport_object, type=bat, limit=1] at @s if entity @e[type=item_display, distance=..1, sort=random, limit=1] unless entity @p[tag=pl.help.use.teleport] run function help:open_object

# Перемещение обекта
execute as @p[tag=pl.help.use.teleport] at @s run tp @e[tag=help.teleport_object, type=bat, limit=1] ^ ^1.5 ^2
execute if entity @p[nbt={SelectedItem:{tag:{teleport:1}}}] if score @p main_carrot matches 1.. run function help:teleport

execute if entity @p[nbt={SelectedItem:{tag:{glow:1}}}] if score @p main_carrot matches 1.. run data modify entity @e[type=item_display, limit=1, tag=help.use.teleport] Glowing set value 0

# Заверщить Перемещение обекта
execute as @e[tag=help.teleport_object, type=bat, limit=1] at @s if entity @e[tag=help.stop_teleport_object] run function help:stop_teleport

# Если обекта нету то..
execute as @e[tag=help.teleport_object, type=bat, limit=1] at @s unless entity @e[type=item_display, limit=1, distance=..1] unless entity @p[tag=pl.help.use.teleport] run function help:kill_teleport
