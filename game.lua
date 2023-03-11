local player = require("entity/player")
local potion = require("entity/potion")
local zombie = require("entity/zombie")

local player1 = player.new("Ronaldo")
local player2 = player.new("Matilda")

local zombie1 = zombie.new()
local zombie2 = zombie.new()
local zombie3 = zombie.new_bomber()

-- inventory
player.get_potion(player1, potion.new())
player.get_potion(player2, potion.new())
assert(#player1.potions == 1)
assert(#player2.potions == 1)

-- zombies
zombie.attack(zombie1, player1)
zombie.attack(zombie1, player1)
player.use_potion(player1)
zombie.attack(zombie1, player1)
zombie.attack(zombie1, player1)

zombie3 = zombie.attack(zombie3, player2)
zombie3 = zombie.attack(zombie3, player2)