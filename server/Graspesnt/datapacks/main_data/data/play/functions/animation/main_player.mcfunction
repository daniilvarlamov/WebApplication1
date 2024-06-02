
# Если он стоит (C фонарём)
execute if score *x2 main_score matches 0 if score *z2 main_score matches 0 if entity @s[nbt={SelectedItem:{tag:{lamp:1}}}] run return run data modify entity @e[tag=icon.player,type=item_display,limit=1,distance=..0.75] item.tag.CustomModelData set value 9

# Если он идёт (C фонарём)
execute unless score *x2 main_score matches 0 unless score *z2 main_score matches 0 if entity @s[nbt={SelectedItem:{tag:{lamp:1}}}] run return run data modify entity @e[tag=icon.player,type=item_display,limit=1,distance=..0.75] item.tag.CustomModelData set value 10

# Если он идёт
execute unless score *x2 main_score matches 0 unless score *z2 main_score matches 0 run return run data modify entity @e[tag=icon.player,type=item_display,limit=1,distance=..0.75] item.tag.CustomModelData set value 8

# Если он стоит
execute if score *x2 main_score matches 0 if score *z2 main_score matches 0 run return run data modify entity @e[tag=icon.player,type=item_display,limit=1,distance=..0.75] item.tag.CustomModelData set value 7