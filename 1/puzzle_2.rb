window_size = 3 
windows = []
last_window = 0
count = 0

File.open(ARGV[0], "r") do |f|
  f.each_line do |line|
    int_line = Integer(line)

    (0..window_size-1).each do |window|
      if windows[window].nil?
        windows[window] = [int_line]
        break
      else 
        windows[window] << int_line

        if windows[window].length == window_size
          count += 1 if last_window != 0 && windows[window].inject(:+) > last_window
          last_window = windows[window].inject(:+)
          windows[window] = [int_line]
        end
      end
    end
  end
end

puts count