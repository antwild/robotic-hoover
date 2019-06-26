require 'csv'
specs = []

puts "Which file would you like to run?"
file = gets.chomp

CSV.foreach(file) do |row|
  specs << row
end

specs.map! do |element|
  element[0].split('')
end

room = specs[0].map! { |coordinate| coordinate.to_i }
hoover = specs[1].map! { |coordinate| coordinate.to_i }
dirt = specs[(2..-2)].each do |array|
  array.map! { |coordinate| coordinate.to_i }
end
directions = specs[-1].map! { |direction| direction.capitalize }
dirt_left = dirt.length
clean_counter = 0

directions.each do |direction|
  case direction
  when "N" then hoover[1] += 1
  when "S" then hoover[1] -= 1
  when "E" then hoover[0] += 1
  when "W" then hoover[0] -= 1
  end
  hoover[0] = hoover[0].clamp(0, room[0])
  hoover[1] = hoover[1].clamp(0, room[1])
  dirt.each do |spot|
    if hoover == spot
      clean_counter += 1
      dirt_left -= 1
      dirt.delete(hoover)
    end
  end
end


puts "The hoover has finished and is now at position x:#{hoover[0]} y:#{hoover[1]}"
puts "and cleaned in #{clean_counter} spots"
if dirt_left < 1
  puts "The room is clean! Great!"
else
  puts "The room still isn't clean. There are #{dirt_left} piles of dirt left..."
end

