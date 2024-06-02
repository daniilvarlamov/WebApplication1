summon item_display -242.5 9.5 20.5 {Tags:["icon.art1","artif"],item:{id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:10025}}}
clear @p white_dye{art:4}
scoreboard players add *artif_add main_score 1
data remove entity @s interaction