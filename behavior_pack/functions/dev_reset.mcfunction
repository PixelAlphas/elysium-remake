## Auto-item
clear @a
## give @a command_block
## give @a light_weighted_pressure_plate
gamemode a @a

## Entity setup
kill @e[type=!player,type=!arx:lawnmower_sticker,type=!arx:lawnmower]
execute as @a at @s run scriptevent arxResetProperty:h h
summon arx:rustic -8 83 51
summon arx:rustic -6 124 146 facing -8 125 146

## Anims timer
scoreboard objectives add arx-animtimer dummy arx-animtimer
scoreboard players set @a arx-animtimer 0
tag @a remove animTimerTag

## Checkpoint
scoreboard objectives add arx-checkpoint dummy arx-checkpoint
scoreboard players set @a arx-checkpoint 0

## Sticker
scoreboard objectives add arx-sticker dummy arx-sticker
scoreboard players set @a arx-sticker 0
tag @s remove arxsticker-01
tag @s remove arxsticker-02
tag @s remove arxsticker-03
tag @s remove arxsticker-04
tag @s remove arxsticker-05
tag @s remove arxsticker-06
tag @s remove arxsticker-07
tag @s remove arxsticker-08
tag @s remove arxsticker-09
tag @s remove arxsticker-10
tag @s remove arxsticker-11
tag @s remove arxsticker-12

## Objects
tag @s remove arxobject-obj00
tag @s remove arxobject-obj01
tag @s remove arxobject-obj02
tag @s remove arxobject-obj03
tag @s remove arxobject-obj04
tag @s remove arxobject-obj05
tag @s remove arxobject-obj06
tag @s remove arxobject-obj07
tag @s remove arxobject-obj08
tag @s remove arxobject-obj09
tag @s remove arxobject-obj10
tag @s remove arxobject-obj11
tag @s remove arxobject-obj12
tag @s remove arxobject-obj13
tag @s remove arxobject-obj14
tag @s remove arxobject-obj15

## Misc
tag @s remove arx-energyjump
tag @s remove arx-indialog

execute as @a run function sys/checkpoint
