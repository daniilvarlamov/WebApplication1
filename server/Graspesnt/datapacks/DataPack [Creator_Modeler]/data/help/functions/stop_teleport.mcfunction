tp @e[tag=help.stop_teleport_object] ~ ~-15 ~

data modify entity @e[type=item_display, limit=1, tag=help.use.teleport] Glowing set value 0
tag @e[type=item_display, limit=1, tag=help.use.teleport] remove help.use.teleport
clear @p carrot_on_a_stick{teleport:1}
clear @p carrot_on_a_stick{glow:1}
clear @p cat_spawn_egg{stop_teleport_object:1}
kill @e[tag=help.stop_teleport_object]
give @p bat_spawn_egg{display:{Name:'{"text":"Teleport Object","color":"yellow","italic":false}'},EntityTag:{NoGravity:1b,Invulnerable:1b,NoAI:1b,Tags:["help.teleport_object"]},egg_teleport:1,CustomModelData:8881} 1
kill @e[tag=help.teleport_object, type=bat, limit=1]
tag @p remove pl.help.use.teleport