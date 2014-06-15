#https://www.hackerrank.com/challenges/is-fibo
tc = gets.to_i
tc.times{
    n = gets.to_i
    pre_number = 5*n**2
    a, b = Math.sqrt(pre_number+4), Math.sqrt(pre_number-4)
    puts ((a % 1 == 0 || b % 1 == 0) ? "IsFibo" : "IsNotFibo")
}
