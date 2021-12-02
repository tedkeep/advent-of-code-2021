depth = 0
horizontal = 0

(lines = File.readlines("input.txt").map { |l| l.split(' ')}).each do |line|
  movement = Integer(line[1])

  case line[0]
  when "forward"
    horizontal += movement
  when "up"
    depth -= movement
  when "down"
    depth += movement
  end
end

puts depth * horizontal