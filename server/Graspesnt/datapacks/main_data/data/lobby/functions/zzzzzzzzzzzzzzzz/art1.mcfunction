summon item_display -241.6 9.5 22.1 {Tags:["icon.art1","artif"],item:{id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:10029}}}
clear @p white_dye{art:1}
scoreboard players add *artif_add main_score 1
data remove entity @s interaction