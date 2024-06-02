# /summon item_display ~ ~0.5 ~ {Tags:["icon_skeleton"],item:{id:"minecraft:red_dye",Count:1b,tag:{CustomModelData:13}}}
# /summon zombie ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["iq_skeleton"]}
# skeleton animation
execute as @e[tag=iq_skeleton,type=zombie,limit=1] at @s run scoreboard players set *skeleton_triggered main_score 0
execute as @e[tag=iq_skeleton,type=zombie,limit=1] at @s run tp @e[tag=icon_skeleton,type=item_display,limit=1] ~ ~-10 ~ ~180 ~
execute as @e[tag=iq_skeleton,type=zombie,limit=1] on target run function monstrs:main/animation_skeleton
execute as @a at @s if entity @e[tag=iq_skeleton,type=zombie,limit=1,distance=..5] if score *skeleton_triggered main_score matches 0 run title @p actionbar [" ",{"text": "\u0008","font": "icons"},{"text":" - У меня плохое причюствие.","color":"gray"}]