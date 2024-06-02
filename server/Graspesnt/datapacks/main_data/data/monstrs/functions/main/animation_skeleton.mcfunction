
#
execute as @e[tag=iq_skeleton,type=zombie,limit=1] at @s run tp @e[tag=icon_skeleton,type=item_display,limit=1] ~ ~0.5 ~ ~180 ~

# Если IQ Motion не будит равен 0
execute as @e[tag=iq_skeleton,type=zombie,limit=1,nbt=!{Motion:[0.0d,0.0d,0.0d]}] run data modify entity @e[tag=icon_skeleton,type=item_display,limit=1] item.tag.CustomModelData set value 13

# Если IQ Motion будит равен 0
execute as @e[tag=iq_skeleton,type=zombie,limit=1,nbt={Motion:[0.0d,0.0d,0.0d]}] run data modify entity @e[tag=icon_skeleton,type=item_display,limit=1] item.tag.CustomModelData set value 12

# Мностар затригерился
scoreboard players add *skeleton_triggered main_score 1

#
title @p actionbar ""
