#https://www.hackerrank.com/challenges/manasa-and-stones
def last_stones steps, a, b
    arr = []
    0.step(steps-1){|i|
        a_times = (steps-i-1)*a
        b_times = i * b
        arr << a_times + b_times
    }
    arr.uniq.sort.join(" ")
end

tc = gets.to_i
tc.times{
    step = gets.to_i
    a = gets.to_i
    b = gets.to_i
    puts last_stones step, a, b    
}
