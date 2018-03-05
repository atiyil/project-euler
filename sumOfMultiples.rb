# If we list all the natural numbers below 10 that are multiples of 3 or 5, 
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
#Find the sum of all the multiples of 3 or 5 below 1000.

def sumOfMultiples(a,b,n)
  numA = (n-1)/a
  numB = (n-1)/b
  numAB = (n-1)/(a*b)
  
  sumA = sumB = sumAB = 0
  (1..numA).each {|x| sumA = sumA + x}
  (1..numB).each {|x| sumB = sumB + x}
  (1..numAB).each {|x| sumAB = sumAB + x}

  #arr = Array.new(numA) {|i| i+1}
  #arr.each {|x| sumA = sumA + x}
  print sumA, ',', sumB, ',', sumAB, ': '
  return sumA*a + sumB*b - sumAB*a*b
end 

puts sumOfMultiples(3,5,10)
puts sumOfMultiples(3,5,16)
puts sumOfMultiples(3,5,1000)