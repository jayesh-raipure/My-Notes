#Write a program to print fibanocci series of till n numbers.
def fibonacci(n)
  if(n == 0) 
    0
  elsif (n == 1)
    1
  else
   (fibonacci(n-1) + fibonacci(n-2))
  end
end

print("Enter Number: ")

n = gets.to_i

i = 0

array_series = [] #Array to store series number

(1..n).each do
  array_series << fibonacci(i)
  i += 1
end

array_series.each do |i|
  p i #Print the series
end



