
# задаём параметры item display
data merge entity @s {Rotation:[-90F,0F],Tags:["obj.animaton4"],item:{id:"minecraft:potion",Count:1b,tag:{CustomModelData:6}}}

# ============================================================================= #
#    Формула зацикливания, и контролирования obj анимаций.
#    ((([/time query gametime] % 24000) - starting frame) % total duration)
# ============================================================================= #

# I - Записываем gametime в основу
execute store result score *gametime main_score run time query gametime

# II - Вычисляем проценты gametime от const. Константа = animation tick.
scoreboard players operation *gametime main_score %= *680 const

# III - Переделываем результат в формат сплашнова цвета. Выводной gametime это тики анимации.
execute store result entity @s item.tag.CustomPotionColor int 1 run scoreboard players add *gametime main_score 0

#execute store result score *gametime main_score run time query gametime
#scoreboard players operation *gametime main_score %= *680 const
#scoreboard players operation #temp main_score = *gametime main_score
#scoreboard players operation #temp2 main_score = *gametime main_score
#scoreboard players operation #temp main_score %= *256 const
#scoreboard players operation #temp2 main_score /= *256 const
#scoreboard players operation #temp2 main_score *= *256 const
#scoreboard players operation #temp main_score += #temp2 main_score
#execute store result entity @s item.tag.CustomPotionColor int 1 run scoreboard players get #temp main_score