execute as @s[scores={arx-animtimer=0}] run function anims/animlock

execute as @s[scores={arx-animtimer=0}] at @s run camera @s fade time 1 0 0.5
execute as @s[scores={arx-animtimer=0}] run scriptevent arxDialog0:player speedrunstopper
execute as @s[scores={arx-animtimer=20}] run function sys/checkpoint

## deactivate
tag @s[scores={arx-animtimer=30}] remove arxanim-speedrun_stopper
execute as @s[scores={arx-animtimer=30}] run function anims/animunlock
