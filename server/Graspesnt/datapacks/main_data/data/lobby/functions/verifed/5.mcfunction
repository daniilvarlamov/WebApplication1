tellraw @a ["",{"text": "\u0004","font": "icons"},{"text": " Вы успешно верифицировались ","color": "green"},{"text": "\u0004","font": "icons"}]
tp @p 71 16 -5
scoreboard players set *lobby.verifed.level main_score 0

tag @p add verifed
kill @e[tag=text.lobby.verifed]
summon text_display 79.7 14 -5 {billboard:"vertical",default_background:1b,shadow:1b,Tags:["text.lobby.start"],text:'{"text":"Старт игры","color":"gold"}'}