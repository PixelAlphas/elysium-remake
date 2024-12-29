import { world, system } from "@minecraft/server";

world.beforeEvents.playerInteractWithEntity.subscribe(event => {
    const player = event.player;
    const entity = event.target;
    if (player.hasTag('arx-indialog')){
      player.sendMessage(`§cCannot interact until the dialog is over. Use 'Jump' to continue.`)
      return
    } else;
    if (entity.typeId == 'arx:rustic' ){
      event.cancel = true;
      system.run(() => {
        rusticInteraction(player, entity, player.getDynamicProperty("rusticInteraction"))
      })
    };
    if (entity.typeId == 'arx:lawnmower' ){
      event.cancel = true;
      system.run(() => {
        lawnmowerInteraction(player, entity, player.getDynamicProperty("lawnmowerInteraction"))
      })
    };
});

function lawnmowerInteraction(player, entity, interaction){
  let sticker = world.scoreboard.getObjective('arx-sticker').getScore(player);
  player.addTag('arx-indialog');
  if (sticker == 12 && interaction == 0){
    player.runCommand(`scriptevent arxDialog1:lawnmower 01`);
    return
  }
  switch (interaction){
    case 0: 
      player.runCommand(`scriptevent arxDialog1:lawnmower 00`);
      break;
    case 1: 
      player.runCommand(`scriptevent arxDialog1:lawnmower 02`);
      player.setDynamicProperty("lawnmowerInteraction", 2);
      break;
    case 2:
      player.setDynamicProperty("lawnmowerInteraction", 3);
      player.setDynamicProperty("rusticInteraction", 19);
      player.removeTag('arx-indialog');
      player.runCommand(`tag @s add arxanim-credit`);
      break;
    case 3: 
      player.setDynamicProperty("rusticInteraction", 19);
      player.runCommand(`scriptevent arxDialog1:lawnmower 03`);
      break;
  }
}

function rusticInteraction(player, entity, interaction){
  let sticker = world.scoreboard.getObjective('arx-sticker').getScore(player);
  player.addTag('arxobject-obj06');
  player.addTag('arx-indialog');
  if (sticker == 12){
    player.setDynamicProperty("rusticInteraction", interaction = 14);
    player.runCommand(`scoreboard players set @s arx-sticker 13`);
  }
  switch (interaction){
    case 0: player.runCommand(`scriptevent arxDialog1:rustic 00`); break;
    case 1: player.runCommand(`scriptevent arxDialog1:rustic 01`); break;
    case 2: player.runCommand(`scriptevent arxDialog1:rustic 02`); break;
    case 3: player.runCommand(`scriptevent arxDialog1:rustic 03`); break;
    case 4: player.runCommand(`scriptevent arxDialog1:rustic 04`); break;
    case 5: player.runCommand(`scriptevent arxDialog1:rustic 05`); break;
    case 6: player.runCommand(`scriptevent arxDialog1:rustic 06`); break;
    case 7: player.runCommand(`scriptevent arxDialog1:rustic 07`); break;
    case 8: player.runCommand(`scriptevent arxDialog1:rustic 08`); break;
    case 9: player.runCommand(`scriptevent arxDialog1:rustic 09`); break;
    case 10: player.runCommand(`scriptevent arxDialog1:rustic 10`); break;
    case 11: player.runCommand(`scriptevent arxDialog1:rustic 11`); break;
    case 12: player.runCommand(`scriptevent arxDialog1:rustic 12`); break;
    case 13: player.setDynamicProperty("rusticInteraction", interaction = 0); player.runCommand(`scriptevent arxDialog1:rustic 13`); break;
    case 14: player.runCommand(`scriptevent arxDialog1:rustic 14`); player.setDynamicProperty("lawnmowerInteraction", 1); break;
    case 15: player.runCommand(`scriptevent arxDialog1:rustic 15`); break;
    case 16: player.runCommand(`scriptevent arxDialog1:rustic 16`); break;
    case 17: player.runCommand(`scriptevent arxDialog1:rustic 17`); break;
    case 18: player.setDynamicProperty("rusticInteraction", interaction = 14); player.runCommand(`scriptevent arxDialog1:rustic 18`); break;
    case 19: player.runCommand(`scriptevent arxDialog1:rustic 19`); player.setDynamicProperty("rusticInteraction", 19); break;
  }
  if (interaction != 19){
    player.setDynamicProperty("rusticInteraction", interaction + 1);
  }
}