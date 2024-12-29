## Anims
execute as @a[tag=arxanim-awaking] run function anims/player/awaking
execute as @a[tag=arxanim-rustic_ran] run function anims/rustic/ran

## Cutscenes
execute as @a[tag=arxanim-intro] run function anims/player/intro
execute as @a[tag=arxanim-tower_00] run function anims/player/tower_00
execute as @a[tag=arxanim-speedrun_stopper] run function anims/player/speedrun_stopper
execute as @a[tag=arxanim-credit] run function anims/player/credit

## Fall check
execute as @a[tag=arxanim-fallen_spawn] run function anims/player/fallen_spawn


scoreboard players add @a[tag=animTimerTag] arx-animtimer 1
