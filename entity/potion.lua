local item = require("entity/item")

local potion = {}

function potion.new()
  local potion = item.new("potion", "regenerate", 50)
  potion.life = 50
  return potion
end

return potion