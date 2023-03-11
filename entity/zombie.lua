local enemy = require("entity/enemy")
local player = require("entity/player")

local zombie = {}

function zombie.new()
  local zombie = enemy.new(50, "zombies")
  zombie.eat_brains = true
  zombie.explodes = false
  return zombie
end

function zombie.new_bomber()
  local zombie = zombie.new()
  zombie.eat_brains = false
  zombie.explodes = true
  return zombie
end

function zombie.attack(zombie_instance, player_instance)
  if zombie_instance == nil then
    print("this zombie is dead")
  elseif zombie_instance.explodes == true then
    print("zombie exploded " .. player_instance.name)
    player.die(player_instance)
    return nil
  else
    print("zombie attacked " .. player_instance.name)
    player.attacked(player_instance, zombie_instance.strength)
    return zombie_instance
  end
end

return zombie