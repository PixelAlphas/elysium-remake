import { system, world } from "@minecraft/server";
import * as dialogueList from "./dialogueList.js";

let activeTypeWriter = new Map();

system.afterEvents.scriptEventReceive.subscribe((event) => {
  let player = event.sourceEntity;
  let id = event.id;
  let message = event.message;
  player.setDynamicProperty("stringIndex", 0);
  player.setDynamicProperty("stringArrayIndex", 0);
  player.setDynamicProperty("stringBake", "");
  player.setDynamicProperty("stringFinal", "£££");
  player.setDynamicProperty("dialogLine", 0);
  player.setDynamicProperty("dialogLineShift", 0);
  player.setDynamicProperty("dialogPaused", false);
  if (activeTypeWriter.has(player)){
    system.clearRun(activeTypeWriter.get(player));
    activeTypeWriter.delete(player);
  }
  if (id.includes("arxDialog0:")){
    dialogStatic(message, player, id);
  }
  if (id.includes("arxDialog1:")){
    dialog(message, player, id);
  }
  if (id.includes("arxResetProperty:")){
    player.setDynamicProperty("rusticInteraction", 0);
    player.setDynamicProperty("lawnmowerInteraction", 0);
  }
})

function dialog(message, player, id){
  const stringIndex = player.getDynamicProperty("stringIndex");
  const stringArrayIndex = player.getDynamicProperty("stringArrayIndex");
  const stringBake = player.getDynamicProperty("stringBake");
  const stringFinal = player.getDynamicProperty("stringFinal");
  const dialogLine = player.getDynamicProperty("dialogLine");
  const dialogLineShift = player.getDynamicProperty("dialogLineShift");
  const dialogPaused = player.getDynamicProperty("dialogPaused");
  const intervalId = system.runTimeout(function(){dialog(message, player, id)}, 1);
  activeTypeWriter.set(player, intervalId);
  let [title, text, limit] = dialogueCheck(message, stringArrayIndex, id)
  const playerFilteredString = text.replace('$', `${player.nameTag}`);
  player.runCommand(`inputpermission set @s movement disabled`);
  player.runCommand(`inputpermission set @s camera disabled`);
  if (!dialogPaused){
    if (stringIndex < playerFilteredString.length){
      if (playerFilteredString.charAt(stringIndex) === '°'){
        player.setDynamicProperty("dialogPaused", true); 
      }
      if (playerFilteredString.charAt(stringIndex) === '£'){
        player.setDynamicProperty("dialogLine", dialogLine + 1); 
        if (dialogLine > 1){
          player.setDynamicProperty("dialogLineShift", dialogLineShift + 1); 
        }
      }
      if (stringIndex < playerFilteredString.length) {
        if (!/([\-\$#£° ])+/g.test(playerFilteredString.charAt(stringIndex))){
          if (title == ';r;' || title == ';u;'){
            player.playSound("arx:text_rustic", { pitch: 1.0, volume: 1.0 });
          } else player.playSound("arx:text_regular", { pitch: 1.0, volume: 1.0 });
        }
      }
      player.setDynamicProperty("stringBake", stringBake + textAuth(playerFilteredString, stringIndex)); player.setDynamicProperty("stringIndex", stringIndex + 1);
      if (textAuth(playerFilteredString, stringIndex) == '§'){
        player.setDynamicProperty("stringBake", stringBake + textAuth(playerFilteredString, stringIndex) + textAuth(playerFilteredString, stringIndex + 1)); player.setDynamicProperty("stringIndex", stringIndex + 2);
      }
      player.setDynamicProperty("stringFinal", stringBake + '£££');
      player.onScreenDisplay.setActionBar(`_arx:dhud0;${title}§f${stringFinal.split('£')[dialogLineShift]}${stringFinal.split('£')[dialogLineShift + 1]}${stringFinal.split('£')[dialogLineShift + 2]}`)
    } else {
      if (stringArrayIndex != limit - 1){
        player.setDynamicProperty("stringIndex", 0);
        player.setDynamicProperty("dialogLine", 0);
        player.setDynamicProperty("dialogLineShift", 0);
        player.setDynamicProperty("stringArrayIndex", stringArrayIndex + 1);
        player.setDynamicProperty("stringBake", "");
        player.setDynamicProperty("stringFinal", '£££');
      } 
      else {
        player.onScreenDisplay.setActionBar(`_arx:`)
        player.removeTag('arx-indialog')
        player.runCommand(`inputpermission set @s movement enabled`);
        player.runCommand(`inputpermission set @s camera enabled`);
        system.clearRun(activeTypeWriter.get(player));
        activeTypeWriter.delete(player);
        return
      }
    }
  }
  if (dialogPaused){
    player.onScreenDisplay.setActionBar(`_arx:dhud0;${title};paused;§f${stringFinal.split('£')[dialogLineShift]}${stringFinal.split('£')[dialogLineShift + 1]}${stringFinal.split('£')[dialogLineShift + 2]}`)
  }
  if (player.inputInfo.getButtonState('Jump') === 'Pressed' && dialogPaused){ player.setDynamicProperty("dialogPaused", false); }
}
function dialogStatic(message, player, id){
  const stringIndex = player.getDynamicProperty("stringIndex");
  const stringArrayIndex = player.getDynamicProperty("stringArrayIndex");
  const stringBake = player.getDynamicProperty("stringBake");
  const stringFinal = player.getDynamicProperty("stringFinal");
  const dialogLine = player.getDynamicProperty("dialogLine");
  const dialogLineShift = player.getDynamicProperty("dialogLineShift");
  const intervalId = system.runTimeout(function(){dialogStatic(message, player, id)}, 1);
  activeTypeWriter.set(player, intervalId);
  let [title, text, limit] = dialogueCheck(message, stringArrayIndex, id)
  const playerFilteredString = text.replace('$', `${player.nameTag}`);
  if (stringIndex < playerFilteredString.length + 40){
    if (playerFilteredString.charAt(stringIndex) === '£'){
      player.setDynamicProperty("dialogLine", dialogLine + 1); 
      if (dialogLine > 1){
        player.setDynamicProperty("dialogLineShift", dialogLineShift + 1); 
      }
    }
    if (stringIndex < playerFilteredString.length) {
      if (!/([\-\$#£° ])+/g.test(playerFilteredString.charAt(stringIndex))){
        if (title == ';r;' || title == ';u;'){
          player.playSound("arx:text_rustic", { pitch: 1.0, volume: 1.0 });
        } else player.playSound("arx:text_regular", { pitch: 1.0, volume: 1.0 });
      }
    }
    player.setDynamicProperty("stringBake", stringBake + textAuth(playerFilteredString, stringIndex)); player.setDynamicProperty("stringIndex", stringIndex + 1);
    if (textAuth(playerFilteredString, stringIndex) == '§'){
      player.setDynamicProperty("stringBake", stringBake + textAuth(playerFilteredString, stringIndex) + textAuth(playerFilteredString, stringIndex + 1)); player.setDynamicProperty("stringIndex", stringIndex + 2);
    }
    player.setDynamicProperty("stringFinal", stringBake + '£££');
    player.onScreenDisplay.setActionBar(`_arx:dhud0;${title}§f${stringFinal.split('£')[dialogLineShift]}${stringFinal.split('£')[dialogLineShift + 1]}${stringFinal.split('£')[dialogLineShift + 2]}`)
  } else {
    if (stringArrayIndex != limit - 1){
      player.setDynamicProperty("stringIndex", 0);
      player.setDynamicProperty("dialogLine", 0);
      player.setDynamicProperty("dialogLineShift", 0);
      player.setDynamicProperty("stringArrayIndex", stringArrayIndex + 1);
      player.setDynamicProperty("stringBake", "");
      player.setDynamicProperty("stringFinal", '£££');
    } 
    else {
      player.onScreenDisplay.setActionBar(`_arx:`)
      system.clearRun(activeTypeWriter.get(player));
      activeTypeWriter.delete(player);
      return
    }
  }
}
function textAuth(label, index){
  return label.charAt(index)
    .replace("°", '')
    .replace("#", '')
    .replace("£", '\n£');
}
function dialogueCheck(string, index, id) {
  let dialogueType = dialogueList.placeholder
  switch(id.slice(11)){
    case 'demo1': dialogueType = dialogueList.demo1; break;
    case 'player': dialogueType = dialogueList.player; break;
    case 'rustic': dialogueType = dialogueList.rustic; break;
    case 'obj': dialogueType = dialogueList.obj; break;
    case 'lawnmower': dialogueType = dialogueList.lawnmower; break;
    case 'commentary': dialogueType = dialogueList.commentary; break;
  }
  if(!Object.keys(dialogueType).length) {return "nope"}
  for (let i = 0; i < dialogueType.length + 1; i++){
    for (let dialogProp in dialogueType[i]){
      if (string.toLowerCase().trim() == (dialogProp.toLowerCase())) {
        return [
          dialogueType[i][dialogProp][index]["title"],
          dialogueType[i][dialogProp][index]["text"],
          dialogueType[i][dialogProp].length,
        ];
        break;
      } else break;
    }
  }
}