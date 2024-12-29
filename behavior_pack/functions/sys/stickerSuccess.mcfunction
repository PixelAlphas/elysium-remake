scoreboard players add @s arx-sticker 1
titleraw @s actionbar {"rawtext":[{"text":"Collected. §7( "},{"score":{"name":"@s","objective":"arx-sticker"}},{"text":" / 12 Left to go. )"}]}
execute as @s[scores={arx-sticker=12}] run scriptevent arxDialog0:player stickerSuccess
playsound note.bell @s