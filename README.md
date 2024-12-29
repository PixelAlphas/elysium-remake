# elysium-remake
"Awakening in the wrong place. in the void of each dimensions structures. The only hope, is to get out of this darkness."

**Elysium: Remake** ( Demo ) is essentially a remake version of the 8k Bedrock Add-on's jam that i submitted as the original version are unfinished, rushed and so on. doesn't have story as it intended to be. This also can be replayable too. The project is **MIT Licensed**.

This remake includes a medium sized map, parkours and new mechanic, aswell cutscenes, sound effects, multiplayer support and so on. A Full fresh original map, even assets sometimes. This was made within 13 days ( obviously I'm too busy at other things... ) and once again, on a phone.

**For technical side**
This includes several things that I want to push it out for the public, but here's what this project includes.
- **Dialogue/Textbox system** — with close replica of Cave Story. No message skip but have certain symbols for controlling the speed and pause the dialog. *(Pausing dialog will require you to press space button order to continue.)* + JSON-UI are also required to make this looks decent.
- **Proper Mob Outline** — Made for NPCs only, includes a prefect outline with entity material.
- **Simple Keyframe based-command** — A function (.mcfunction) based system that runs command for specific player. it's simple, but using `@a` is strictly prohibited since it'll break it. the function command must be run through by player only, which you can use `/execute as @s at @s run function`.
- **Custom notification toast** — A chat based toast (like the rest of servers) are simplified for customization needs. the visual might look oddly familiar to my upcoming project, but this one is fully rewritten from the ground up.
- **Energy Jump / Parkour Jump** — Holding shift for period will allows you to jump little higher. (⚠️ - This also uses JSON-UI for visual, but if you output the string wrongly, the game WILL crash. there's failsafe for it though, doesn't mean it'll be safe.)
- **Animation stuff** — In pair with "Simple keyframe", it comes with hidden item that once held on the off-hand, the player's or mob's animation will stop. which you can use a custom animations flawlessly without intervene.
