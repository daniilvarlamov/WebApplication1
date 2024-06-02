# выдать тег модели
tag @e[type=item_display, limit=1, distance=..1] add help.use.teleport

# выдать игру тег что он занят
tag @p add pl.help.use.teleport
give @p carrot_on_a_stick{display:{Name:'{"text":"Нажми для перемещения","color":"gold","italic":false,"bold":true}'},teleport:1}
give @p carrot_on_a_stick{display:{Name:'{"text":"Выкл: Свечение","color":"green","italic":false,"bold":true}'},glow:1}
clear @p bat_spawn_egg{egg_teleport:1}
give @p cat_spawn_egg{display:{Name:'{"text":"Stop Teleport Object","color":"yellow","italic":false}'},EntityTag:{DeathLootTable:none,NoGravity:1b,Invulnerable:1b,NoAI:1b,Tags:["help.stop_teleport_object"]},stop_teleport_object:1} 1

# подсветить обект
data modify entity @e[type=item_display, limit=1, distance=..1] Glowing set value 1

# невидимость маркеру
effect give @s invisibility infinite 1 true