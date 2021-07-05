def map (source_array)
  newmap = []
  i = 0
  while i < source_array.length do
    newmap.push(yield(source_array[i]))
    i += 1
  end
 return newmap 
end

def reduce (source_array, starting_value = nil)
  if starting_value
    newreduce = starting_value
    i = 0
  else
    newreduce = source_array[0]
    i = 1
  end
  while i < source_array.length do
    newreduce = yield(newreduce, source_array[i])
    i += 1
  end
  return newreduce
end

