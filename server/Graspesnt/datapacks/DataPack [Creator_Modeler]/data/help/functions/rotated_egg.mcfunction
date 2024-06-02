# Rotation [45]
execute as @e[tag=help.rotade45, type=bat, limit=1] at @s if entity @e[type=item_display, limit=1, distance=..1] run function help:rotated45

# Убить мыщку
tp @e[tag=help.rotade45, type=bat, limit=1] ~ ~-15 ~
kill @e[tag=help.rotade45, type=bat, limit=1]

## ============================================================================================================================

# Rotation [as Player]

execute as @e[tag=help.rotade_as, type=bat, limit=1] at @s run function help:rotated_as

# Убить мыщку
execute if entity @e[tag=help.rotade_as, type=bat, limit=1, distance=6..] run tp @e[tag=help.rotade_as, type=bat, limit=1] ~ ~-15 ~
execute if entity @e[tag=help.rotade_as, type=bat, limit=1, distance=6..] run kill @e[tag=help.rotade_as, type=bat, limit=1]









## ============================================================================================================================

