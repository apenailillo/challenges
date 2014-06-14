https://www.hackerrank.com/challenges/angry-children
n = gets.to_i
k = gets.to_i
candy = Array.new(n)
for i in 0..n-1
      candy[i] = gets.to_i
end
def unfairness_number arr, k
    arr = arr.sort
    min = arr.last
    start = 0
    range = k-1
    finish = arr.size
    while(range<finish)
        diff = arr[range] - arr[start]
        min = diff if diff < min
        start += 1
        range += 1
    end
    return min
end
ans = unfairness_number candy, k
puts ans
