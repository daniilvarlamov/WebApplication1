# задаём параметры item display
data merge entity @s {Tags:["obj.animaton2"],item:{id:"minecraft:potion",Count:1b,tag:{CustomModelData:2}}}

# ============================================================================= #
#    Формула зацикливания, и контролирования obj анимаций.
#    ((([/time query gametime] % 24000) - starting frame) % total duration)
# ============================================================================= #

# I - Записываем gametime в основу
execute store result score *gametime main_score run time query gametime

# II - Вычисляем проценты gametime от const. Константа = animation tick.
scoreboard players operation *gametime main_score %= *800 const

# III - Переделываем результат в формат сплашнова цвета. Выводной gametime это тики анимации.
execute store result entity @s item.tag.CustomPotionColor int 1 run scoreboard players add *gametime main_score 0