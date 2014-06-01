#https://www.hackerrank.com/challenges/service-lane

arr = gets.chomp.split().map(&:to_i)
width = gets.chomp.split().map(&:to_i)
#testcases
tc = []
1.step(arr[1],1){|i| tc << gets.chomp.split().map(&:to_i)}

tc.each do |t|
    p width[t[0]..t[1]].min
end
