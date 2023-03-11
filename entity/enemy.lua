local enemy = {}

function enemy.new( _strength, _category )
  return {
    strength = _strength,
    category = _category
  }
end

return enemy