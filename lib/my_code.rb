def map(array)
  new = []
  i = 0 
  while i < array.length do 
    new.push (yield(array[i]))
    i += 1 
  end
  return new
end


def reduce(array,source=nil)
  if source
    sum = source
    i = 0
  else
    sum = array[0]
    i = 2
  end

  while i < array.length
    sum = yield(sum, array[i])
    i += 1
  end
  sum
end