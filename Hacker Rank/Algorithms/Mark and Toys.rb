https://www.hackerrank.com/challenges/mark-and-toys
n, money = gets.split(/\s/).map(&:to_i)
prices = gets.split(/\s/).map(&:to_i).sort

def maximun_toys prices, money
    prices = prices.sort.reject{|p| p > money}
    count = 0
    sum = 0
    prices.each do |p| 
        if sum+p <= money 
            sum += p
            count += 1
        end
    end
    return count
end

puts maximun_toys prices, money
