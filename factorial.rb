#Program to calculate the factorial of given number
#method to calculate factorial 
def factorial(n)
  if n <= 0
    1
  else
    n * factorial(n-1)
  end
end
print("Enter any Number to calculate factorial: ")

num = gets.chomp.to_i

puts("Factorial of #{num} = #{factorial(num)}")
