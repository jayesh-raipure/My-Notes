# Write a program which gives minimum no. of milk bottles required for a given input
BOTTLE_SIZES = [1,5,7,10]

def find_bottle_combinations(total_volume,expected_bottles)
  results = Hash.new(0)

  permutation_results = BOTTLE_SIZES.repeated_combination(expected_bottles).to_a
  
  permutation_results.each do |permutation_array|
    if(permutation_array.inject(:+) == total_volume) 
      permutation_array.each do |size|
        results[size] += 1
      end
      puts "=========:: Results ::==========="
      results.each { |size, count| puts "#{count} bottle(s) of size #{size}" }
      return results.values.inject(:+)
    end
  end
  
  expected_bottles += 1
  find_bottle_combinations(total_volume,expected_bottles)
end

print "Enter quantity of milk: "
total_volume = gets.chomp.to_f
expected_bottles = (total_volume/10).ceil
total_bottles_needed = find_bottle_combinations(total_volume,expected_bottles)

puts "It would take #{total_bottles_needed} Bottle(s)."