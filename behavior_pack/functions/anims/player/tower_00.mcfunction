execute as @s[scores={arx-animtimer=0}] run function anims/animlock

execute as @s[scores={arx-animtimer=0}] run scriptevent arxDialog0:player intro03
execute as @s[scores={arx-animtimer=0}] at @s run camera @s set minecraft:free ease 1 out_cubic pos -8 97 140 facing -8 113 150

## deactivate
tag @s[scores={arx-animtimer=80}] remove arxanim-tower_00
execute as @s[scores={arx-animtimer=80}] run function anims/animunlock
