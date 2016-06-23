# https://www.hackerrank.com/challenges/pairs
def  pairs( a,k) 
    numbers = a.sort
    pairs = 0
    numbers.each_with_index do |number, i|
        diff = number + k
        numbers[i..-1].each do |match|
            if match == diff
                pairs += 1
                break
            elsif match > diff
                break
            end
        end
    end
    pairs
end
