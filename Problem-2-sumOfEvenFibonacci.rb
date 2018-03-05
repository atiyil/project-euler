# Problem-2: By considering the terms in the Fibonacci sequence whose values do not exceed four million, 
# find the sum of the even-valued terms.

def sumOfEvenFibonacci(n)
	# sum of f(2),f(5),f(8),f(11),f(14),etc is needed. f(5) is 8, f(6) is 13, f(7) is 21
	sum = 10
	fn2 = 8
	fn1 = 13
	fn = 21
	i = 8
	while (fn < n)
		if i % 3 == 0 then sum = sum + fn end
		fn2 = fn1
		fn1 = fn
		fn = fn1 + fn2
		i += 1
	end
	return sum
end

puts sumOfEvenFibonacci(4000000)