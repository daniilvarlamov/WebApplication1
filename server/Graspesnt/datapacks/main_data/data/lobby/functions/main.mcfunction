
# запрос на верефикацию
execute if score *animation1 timers matches ..1 run function lobby:zzzzzzzzzzzzzzzz/message_verifed


# верефикация

# I
execute if score *lobby.verifed.level main_score matches 1 run function lobby:verifed/1

# II
execute if score *lobby.verifed.level main_score matches 2 run tellraw @a ["           ",{"text": "\u0006","font": "icons"},{"text": "\u0006","font": "icons"},{"text": "\u0007","font": "icons"},{"text": "\u0007","font": "icons"},{"text": "\u0007","font": "icons"},{"text":"\n"},{"text":"   II: Стороние ресурсы","color":"green","bold":true},{"text":"\n\n"},{"text":"Перед игрой пожалуйста отключите все ресурс-паки, Кроме текущего.","color":"aqua"},{"text":"\n"},{"text":"Может привести к багам. с текстурами/моделями.","color":"aqua"},{"text":"\n"},{"text":"            Ок?: ","color": "light_purple"},{"text": "\u0001","font": "icons","clickEvent":{"action":"run_command","value":"/scoreboard players add *lobby.verifed.level main_score 1"}},{"text":"\n\n"}]

# III
execute if score *lobby.verifed.level main_score matches 3 run tellraw @a ["           ",{"text": "\u0006","font": "icons"},{"text": "\u0006","font": "icons"},{"text": "\u0006","font": "icons"},{"text": "\u0007","font": "icons"},{"text": "\u0007","font": "icons"},{"text":"\n"},{"text":" III: Потрясающая графика!","color":"green","bold":true},{"text":"\n\n"},{"text":"Если вы хотите поиграть с шейдерами включите в настройках (Потрясающая графика!).","color":"aqua"},{"text":"\n"},{"text":"Это не обязательно, но желательно.","color":"aqua"},{"text":"\n"},{"text":"            Ок?: ","color": "light_purple"},{"text": "\u0001","font": "icons","clickEvent":{"action":"run_command","value":"/scoreboard players add *lobby.verifed.level main_score 1"}},{"text":"\n\n"}]

# IV
execute if score *lobby.verifed.level main_score matches 4 run tellraw @a ["           ",{"text": "\u0006","font": "icons"},{"text": "\u0006","font": "icons"},{"text": "\u0006","font": "icons"},{"text": "\u0006","font": "icons"},{"text": "\u0007","font": "icons"},{"text":"\n"},{"text":"      IV: Озвучка *RU","color":"green","bold":true},{"text":"\n\n"},{"text":"Если вы хотите поиграть с озвучкай. Скачать её можно сдесь: =)","color":"aqua"},{"text":"\n"},{"text":"Это не обязательно, но желательно.","color":"aqua"},{"text":"\n"},{"text":"            Ок?: ","color": "light_purple"},{"text": "\u0001","font": "icons","clickEvent":{"action":"run_command","value":"/scoreboard players add *lobby.verifed.level main_score 1"}},{"text":"\n\n"}]

# V
execute if score *lobby.verifed.level main_score matches 4 run tellraw @a ["           ",{"text": "\u0006","font": "icons"},{"text": "\u0006","font": "icons"},{"text": "\u0006","font": "icons"},{"text": "\u0006","font": "icons"},{"text": "\u0006","font": "icons"},{"text":"\n"},{"text":"      V: Настройки","color":"green","bold":true},{"text":"\n\n"},{"text":"Выстовите следующие настройки - Поле зрение = 80   Прорисовка чанков = 4   Общая громкость = (на ваше усмотрение)","color":"aqua"},{"text":"\n"},{"text":"И на этом всё пожалуй.","color":"aqua"},{"text":"\n"},{"text":"            Ок?: ","color": "light_purple"},{"text": "\u0001","font": "icons","clickEvent":{"action":"run_command","value":"/scoreboard players add *lobby.verifed.level main_score 1"}},{"text":"\n\n"}]

# конец
execute if score *lobby.verifed.level main_score matches 5.. run function lobby:verifed/5