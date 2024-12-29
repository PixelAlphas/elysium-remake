execute as @s[scores={arx-animtimer=0}] run function anims/animlock

execute as @s[scores={arx-animtimer=0}] at @s run camera @s fade time 1 0 0.5
execute as @s[scores={arx-animtimer=20}] at @s run camera @s set minecraft:free pos -8 91 68 facing -8 91 86
execute as @s[scores={arx-animtimer=21}] at @s run camera @s set minecraft:free ease 8 out_cubic pos -8 91 86 facing -8 99 109

execute as @s[scores={arx-animtimer=60}] at @s run title @s title Elysium: Remake

execute as @s[scores={arx-animtimer=140}] at @s run camera @s fade time 1 0 0.5

## deactivate
execute as @s[scores={arx-animtimer=160}] run scriptevent arxDialog0:player intro02
tag @s[scores={arx-animtimer=160}] remove arxanim-intro
execute as @s[scores={arx-animtimer=160}] run function anims/animunlock
