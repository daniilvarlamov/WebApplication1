summon item_display -243.4 9.5 21.1 {Tags:["icon.art1","artif"],item:{id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:10028}}}
clear @p white_dye{art:5}
scoreboard players add *artif_add main_score 1
data remove entity @s interaction