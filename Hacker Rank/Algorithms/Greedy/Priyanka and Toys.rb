#https://www.hackerrank.com/challenges/priyanka-and-toys

number_of_toys = gets.split.map(&:to_i)
weight_of_toys = gets.split.map(&:to_i).sort.reverse

range = weight_of_toys.first-4..weight_of_toys.first
count = 1

weight_of_toys.each do |toy|
  next if range.include?(toy)
  range = toy-4..toy
  count +=1
end

puts count
