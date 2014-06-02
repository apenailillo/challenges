#https://www.hackerrank.com/challenges/chocolate-feast
t = gets.to_i
t.times{
    (n, c, m) = gets.split.map{|i| i.to_i}
    chocolates = wrappers = n/c

    while wrappers >= m do
        chocolates += wrappers/m;
        wrappers = (wrappers/m) + (wrappers%m);
    end
    puts chocolates
}
