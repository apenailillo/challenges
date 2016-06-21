#https://www.hackerrank.com/challenges/largest-permutation/

config = gets.split
length = config.first.to_i
swap = config.last.to_i
numbers = gets.strip.split.map(&:to_i)
index = []
numbers.each_with_index{ |n, i| index[n] = i }
i = 0
swapped = 0
while swapped < swap && i < length
  if numbers[i] != length - i
    numbers[index[length - i]] = numbers[i]
    index[numbers[i]] = index[length - i]
    numbers[i] = length - i
    index[length - i] = i
    swapped += 1
  end
  i += 1
end

puts numbers.join(' ')
