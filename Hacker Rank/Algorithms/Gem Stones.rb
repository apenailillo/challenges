#https://www.hackerrank.com/challenges/gem-stones
testcases = gets.chomp.to_i
tc = []
1.step(testcases,1){|i| tc << gets.chomp}
#the first rock have at least one gem-element, so this is our comparison base
basic_elements = tc.first.split("")
gem_elements = basic_elements & tc[1].split("")
tc[2..testcases-1].each do |t|
    gem_elements = gem_elements & t.split("")
end
p gem_elements.size
