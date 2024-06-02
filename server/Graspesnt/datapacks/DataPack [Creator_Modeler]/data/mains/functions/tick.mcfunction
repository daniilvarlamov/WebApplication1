#===================================================================
#             [Игровая основа]
execute as @a at @a run function mains:tick_player
#===================================================================
##000000000000000000000000000000000000000000000000000000000000000000
# Анимация


# Яйцо вращений 
function help:rotated_egg


# Телепортка обектов
function help:teleport_object


# Модельи
execute if entity @p[tag=redactor] run function help:chest_object


# очистка общей марковки
scoreboard players set @p main_carrot 0