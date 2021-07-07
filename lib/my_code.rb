require 'pry'
  def map(array)
  negatives = []
  i = 0
    while i < array.length
    negatives.push(yield (array[i]))
    i += 1
    end
    negatives
  end


  def reduce(source_array, starting_point=nil)

      if starting_point
        accumulator = starting_point
        i = 0
      else
        accumulator = source_array[0]
        i = 1
      end
      while i < source_array.count
accumulator =  yield(accumulator, source_array[i])
# binding.pry
        i += 1
      end
      return accumulator
    end
