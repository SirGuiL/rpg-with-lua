local player = {}

function player.new(name)
  return {
    life = 200,
    potions = {},
    name = name
  }
end

function player.get_potion(player_instance, potion)
  table.insert(player_instance.potions, potion)
end

function player.attacked(player_instance, strength)
  if player.is_alive(player_instance) then
    player_instance.life = player_instance.life - strength

    if not player.is_alive(player_instance) then
      print(player_instance.name .. " died")
    else 
      print(player_instance.name .. " has " .. player_instance.life .. " health")
    end
  else
    print(player_instance.name .. "is already dead")
  end
end

function player.die(player_instance)
  if player.is_alive(player_instance) then
    player_instance.life = 0
    print(player_instance.name .. " died")
  else
    print(player_instance.name .. "is already dead")
  end
end

function player.use_potion(player_instance)
  if #player_instance.potions > 0 then
    player_instance.life = player_instance.life + player_instance.potions[1].life
    table.remove(player_instance.potions, 1)
    print(player_instance.name .. " used a potion")
    print(player_instance.name .. " now it has " .. player_instance.life .. " life!")
  else
    print(player_instance.name .. " don't have potions")
  end
end

function player.is_alive(player_instance)
  return player_instance.life > 0
end

return player