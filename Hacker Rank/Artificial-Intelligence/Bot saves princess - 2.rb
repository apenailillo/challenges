#!/bin/ruby
def nextMove(n,r,c,grid)
  bot_position_x = r
  bot_position_y = c
  princess_position_x = princess_position_y = 0
  next_move = ""
  
  grid.each_with_index do |a,i|
    a.split("").each_with_index do |d,j|
      if d == "p"
        princess_position_x = i
        princess_position_y = j
        break
      end
    end  
  end
  
  distance_x = bot_position_x - princess_position_x
  distance_y = bot_position_y - princess_position_y
  
  if distance_y.zero?
    next_move = (distance_x < 0 ? "DOWN" : "UP")
  else
    next_move = (distance_y < 0 ? "RIGHT" : "LEFT")
  end
  
  puts next_move 
end

n = gets.to_i

r,c = gets.strip.split.map {|num| num.to_i}

grid = Array.new(n)

(0...n).each do |i|
    grid[i] = gets
end

nextMove(n,r,c,grid)
