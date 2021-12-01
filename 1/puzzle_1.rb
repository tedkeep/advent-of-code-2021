count = 0
prev_line = 0

File.open(ARGV[0], "r") do |f|
  f.each_line do |line|
    int_line = Integer(line)

    count += 1 if (int_line > prev_line && prev_line > 0)
    
    prev_line = int_line
  end
end

puts count