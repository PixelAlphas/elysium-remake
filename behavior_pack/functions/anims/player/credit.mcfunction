execute as @s[scores={arx-animtimer=0}] run function anims/animlock

execute as @s[scores={arx-animtimer=0}] at @s run title @s times 0 100 0
execute as @s[scores={arx-animtimer=0}] at @s run camera @s fade time 1 5 1
execute as @s[scores={arx-animtimer=100}] at @s run camera @s fade time 0 5 1

execute as @s[scores={arx-animtimer=20}] run scriptevent arxDialog0:player credit
execute as @s[scores={arx-animtimer=200}] at @s run camera @s fade time 0 5 1
execute as @s[scores={arx-animtimer=300}] run titleraw @s title {"rawtext":[{"text":"Elysium: Remake"}]}
execute as @s[scores={arx-animtimer=300}] at @s run playsound note.bass @s ~~~ 1 0.2
execute as @s[scores={arx-animtimer=300}] run titleraw @s actionbar {"rawtext":[{"text":"_arx:chud0;\n\n\n\n\n\n\n          Made by §eArxance (Harlow)§f"}]}
execute as @s[scores={arx-animtimer=300}] at @s run camera @s fade time 0 5 1
execute as @s[scores={arx-animtimer=400}] run titleraw @s title {"rawtext":[{"text":""}]}
execute as @s[scores={arx-animtimer=400}] at @s run playsound note.bass @s ~~~ 1 0.2
execute as @s[scores={arx-animtimer=400}] run titleraw @s actionbar {"rawtext":[{"text":"_arx:chud0;\n\n§eDevelopment§f\n - Made in 13 Days\n - Developed on a phone.\n\n§eTools§f\n - Acode\n - Pixly (Heavily Modified by Harlow)\n - FL Mobile\n - Blockbench\n\n§eHarlow's Note§f\n \"Hope you enjoy it though, I do spent this even on my work lol.\""}]}
execute as @s[scores={arx-animtimer=400}] at @s run camera @s fade time 0 5 1
execute as @s[scores={arx-animtimer=500}] run titleraw @s actionbar {"rawtext":[{"text":"_arx:chud0;\n§eSpecial Thanks§r\n - Ciosciaa \n   §7( BAO's 20k Jam hoster, The true reason of why this DEMO exists. )§r\n - Sprunkles, guava and Daethie \n   §7( Helping me on despawning entity )§r\n - Coddy\n   §7( Scripts related )§r\n - Koala / Estrongel\n   §7( Learned alot scripts by fixing and maintaining Runecraft for stable. )§r\n - Alot of annoymous persons \n   §7( Giving a lesson on sound and music things, unfortunately they didn't make it here. )"}]}
execute as @s[scores={arx-animtimer=500}] at @s run playsound note.bass @s ~~~ 1 0.2
execute as @s[scores={arx-animtimer=500}] at @s run camera @s fade time 0 5 1
execute as @s[scores={arx-animtimer=600}] run titleraw @a actionbar {"rawtext":[{"text":"_arx:chud0;\n\n\n\n\n\nThat's it folks\n§eThanks for playing!§r\n\nSee you soon on project §eDesignant§r\n\n\n\n\n\n§7Elysium: Remake (v1.03)"}]}
execute as @s[scores={arx-animtimer=600}] at @s run playsound note.bass @s ~~~ 1 0.2
execute as @s[scores={arx-animtimer=600}] at @s run camera @s fade time 0 5 1
execute as @s[scores={arx-animtimer=700}] run titleraw @a actionbar {"rawtext":[{"text":"_arx:"}]}
execute as @s[scores={arx-animtimer=700}] at @s run camera @s fade time 0 5 1
execute as @s[scores={arx-animtimer=700}] at @s run playsound note.bass @s ~~~ 1 0.2

## deactivate
execute as @s[scores={arx-animtimer=800}] run scriptevent arxDialog0:player end
execute as @s[scores={arx-animtimer=800}] run gamemode 1
tag @s[scores={arx-animtimer=800}] remove arxanim-credit
execute as @s[scores={arx-animtimer=800}] run function anims/animunlock
