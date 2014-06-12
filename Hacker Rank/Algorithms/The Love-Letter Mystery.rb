#https://www.hackerrank.com/challenges/the-love-letter-mystery
tc = gets.to_i
tc.times{
    arr = gets.chomp.each_char.map(&:ord)
    count = 0
    start,finish = 0, arr.size-1
    while start < finish
        count += (arr[start]-arr[finish]).abs
        start += 1
        finish -= 1
    end
    p count
}
