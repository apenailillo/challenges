#https://www.hackerrank.com/challenges/halloween-party
tc = gets.chomp.to_i
1.step(tc,1) do |i|
    t = gets.chomp.to_i/2.to_f
    p t.ceil * t.truncate
end
