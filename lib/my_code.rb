# Your Code Here
def map(source_array)
  new = []
  counter = 0
  while counter < source_array.length do
    new.push(yield(source_array[counter]))
    counter +=1
  end
  return new
end


def reduce(source_array, starting_value=nil)
  if starting_value 
    total = starting_value
    counter = 0
  else 
    total = source_array[0]
    counter = 1
  end
  while counter < source_array.length do
    total = yield(total, source_array[counter])
    counter +=1
  end
  return total
end