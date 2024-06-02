clear @p bat_spawn_egg{egg_teleport:1}
give @p bat_spawn_egg{display:{Name:'{"text":"Teleport Object","color":"yellow","italic":false}'},EntityTag:{NoGravity:1b,Invulnerable:1b,NoAI:1b,Tags:["help.teleport_object"]},egg_teleport:1,CustomModelData:8881} 1
tp @s[tag=help.teleport_object, type=bat] ~ ~-15 ~
kill @s[tag=help.teleport_object, type=bat]