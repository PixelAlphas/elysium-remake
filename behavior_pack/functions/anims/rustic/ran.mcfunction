tag @s[scores={arx-animtimer=0}] add animTimerTag
inputpermission set @s[scores={arx-animtimer=0}] camera disabled
execute as @s[scores={arx-animtimer=0}] at @s run camera @s set minecraft:free ease 1 out_expo pos 1.84 86.86 48.68 facing -10 84 55
execute as @s[scores={arx-animtimer=0}] at @s run execute as @e[x=-8,y=83,z=51,r=10,type=arx:rustic] at @s run tp @s -8 83 51
execute as @s[scores={arx-animtimer=0}] at @s run execute as @e[x=-8,y=83,z=51,r=10,type=arx:rustic] at @s run playanimation @s animation.arx.rustic.run
execute as @s[scores={arx-animtimer=0}] at @s run execute as @e[x=-8,y=83,z=51,r=10,type=arx:rustic] at @s run replaceitem entity @s slot.weapon.offhand 0 arx:cutscene
execute as @s[scores={arx-animtimer=2}] at @s run execute as @e[x=-8,y=83,z=51,r=10,type=arx:rustic] at @s run tp @s ~~~1
execute as @s[scores={arx-animtimer=29..59}] at @s run execute as @e[x=-8,y=83,z=51,r=10,type=arx:rustic] at @s run tp @s ~~~0.2
execute as @s[scores={arx-animtimer=60}] at @s run execute as @e[x=-8,y=83,z=51,r=10,type=arx:rustic] at @s run event entity @s arx:remove

## deactivate
execute as @s[scores={arx-animtimer=50}] at @s run camera @s set minecraft:free ease 1 in_cubic pos ~~1.8~
execute as @s[scores={arx-animtimer=70}] at @s run camera @s clear
execute as @s[scores={arx-animtimer=70}] at @s run scriptevent arxDialog0:player intro01
inputpermission set @s[scores={arx-animtimer=70}] camera enabled
tag @s[scores={arx-animtimer=70}] remove arxanim-rustic_ran
tag @s[scores={arx-animtimer=70}] remove animTimerTag
scoreboard players set @s[scores={arx-animtimer=70}] arx-animtimer 0
