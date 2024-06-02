data modify entity @e[type=item_display, limit=1, distance=..1] Rotation.[0] set from entity @p Rotation.[0]
execute store result score *help_rotationdata_as main_score run data get entity @e[type=item_display, limit=1, distance=..1] Rotation.[0]
scoreboard players add *help_rotationdata_as main_score 180
execute store result entity @e[type=item_display, limit=1, distance=..1] Rotation.[0] float 1 run scoreboard players get *help_rotationdata_as main_score