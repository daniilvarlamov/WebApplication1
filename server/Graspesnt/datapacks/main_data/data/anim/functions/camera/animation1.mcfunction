execute if score *animation1 timers matches 200..500 run tp @s ~0.02 12 -22.99 -90 0

execute if score *animation1 timers matches 500..635 run tp @s 132 10.5 -61 20 3

execute if score *animation1 timers matches 635..680 run tp @s 132 10.5 -61 ~3 4

execute if score *animation1 timers matches 680..760 run tp @s 132 10.5 -61 155 3

# без действие 5 сек
execute if score *animation1 timers matches 760..860 run tp @s 131.8 3.6 -51.9 62 23
execute if score *animation1 timers matches 760 run playsound minecraft:zzzzzzzzzz/start/car_gowing master @p

# без действие 5 сек
execute if score *animation1 timers matches 860..960 run tp @s 131.6 2.6 -49.4 174 2

# пришла смс 5 сек
execute if score *animation1 timers matches 960..1100 run tp @s 132.4 2.6 -51.2 95 -10
execute if score *animation1 timers matches 980 run playsound minecraft:zzzzzzzzzz/start/call master @p

# алиса, озвучь смс которая мне пришла. 25 сек.
# 00000000000000000000000000000000000000000000000000000000000000000000000000000000000
execute if score *animation1 timers matches 1100 run tp @s 130.8 3.3 -52.2 0 10
execute if score *animation1 timers matches 1101..1400 run tp @s ~0.005 3.3 -52.2 0 10
# 00000000000000000000000000000000000000000000000000000000000000000000000000000000000
execute if score *animation1 timers matches 1100 run playsound minecraft:voice/anim1/1 master @p ~ ~ ~ 20 1 1
execute if score *animation1 timers matches 1100..1180 run title @p actionbar [" ",{"text": "\u0008","font": "icons"},{"text":" - Алиса, озвучь  мне пожалуйста сообщение которое мне пришло.","color":"gray"}]

execute if score *animation1 timers matches 1180 run playsound minecraft:voice/anim1/2 master @p ~ ~ ~ 20 1 1
execute if score *animation1 timers matches 1180..1240 run title @p actionbar [" ",{"text": "\u0009","font": "icons"},{"text":" - Вам пришло сообщение от (Елена сын демон).","color":"gray"}]
execute if score *animation1 timers matches 1240..1330 run title @p actionbar [" ",{"text": "\u0009","font": "icons"},{"text":" - Спасибо вам Иван, что смогли освободить моего ребёнка от демонов.","color":"gray"}]
execute if score *animation1 timers matches 1330..1420 run title @p actionbar [" ",{"text": "\u0009","font": "icons"},{"text":" - Я вам очень благодарна, и в знак своей благодарности скину 2й-ной ганарар.","color":"gray"}]
# 00000000000000000000000000000000000000000000000000000000000000000000000000000000000
execute if score *animation1 timers matches 1400..1680 run tp @s ~-0.005 3.3 -52.2 0 10
# 00000000000000000000000000000000000000000000000000000000000000000000000000000000000
execute if score *animation1 timers matches 1420..1475 run title @p actionbar [" ",{"text": "\u0009","font": "icons"},{"text":" - Мой сын стал хорошо учится -.","color":"gray"}]
execute if score *animation1 timers matches 1475..1500 run title @p actionbar [" ",{"text": "\u0009","font": "icons"},{"text":" - А свои демонические игры оставил в покое.","color":"gray"}]
execute if score *animation1 timers matches 1530 run playsound minecraft:voice/anim1/3 master @p ~ ~ ~ 20 1 1
execute if score *animation1 timers matches 1540..1560 run title @p actionbar [" ",{"text": "\u0008","font": "icons"},{"text":" - *Хихикает","color":"gray"}]
execute if score *animation1 timers matches 1560..1637 run title @p actionbar [" ",{"text": "\u0008","font": "icons"},{"text":" - Мда. В наше время самый хороший экзорцист.","color":"gray"}]
execute if score *animation1 timers matches 1545 run playsound minecraft:zzzzzzzzzz/start/car_gowing master @p
execute if score *animation1 timers matches 1637..1650 run title @p actionbar [" ",{"text": "\u0008","font": "icons"},{"text":" - Это просто хороший психолог.","color":"gray"}]
execute if score *animation1 timers matches 1700 run title @p actionbar ""
execute if score *animation1 timers matches 1700 run playsound minecraft:zzzzzzzzzz/start/les master @p

# 00000000000000000000000000000000000000000000000000000000000000000000000000000000000
execute if score *animation1 timers matches 1680 run tp @s 131.6 2.6 -49.4 174 2
execute if score *animation1 timers matches 1681..1800 run tp @s 131.6 ~0.005 -49.4 174 2
execute if score *animation1 timers matches 1800..2000 run tp @s 132.4 2.6 -51.2 95 -10
# 00000000000000000000000000000000000000000000000000000000000000000000000000000000000
execute if score *animation1 timers matches 1820 run playsound minecraft:zzzzzzzzzz/start/call master @p
execute if score *animation1 timers matches 1880 run playsound minecraft:voice/anim1/4 master @p
execute if score *animation1 timers matches 1880..1920 run title @p actionbar [" ",{"text": "\u0008","font": "icons"},{"text":" - Алиса, озвучь ещё-раз пожалуйста.","color":"gray"}]

# 00000000000000000000000000000000000000000000000000000000000000000000000000000000000
execute if score *animation1 timers matches 1930 run tp @s 130.8 3.3 -52.2 0 10
execute if score *animation1 timers matches 1931..2200 run tp @s ~0.005 3.3 -52.2 0 10
# 00000000000000000000000000000000000000000000000000000000000000000000000000000000000
execute if score *animation1 timers matches 1930 run playsound minecraft:voice/anim1/5 master @p
execute if score *animation1 timers matches 1930..2000 run title @p actionbar [" ",{"text": "\u0009","font": "icons"},{"text":" - Вам пришло сообщение от (Лиза *сердечко *сердечко).","color":"gray"}]
execute if score *animation1 timers matches 2000..2060 run title @p actionbar [" ",{"text": "\u0009","font": "icons"},{"text":" - Я слышала что ты изгнал вне очередного демона).","color":"gray"}]
execute if score *animation1 timers matches 2060..2085 run title @p actionbar [" ",{"text": "\u0009","font": "icons"},{"text":" - Я очень рада за тебя.","color":"gray"}]
execute if score *animation1 timers matches 2085..2120 run title @p actionbar [" ",{"text": "\u0009","font": "icons"},{"text":" - Может быть сегодня встретимся где-то?.","color":"gray"}]
execute if score *animation1 timers matches 2160 run title @p actionbar ""

# 00000000000000000000000000000000000000000000000000000000000000000000000000000000000
execute if score *animation1 timers matches 2200..2520 run tp @s 131.0 3.3 -52.1 0 3
# 00000000000000000000000000000000000000000000000000000000000000000000000000000000000
execute if score *animation1 timers matches 2160 run playsound minecraft:voice/anim1/6 master @p
execute if score *animation1 timers matches 2160..2200 run title @p actionbar [" ",{"text": "\u0008","font": "icons"},{"text":" - Алиса, запиши голосовое.","color":"gray"}]
execute if score *animation1 timers matches 2200..2270 run title @p actionbar [" ",{"text": "\u0008","font": "icons"},{"text":" - Да. Я тут очередное сложное дело раскрыл.","color":"gray"}]
execute if score *animation1 timers matches 2270..2320 run title @p actionbar [" ",{"text": "\u0008","font": "icons"},{"text":" - Мама сыну запрещала в компьютере сидеть.","color":"gray"}]
execute if score *animation1 timers matches 2320..2400 run title @p actionbar [" ",{"text": "\u0008","font": "icons"},{"text":" - Я с ними поговорил ну, Вообщем всё хорошо.","color":"gray"}]
execute if score *animation1 timers matches 2330 run playsound minecraft:zzzzzzzzzz/start/car_gowing master @p
execute if score *animation1 timers matches 2400..2440 run title @p actionbar [" ",{"text": "\u0008","font": "icons"},{"text":" - А по поводу встретится, я не против.","color":"gray"}]
execute if score *animation1 timers matches 2440..2520 run title @p actionbar [" ",{"text": "\u0008","font": "icons"},{"text":" - Можем например у тебя под домом, в кафешке.","color":"gray"}]
execute if score *animation1 timers matches 2550 run title @p actionbar ""

# 00000000000000000000000000000000000000000000000000000000000000000000000000000000000
execute if score *animation1 timers matches 2520 run tp @s 132.5 3.6 -51.4 89 32
execute if score *animation1 timers matches 2521..2900 run tp @s ~-0.001 3.6 -51.4 89 ~-0.005
# 00000000000000000000000000000000000000000000000000000000000000000000000000000000000
execute if score *animation1 timers matches 2610 run playsound minecraft:zzzzzzzzzz/start/call master @p
execute if score *animation1 timers matches 2700 run playsound minecraft:voice/anim1/7 master @p
execute if score *animation1 timers matches 2700..2720 run title @p actionbar [" ",{"text": "\u0008","font": "icons"},{"text":" - Так ладно алиса.","color":"gray"}]
execute if score *animation1 timers matches 2720..2780 run title @p actionbar [" ",{"text": "\u0008","font": "icons"},{"text":" - Это уже личное дальше я сам давай.","color":"gray"}]
execute if score *animation1 timers matches 2800 run title @p actionbar ""

# 00000000000000000000000000000000000000000000000000000000000000000000000000000000000
execute if score *animation1 timers matches 2900..3200 run tp @s 132.2 3.2 -52.0 59 3
# 00000000000000000000000000000000000000000000000000000000000000000000000000000000000
execute if score *animation1 timers matches 2900 run playsound minecraft:voice/anim1/8 master @p
execute if score *animation1 timers matches 2900..2945 run title @p actionbar [" ",{"text": "\u0009","font": "icons"},{"text":" - Я бы вам крайне не рекомендовала использовать телефон.","color":"gray"}]
execute if score *animation1 timers matches 2945..2980 run title @p actionbar [" ",{"text": "\u0009","font": "icons"},{"text":" - Во время езды на автомобиле.","color":"gray"}]
execute if score *animation1 timers matches 3000 run title @p actionbar ""

execute if score *animation1 timers matches 3050 run playsound minecraft:voice/anim1/9 master @p
execute if score *animation1 timers matches 3050..3080 run title @p actionbar [" ",{"text": "\u0008","font": "icons"},{"text":" - Та я тебя умоляю Алиса.","color":"gray"}]
execute if score *animation1 timers matches 3080..3100 run title @p actionbar [" ",{"text": "\u0008","font": "icons"},{"text":" - Кто мне здесь может встретиться.","color":"gray"}]
execute if score *animation1 timers matches 3100 run title @p actionbar ""
execute if score *animation1 timers matches 3100 run playsound minecraft:zzzzzzzzzz/start/avarua master @p
execute if score *animation1 timers matches 3100 run title @p times 0 160 40
execute if score *animation1 timers matches 3100 run title @p title [{"text":"\uF92C","font":"render","color":"#000002"},{"text":"\uF92C","font":"render","color":"#000003"}]
execute if score *animation1 timers matches 3100 run gamemode adventure @p
execute if score *animation1 timers matches 3100 run tp @s -7.6 12 2.6 28.7 25.9
execute if score *animation1 timers matches 3180 run gamemode spectator @p
execute if score *animation1 timers matches 3200 as @a at @s run playsound minecraft:zzzzzzzzzz/start/signalka master @p ~ ~ ~ 1 0.3
execute if score *animation1 timers matches 3300 run stopsound @p master minecraft:zzzzzzzzzz/start/signalka
execute if score *animation1 timers matches 3300 run setblock -26 12 -9 barrier
execute if score *animation1 timers matches 3300 run setblock -26 12 -10 barrier
# 00000000000000000000000000000000000000000000000000000000000000000000000000000000000
execute if score *animation1 timers matches 3180..3400 run tp @s -7.6 12 2.6 28.7 25.9
# 00000000000000000000000000000000000000000000000000000000000000000000000000000000000
execute if score *animation1 timers matches 3400 run title @p times 20 40 20
execute if score *animation1 timers matches 3400 run title @p title [{"text":"\uF92C","font":"render","color":"#000002"},{"text":"\uF92C","font":"render","color":"#000003"}]
execute if score *animation1 timers matches 3430 run kill @e[type=zombie, tag=camera, limit=1] 