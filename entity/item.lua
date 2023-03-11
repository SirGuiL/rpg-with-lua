local item = {}

function item.new( _type, _func, _cost )
  return {
    type = _type,
    func = _func,
    cost = _cost
  }
end

return item