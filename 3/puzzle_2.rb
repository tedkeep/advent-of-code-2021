lines = File.readlines('input.txt').map { |l| l.chomp.split('')}

@oxygen_ratings = lines
@co2_ratings = lines

(0..lines.first.length).each do |index|
  done = 0
  
  [:@oxygen_ratings, :@co2_ratings].each do |rating|
    if instance_variable_get(rating).length > 1
      zeroes, ones = instance_variable_get(rating).partition { |r| Integer(r[index]).even? }

      if rating == :@oxygen_ratings
        instance_variable_set(rating, (zeroes.length > ones.length ? zeroes : ones))
      else
        instance_variable_set(rating, (zeroes.length <= ones.length ? zeroes : ones))
      end
    else
      done += 1 
    end
  end

  break if done == 2
end

puts @oxygen_ratings.join.to_i(2) * @co2_ratings.join.to_i(2)