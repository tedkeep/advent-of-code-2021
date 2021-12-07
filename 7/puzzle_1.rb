best_fuel_usage = nil

(crabs = File.readlines('input.txt').map { |l| l.delete("\n").split(',').map(&:to_i) }.first.sort).each do |move_to|
  total_fuel_usage = 0
  crabs.each do |crab|
    total_fuel_usage += (crab - move_to).abs
  end

  if best_fuel_usage.nil? || total_fuel_usage < best_fuel_usage
    best_fuel_usage = total_fuel_usage
  end
end

puts best_fuel_usage
