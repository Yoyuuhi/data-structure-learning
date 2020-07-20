# https://leetcode.com/explore/learn/card/queue-stack/230/usage-stack/1363/

# @param {Integer[]} t
# @return {Integer[]}
def daily_temperatures(t)
  array = []
  results = []
  t.each_with_index do |element, index|
      results[index] = 0
      is_higher(element, index, array, results)
  end
  return results
end
  
def is_higher(element, index, array, results)
  if array[-1].nil?
      array.push([element, index])
  elsif element > array[-1][0]
      results[array[-1][1]] = index - array[-1][1]
      array.pop
      is_higher(element, index, array, results)
  else
      array.push([element, index])
  end
end