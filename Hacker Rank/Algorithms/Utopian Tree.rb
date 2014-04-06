#https://www.hackerrank.com/challenges/utopian-tree
number_of_test_cases = gets.chomp.to_i
1.step(number_of_test_cases,1) do |i| {
  gets.chomp.to_i.each do |c|
    count = 0
    height = 1
    while count < c
      count % 2 == 0 ? height *= 2 : height += 1 
      count += 1
    end
    p height
  end
}
