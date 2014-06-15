ver, tc = gets.split.map(&:to_i)
node = Array.new(ver){ 0 }
count = Array.new(ver){ 1 }
tc.times{
    ui, vi = gets.split.map(&:to_i)
    node[ui-1] = vi
    count[vi-1] += count[ui-1]
    root = node[vi-1]
    while root != 0 do
        count[root-1] += count[ui-1]
        root = node[root-1]
    end    
    
}
removed_edges = 0
count[1..-1].each{|c| removed_edges += 1 if c % 2 == 0 }
puts removed_edges
