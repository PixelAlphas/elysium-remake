
## Player [ Anim ]
execute as @a[x=-1000,y=46,z=-1000,dx=2000,dy=1,dz=2000,tag=!devbuild] run tag @s add arxanim-fallen_spawn

## Rustic [ Anim ]
execute as @a[x=1,y=83,z=42,r=2,tag=!devbuild] run execute as @e[x=-8,y=83,z=51,r=4,type=arx:rustic] at @s run tag @a[x=1,y=83,z=42,r=2] add arxanim-rustic_ran

## Checkpoints
execute as @a[x=-0,y=51,z=0,r=2,scores={arx-checkpoint=!0}] at @s run function objects/checkpoints/00
execute as @a[x=-1,y=65,z=36,r=2,scores={arx-checkpoint=!1}] at @s run function objects/checkpoints/01
execute as @a[x=6,y=83,z=37,r=2,scores={arx-checkpoint=!2}] at @s run function objects/checkpoints/02
execute as @a[x=-8,y=85,z=73,r=2,scores={arx-checkpoint=!3}] at @s run function objects/checkpoints/03
execute as @a[x=-8,y=97,z=146,r=2,scores={arx-checkpoint=!4}] at @s run function objects/checkpoints/04
execute as @a[x=23,y=106,z=115,r=2,scores={arx-checkpoint=!5}] at @s run function objects/checkpoints/05
execute as @a[x=13,y=120,z=109,r=2,scores={arx-checkpoint=!6}] at @s run function objects/checkpoints/06
execute as @a[x=22,y=100,z=146,r=2,scores={arx-checkpoint=!7}] at @s run function objects/checkpoints/07
execute as @a[x=30,y=106,z=166,r=2,scores={arx-checkpoint=!8}] at @s run function objects/checkpoints/08
execute as @a[x=-32,y=100,z=122,r=2,scores={arx-checkpoint=!9}] at @s run function objects/checkpoints/09
execute as @a[x=-33,y=109,z=99,r=2,scores={arx-checkpoint=!10}] at @s run function objects/checkpoints/10
execute as @a[x=-48,y=104,z=146,r=2,scores={arx-checkpoint=!11}] at @s run function objects/checkpoints/11
execute as @a[x=-47,y=109,z=171,r=2,scores={arx-checkpoint=!12}] at @s run function objects/checkpoints/12

## Objects
execute as @a[x=7,y=50,z=7,dx=-13,dy=20,dz=0,tag=!arxobject-obj00] at @s run function objects/00
execute as @a[x=2,y=64,z=39,r=3,tag=!arxobject-obj01] at @s run function objects/01
execute as @a[x=-10,y=67,z=35,r=3,tag=!arxobject-obj02] at @s run function objects/02
execute as @a[x=-12,y=68,z=28,r=3,tag=!arxobject-obj03] at @s run function objects/03
execute as @a[x=-8,y=86,z=79,r=6,tag=!arxobject-obj04] at @s run function objects/04
execute as @a[x=-8,y=97,z=146,r=8,tag=!arxobject-obj05] at @s run function objects/05
execute as @a[x=-11,y=104,z=143,r=3,tag=!arxobject-obj07] at @s run function objects/07

## Objects that stop speedrun for now lmao
execute as @a[x=7,y=98,z=131,r=4,tag=!arxobject-obj06] at @s run function objects/06
execute as @a[x=13,y=98,z=146,r=4,tag=!arxobject-obj06] at @s run function objects/06
execute as @a[x=7,y=98,z=161,r=4,tag=!arxobject-obj06] at @s run function objects/06
execute as @a[x=-8,y=98,z=168,r=4,tag=!arxobject-obj06] at @s run function objects/06
execute as @a[x=-23,y=98,z=161,r=4,tag=!arxobject-obj06] at @s run function objects/06
execute as @a[x=-28,y=98,z=146,r=4,tag=!arxobject-obj06] at @s run function objects/06
execute as @a[x=-23,y=98,z=131,r=4,tag=!arxobject-obj06] at @s run function objects/06

## Objects for hint.
execute as @a[x=7,y=98,z=131,r=4,tag=arxobject-obj06,tag=!arxobject-obj08] at @s run function objects/08
execute as @a[x=13,y=98,z=146,r=4,tag=arxobject-obj06,tag=!arxobject-obj08] at @s run function objects/08
execute as @a[x=7,y=98,z=161,r=4,tag=arxobject-obj06,tag=!arxobject-obj08] at @s run function objects/08
execute as @a[x=-8,y=98,z=168,r=4,tag=arxobject-obj06,tag=!arxobject-obj08] at @s run function objects/08
execute as @a[x=-23,y=98,z=161,r=4,tag=arxobject-obj06,tag=!arxobject-obj08] at @s run function objects/08
execute as @a[x=-28,y=98,z=146,r=4,tag=arxobject-obj06,tag=!arxobject-obj08] at @s run function objects/08
execute as @a[x=-23,y=98,z=131,r=4,tag=arxobject-obj06,tag=!arxobject-obj08] at @s run function objects/08
