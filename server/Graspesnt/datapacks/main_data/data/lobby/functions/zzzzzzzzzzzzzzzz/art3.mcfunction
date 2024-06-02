summon item_display -243.3 9.5 22.1 {Tags:["icon.art1","artif"],item:{id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:10027}}}
clear @p white_dye{art:3}
scoreboard players add *artif_add main_score 1
data remove entity @s interaction