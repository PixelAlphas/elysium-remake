## Anims
execute as @a[tag=arxanim-awaking] run function anims/player/awaking

## Fall check
execute as @a[tag=arxanim-fallen_spawn] run function anims/player/fallen_spawn

## Initialize 
execute as @a[tag=!arx-initialize] at @s run scriptevent arxResetProperty:h h
execute as @a run tag @s add arx-initialize

scoreboard players add @a[tag=animTimerTag] arx-animtimer 1
