count = 0

(lines = File.readlines(ARGV[0])).each_with_index do |line, index|
  count += 1 if index != 0 && Integer(line) > Integer(lines[index-1])
end

puts count