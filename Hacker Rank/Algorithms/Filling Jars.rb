#https://www.hackerrank.com/challenges/filling-jars
jars, tc = gets.chomp.split(" ").map(&:to_i)
sum = 0
tc.times{
    a, b, k = gets.chomp.split(" ").map(&:to_i)
    sum += (b-a+1) * k
    }
puts (sum/jars).truncate
