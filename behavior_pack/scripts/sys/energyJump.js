import { system, world } from "@minecraft/server";

var energyMax = 40; // 4 sec

system.runInterval(() => {
  for (const player of world.getPlayers()){
    energyJump(player)
  }
}, 1)

function energyJump(player){
  let direction = player.getViewDirection();
  const energy = player.getDynamicProperty("energy")
  const energyHud = player.getDynamicProperty("energyHud")
  if (player.hasTag('arx-energyjump')){
    if (player.isSneaking){
      if (energy < energyMax){
        player.setDynamicProperty("energy", energy + 1);
        player.setDynamicProperty("energyHud", energyHud + 1);
      }
      buildUI(player, energy, energyHud);
    } else {
      if (energy > 39){
        player.playSound("arx:jump", { pitch: 1.0, volume: 1.0 });
        player.applyKnockback(direction.x,direction.z,1,0.800);
      } else
      if (energy > 29){
        player.playSound("arx:jump", { pitch: 0.9, volume: 1.0 });
        player.applyKnockback(direction.x,direction.z,0.8,0.750);
      } else
      if (energy > 19){
        player.playSound("arx:jump", { pitch: 0.8, volume: 1.0 });
        player.applyKnockback(direction.x,direction.z,0.7,0.700);
      }
      hideUI(player, energy);
      return
    }
  }
}

function buildUI(player, point, hud){
  let energyHudStats = hud;
  player.onScreenDisplay.setTitle(`_arx:ehud.e${energyHudStats}`)
}

function hideUI(player, point){
  player.setDynamicProperty("energy", 0);
  player.setDynamicProperty("energyHud", 100);
  if (point != 0){
    player.onScreenDisplay.setTitle(`_arx:`)
  }
}