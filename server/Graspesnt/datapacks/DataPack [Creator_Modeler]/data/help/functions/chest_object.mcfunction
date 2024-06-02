execute as @a at @s run tp @e[tag=help.chest_model, type=interaction] ~ ~2.5 ~

# если игрок посмотрит на верх
execute as @a at @s unless predicate mains:at_chest_models run tp @e[tag=help.chest, type=chest_minecart, limit=1] ~ ~10 ~
execute as @a at @s if predicate mains:at_chest_models run tp @e[tag=help.chest, type=chest_minecart, limit=1] ~ ~1 ~

execute as @a at @s unless predicate mains:at_chest_models run tp @e[tag=help.chest2, type=chest_minecart, limit=1] ~2 ~3 ~
execute as @a at @s if predicate mains:at_chest_models run tp @e[tag=help.chest2, type=chest_minecart, limit=1] ~2 ~3 ~
# ================================================================================
# Сундук

## /summon chest_minecart ~ ~ ~ {Tags:["help.chest"]}

## /summon chest_minecart ~ ~ ~ {Tags:["help.chest2"]}
# I если это мебель
execute as @e[tag=help.chest, type=chest_minecart, limit=1] run function help:chestloot_1

# II если это мебель
execute as @e[tag=help.chest2, type=chest_minecart, limit=1] run function help:chestloot_2