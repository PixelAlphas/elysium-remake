execute as @s[scores={arx-animtimer=0}] run function anims/animlock

execute as @s[scores={arx-animtimer=0}] at @s run camera @s set minecraft:free ease 1 out_expo pos ~~6~ facing @s
execute as @s[scores={arx-animtimer=0}] run playsound arx:falling
execute as @s[scores={arx-animtimer=20}] run function sys/checkpoint
tag @s[scores={arx-animtimer=20}] add arxanim-awaking
execute as @s[scores={arx-animtimer=20}] run scriptevent arxDialog0:player falling
tag @s[scores={arx-animtimer=20}] remove arxanim-fallen_spawn
execute as @s[scores={arx-animtimer=20}] run function anims/animunlock