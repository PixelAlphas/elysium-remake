execute as @s[scores={arx-animtimer=0}] run function anims/animlock

execute as @s[scores={arx-animtimer=0}] at @s run camera @s set minecraft:free ease 1 out_expo pos ^-4 ^1 ^4 facing @s
playanimation @s[scores={arx-animtimer=0}] animation.arx.player.awaken
replaceitem entity @s[scores={arx-animtimer=0}] slot.weapon.offhand 0 arx:cutscene

replaceitem entity @s[scores={arx-animtimer=128}] slot.weapon.offhand 0 air
inputpermission set @s[scores={arx-animtimer=128}] camera enabled

## deactivate
execute as @s[scores={arx-animtimer=110}] at @s run camera @s set minecraft:free ease 1 in_cubic pos ~~1.8~
tag @s[scores={arx-animtimer=130}] remove arxanim-awaking
execute as @s[scores={arx-animtimer=130}] run function anims/animunlock
