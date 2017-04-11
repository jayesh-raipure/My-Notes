# Write a program to convert romal numeral to integer.
def roman_to_int(roman_num)
  i, j, result = 0, 0, 0
  roman_to_int_map =  {"I"=>1, "V"=>5, "X"=>10, "L"=>50, "C"=>100, "D"=>500, "M"=>1000}
  
  roman_num.reverse.each_char do |num|
    i = roman_to_int_map[num]
    if(i<j) then
      result -= i
    else
      result += i
    end 
    j = i
  end 
  return result
end

print("Enter any Roman Number :")

puts("Interger Value of given Roman Number : #{roman_to_int(gets.chomp.upcase)}")
