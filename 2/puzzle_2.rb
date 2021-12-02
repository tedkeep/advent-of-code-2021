depth = 0
horizontal = 0
aim = 0

(lines = File.readlines("input.txt").map { |l| l.split(' ')}).each do |line|
  movement = Integer(line[1])

  case line[0]
  when "forward"
    horizontal += movement
    depth += aim * movement
  when "up"
    aim -= movement
  when "down"
    aim += movement
  end
end

puts depth * horizontal