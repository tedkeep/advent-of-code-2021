fish = File.readlines('input.txt').map { |l| l.delete("\n").split(',').map(&:to_i) }.first.tally
days = 80

(1..days).each do
  new_fish = {}
  fish.each do |key, val|
    if key.zero?
      new_fish[6] = new_fish[6].to_i + val
      new_fish[8] = new_fish[8].to_i + val
    else
      new_fish[key-1] = new_fish[key-1].to_i + val
    end
  end
  fish = new_fish
end

puts fish.values.sum