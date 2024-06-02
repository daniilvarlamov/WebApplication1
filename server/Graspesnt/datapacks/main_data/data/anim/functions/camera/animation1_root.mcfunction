# без действие 5 сек
# 00000000000000000000000000000000000000000000000000000000000000000000000000000000000
execute if score *animation1 timers matches 3440 run tp @s 3.1 9.7 13.2 126.4 8.1
execute if score *animation1 timers matches 3441..3620 run tp @s ~-0.03 9.7 ~-0.03 126.6 8.1
# 00000000000000000000000000000000000000000000000000000000000000000000000000000000000
execute if score *animation1 timers matches 3440 run playsound minecraft:zzzzzzzzzz/start/les master @p

execute if score *animation1 timers matches 3460 run playsound minecraft:voice/anim1/root/1 master @p ~ ~ ~ 20 1 1

execute if score *animation1 timers matches 3480..3565 run title @p actionbar [" ",{"text": "\u0008","font": "icons"},{"text":" - Ну всё, двигатель заглох, колёса проколоты.","color":"gray"}]
execute if score *animation1 timers matches 3565..3620 run title @p actionbar [" ",{"text": "\u0008","font": "icons"},{"text":" - Мне больше ничего не остаётся.","color":"gray"}]
execute if score *animation1 timers matches 3620..3700 run title @p actionbar [" ",{"text": "\u0008","font": "icons"},{"text":" - Алиса, позвони в 911.","color":"gray"}]

# 00000000000000000000000000000000000000000000000000000000000000000000000000000000000
execute if score *animation1 timers matches 3620..3850 run tp @s -6.1 12.3 3.2 207 41
# 00000000000000000000000000000000000000000000000000000000000000000000000000000000000

execute if score *animation1 timers matches 3720 run playsound minecraft:voice/anim1/root/alisa1 master @p ~ ~ ~ 20 1 1
execute if score *animation1 timers matches 3720..3760 run title @p actionbar [" ",{"text": "\u0009","font": "icons"},{"text":" - Связь отсудтствует.","color":"gray"}]

execute if score *animation1 timers matches 3770 run playsound minecraft:voice/anim1/root/2 master @p ~ ~ ~ 20 1 1
execute if score *animation1 timers matches 3770..3840 run title @p actionbar [" ",{"text": "\u0008","font": "icons"},{"text":" - Эм. Что. Всмысле нет связь.","color":"gray"}]
execute if score *animation1 timers matches 3840..3870 run title @p actionbar [" ",{"text": "\u0008","font": "icons"},{"text":" - Ты же только что отправляла сообщение.","color":"gray"}]

execute if score *animation1 timers matches 3900 run playsound minecraft:voice/anim1/root/alisa2 master @p ~ ~ ~ 20 1 1
execute if score *animation1 timers matches 3900..3950 run title @p actionbar [" ",{"text": "\u0009","font": "icons"},{"text":" - Ну а что я могу сделать, интернета нет.","color":"gray"}]

# 00000000000000000000000000000000000000000000000000000000000000000000000000000000000
execute if score *animation1 timers matches 3850..4090 run tp @s -1.5 10 0.4 -283 -8.7
# 00000000000000000000000000000000000000000000000000000000000000000000000000000000000

execute if score *animation1 timers matches 3970 run playsound minecraft:voice/anim1/root/3 master @p ~ ~ ~ 20 1 1
execute if score *animation1 timers matches 3970..4010 run title @p actionbar [" ",{"text": "\u0008","font": "icons"},{"text":" - Ох, боже, ладно.","color":"gray"}]
execute if score *animation1 timers matches 4010..4060 run title @p actionbar [" ",{"text": "\u0008","font": "icons"},{"text":" - Как появится связь сразу набирай!","color":"gray"}]
# 00000000000000000000000000000000000000000000000000000000000000000000000000000000000
execute if score *animation1 timers matches 4090..4092 run tp @s -5.5 11 2.5 -89.4 1
# 00000000000000000000000000000000000000000000000000000000000000000000000000000000000

# 11111111111111111111111111111111111111111111111111111111111111111111111111111111111
execute if score *animation1 timers matches 4093 run gamemode adventure @p
execute if score *animation1 timers matches 4093 run effect give @p minecraft:invisibility infinite 1 true
execute if score *animation1 timers matches 4093 run tag @p add play
execute if score *animation1 timers matches 4093 run kill @e[tag=obj.animaton2, type=item_display]
execute if score *animation1 timers matches 4093..4200 run tp @s 0 -15 0
# 11111111111111111111111111111111111111111111111111111111111111111111111111111111111
execute if score *animation1 timers matches 4080 run playsound minecraft:voice/anim1/root/alisa3 master @p ~ ~ ~ 20 1 1
execute if score *animation1 timers matches 4080..4125 run title @p actionbar [" ",{"text": "\u0009","font": "icons"},{"text":" - Как только я смогу поймать интернет.","color":"gray"}]
execute if score *animation1 timers matches 4125..4130 run title @p actionbar [" ",{"text": "\u0009","font": "icons"},{"text":" - Я вызову.","color":"gray"}]
