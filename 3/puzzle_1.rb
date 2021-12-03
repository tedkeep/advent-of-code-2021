count = []
gamma_rate = ''
epsilon_rate = ''

(lines = File.readlines('input.txt').map { |l| l.chomp.split('')}).each do |line|
  line.each_with_index do |bit, index|
    bit = Integer(bit) 
    count[index] = [0, 0] if count[index].nil?
    count[index][bit] += 1
  end
end

count.each do |bits|
  answers = (bits[0] > bits[1] ? ['0', '1'] : ['1', '0'])
  gamma_rate += answers[0]
  epsilon_rate += answers[1]
end

puts gamma_rate.to_i(2) * epsilon_rate.to_i(2)