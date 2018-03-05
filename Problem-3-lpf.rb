require 'prime'

def lpf(n)
  pf = []
  i = 2
  y = Math.sqrt(n).floor
  m = n
  while (i <= y)
    while m % i == 0  
      if Prime.prime?(i) then pf.push(i); m = m/i end
    end
    if Prime.prime?(m) then pf.push(m) end 
    i = i+1
  end
  if pf.length == 0 then pf.push(n) end
  return pf.max
end