require 'csv'
specs = []

# puts "Which file would you like to run?"
# file = gets.chomp

# if file
  CSV.foreach('input.txt') do |row|
    specs << row
  end
# else
#   puts "file doesn't exist"
# end

specs.map! do |element|
  element[0].split('')
end

room = specs[0].map! { |coordinate| coordinate.to_i }
hoover = specs[1].map! { |coordinate| coordinate.to_i }
dirt = specs[(2..-2)].each do |array|
  array.map! { |coordinate| coordinate.to_i }
end
directions = specs[-1].map! { |direction| direction.capitalize }
clean_counter = 0


def move(directions, hoover)
  directions.each do |direction|
    case direction
    when "N" then hoover[1] += 1
    when "S" then hoover[1] -= 1
    when "E" then hoover[0] += 1
    when "W" then hoover[0] -= 1
    end
  end
end

move(directions, hoover)
puts "The hoover has finished and is now at position x:#{hoover[0]} y:#{hoover[1]}"
