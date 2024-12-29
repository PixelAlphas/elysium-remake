execute as @s at @s run camera @s clear
inputpermission set @s camera enabled
inputpermission set @s movement enabled
tag @s remove animTimerTag
tag @s add arx-energyjump
scoreboard players set @s arx-animtimer 0