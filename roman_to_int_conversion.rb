# Write a program to convert romal numeral to integer.
def roman_to_int(roman_num)
  least_num, most_num, result = 0, 0, 0
  roman_to_int_map =  {"I"=>1, "V"=>5, "X"=>10, "L"=>50, "C"=>100, "D"=>500, "M"=>1000}
  
  roman_num.reverse.each_char do |num|
    least_num = roman_to_int_map[num]
    (least_num<most_num) ? result -= least_num : result += least_num
    most_num = least_num
  end 
  "Interger Value of given Roman Number :#{result}"
end

print("Enter any Roman Number :")
input_roman_num = gets.chomp.upcase
if(/^M{0,4}(CM|CD|D?C{0,3})(XC|XL|L?X{0,3})(IX|IV|V?I{0,3})$/ =~ input_roman_num) 
  
  puts("#{roman_to_int(input_roman_num)}")
else
  puts("Invalid Number Enterd.")
end
